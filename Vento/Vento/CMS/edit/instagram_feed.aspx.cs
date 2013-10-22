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
    public partial class instagram_feed : System.Web.UI.Page
    {
        string instagram_id = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            LoginCheck();
            if (!Page.IsPostBack)
            {
                try
                {
                    instagram_id = Session["Insta_ID"].ToString();
                    string sConection11 = WebConfigurationManager.ConnectionStrings["ApplicationServices"].ConnectionString;
                    using (SqlConnection sqlCon11 = new SqlConnection(sConection11))
                    {
                        SqlCommand sqlCom11 = new SqlCommand("SELECT captiontext, filter, dato_id, like_count, link, location, lowres, normal, thumbnail, data_type, dia_id, visible from InstagramFeeds where id = '" + instagram_id + "'", sqlCon11);
                        sqlCon11.Open();
                        SqlDataReader reader11 = sqlCom11.ExecuteReader();
                        while (reader11.Read())
                        {
                            txtCaption.Text = reader11[0].ToString();
                            txtFilter.Text = reader11[1].ToString();
                            txtDatoId.Text = reader11[2].ToString();
                            txtLikeCount.Text = reader11[3].ToString();
                            txtLink.Text = reader11[4].ToString();
                            txtLocation.Text = reader11[5].ToString();
                            ImgLowres.ImageUrl = reader11[6].ToString();
                            ImgNormal.ImageUrl = reader11[7].ToString();
                            ImgThumb.ImageUrl = reader11[8].ToString();
                            txtDataType.Text = reader11[9].ToString();
                            txtDiaId.Text = reader11[10].ToString();
                            if (reader11[11].ToString() == "1")
                            {
                                chbActive.Checked = true;
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
            if (Convert.ToString(Session["Authenticated"]) != "True" || Convert.ToString(Session["Insta_ID"]) == "")
            {
                Response.Redirect("../login.aspx", false);
            }
        }
        protected void btnLogout_Click(object sender, EventArgs e)
        {
            instagram_id = Session["Insta_ID"].ToString();
            Session["Authenticated"] = "";
            Session["uname"] = "";
            instagram_id = "";
            LoginCheck();
        }
        protected void btnGuardar_Click(object sender, EventArgs e)
        {
            instagram_id = Session["Insta_ID"].ToString();
            if (instagram_id != "")
            {
                int visible = 0;
                if (chbActive.Checked == true)
                {
                    visible = 1;
                }
                string sConectionsku16 = WebConfigurationManager.ConnectionStrings["ApplicationServices"].ConnectionString;
                using (SqlConnection sqlConsku16 = new SqlConnection(sConectionsku16))
                {
                    SqlCommand sqlComsku16 = new SqlCommand("UPDATE InstagramFeeds SET captiontext = '" + txtCaption.Text + "', filter = '" + txtFilter.Text + "', dato_id = '" + txtDatoId.Text + "', visible = " + visible + ", like_count = '" + txtLikeCount.Text + "', link = '" + txtLink.Text + "', location = '" + txtLocation.Text + "', data_type = '" + txtDataType.Text + "', dia_id = '" + txtDiaId.Text + "' WHERE [id] = '" + instagram_id + "'", sqlConsku16);
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