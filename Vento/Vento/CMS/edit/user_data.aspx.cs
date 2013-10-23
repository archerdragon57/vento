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
    public partial class user_data : System.Web.UI.Page
    {
        string user_id = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            LoginCheck();
            if (!Page.IsPostBack)
            {
                try
                {
                    user_id = Session["user_id"].ToString();
                    string sConection11 = WebConfigurationManager.ConnectionStrings["ApplicationServices"].ConnectionString;
                    using (SqlConnection sqlCon11 = new SqlConnection(sConection11))
                    {
                        SqlCommand sqlCom11 = new SqlCommand("SELECT nombre,twitter_id,instagram_id,auto_id,picture,likes,edad,ocupacion,origen from users_travel where id = '" + user_id + "'", sqlCon11);
                        sqlCon11.Open();
                        SqlDataReader reader11 = sqlCom11.ExecuteReader();
                        while (reader11.Read())
                        {
                            txtNombre.Text = reader11[0].ToString();
                            txtTwitter.Text = reader11[1].ToString();
                            txtInstagram.Text = reader11[2].ToString();
                            txtAuto.Text = reader11[3].ToString();
                            txtFoto.Text = reader11[4].ToString();
                            txtLike.Text = reader11[5].ToString();
                            txtEdad.Text = reader11[6].ToString();
                            txtOcupacion.Text = reader11[7].ToString();
                            txtOrigen.Text = reader11[8].ToString();
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
            if (Convert.ToString(Session["Authenticated"]) != "True" || Convert.ToString(Session["user_id"]) == "")
            {
                Response.Redirect("../login.aspx", false);
            }
        }
        protected void btnLogout_Click(object sender, EventArgs e)
        {
            user_id = Session["user_id"].ToString();
            Session["Authenticated"] = "";
            Session["uname"] = "";
            user_id = "";
            LoginCheck();
        }
        protected void btnGuardar_Click(object sender, EventArgs e)
        {
            user_id = Session["user_id"].ToString();
            if (user_id != "")
            {
                string sConectionsku16 = WebConfigurationManager.ConnectionStrings["ApplicationServices"].ConnectionString;
                using (SqlConnection sqlConsku16 = new SqlConnection(sConectionsku16))
                {
                    SqlCommand sqlComsku16 = new SqlCommand("UPDATE users_travel SET nombre='"+txtNombre.Text+"',twitter_id='"+txtTwitter.Text+"',instagram_id="+txtInstagram.Text+",auto_id="+txtAuto.Text+",picture='"+txtFoto.Text+"',likes="+txtLike.Text+",edad="+txtEdad.Text+",origen='"+txtOrigen.Text+"',ocupacion='' WHERE [id] = '" + user_id + "'", sqlConsku16);
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