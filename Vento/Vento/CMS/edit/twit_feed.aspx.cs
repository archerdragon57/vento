using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Vento.CMS.edit
{
    public partial class twit_feed : System.Web.UI.Page
    {
        string twit_id = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            LoginCheck();
            if (!Page.IsPostBack)
            {
                try
                {
                    twit_id = Session["Twit_ID"].ToString();
                    string sConection11 = WebConfigurationManager.ConnectionStrings["ApplicationServices"].ConnectionString;
                    using (SqlConnection sqlCon11 = new SqlConnection(sConection11))
                    {
                        SqlCommand sqlCom11 = new SqlCommand("SELECT content,id_user,name_user,screen_name,user_location,profilebackgroundimageurl,visible from twitter_feeds where id = '" + twit_id + "'", sqlCon11);
                        sqlCon11.Open();
                        SqlDataReader reader11 = sqlCom11.ExecuteReader();
                        while (reader11.Read())
                        { 
                            txtTwit.Text=reader11[0].ToString();
                            txtIdUsuario.Text = reader11[1].ToString();
                            txtUserName.Text = reader11[2].ToString();
                            txtScreenName.Text = reader11[3].ToString();
                            txtUserLocation.Text = reader11[4].ToString();
                            Image1.ImageUrl = reader11[5].ToString();
                            if (Convert.ToInt16(reader11[6].ToString()) == 1)
                            {
                                checkbox_f.Checked = true;
                            }
                            else
                            {
                                checkbox_f.Checked = false;
                            }
                        }
                        sqlCon11.Close();
                    }
                }
                catch (Exception)
                {
                    //Response.Redirect("../login.aspx", false);
                }
            }
        }
        public void LoginCheck()
        {
            if (Convert.ToString(Session["Authenticated"]) != "True" || Convert.ToString(Session["Twit_ID"]) == "")
            {
                Response.Redirect("../login.aspx", false);
            }
        }
        protected void btnLogout_Click(object sender, EventArgs e)
        {
            twit_id = Session["Twit_ID"].ToString();
            Session["Authenticated"] = "";
            Session["uname"] = "";
            twit_id = "";
            LoginCheck();
        }
        protected void btnNext1_Click(object sender, EventArgs e)
        {
            twit_id = Session["Twit_ID"].ToString();
            if(twit_id != "")
            {
                string sConectionsku16 = WebConfigurationManager.ConnectionStrings["ApplicationServices"].ConnectionString;
                using (SqlConnection sqlConsku16 = new SqlConnection(sConectionsku16))
                {
                    int visible = 0;
                    if (checkbox_f.Checked == true)
                    {
                        visible = 1;
                    }
                    SqlCommand sqlComsku16 = new SqlCommand("UPDATE twitter_feeds SET visible=" + visible + " WHERE [id] = '" + twit_id + "'", sqlConsku16);
                    sqlConsku16.Open();
                    sqlComsku16.ExecuteNonQuery();
                    sqlConsku16.Close();
                }
            }
            else
            {
                Response.Redirect("../login.aspx", false);
            }
            lblMessage.Text = "Cambios guardados.";
        }
    }
}