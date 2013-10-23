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
    public partial class car_data : System.Web.UI.Page
    {
        string car_id = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            LoginCheck();
            if (!Page.IsPostBack)
            {
                try
                {
                    car_id = Session["Car_ID"].ToString();
                    string sConection11 = WebConfigurationManager.ConnectionStrings["ApplicationServices"].ConnectionString;
                    using (SqlConnection sqlCon11 = new SqlConnection(sConection11))
                    {
                        SqlCommand sqlCom11 = new SqlCommand("SELECT name, hashtag, descripcion from cars where id = '" + car_id + "'", sqlCon11);
                        sqlCon11.Open();
                        SqlDataReader reader11 = sqlCom11.ExecuteReader();
                        while (reader11.Read())
                        {
                            txtName.Text = reader11[0].ToString();
                            txtHashtag.Text = reader11[1].ToString();
                            txtDescripcion.Text = reader11[2].ToString();
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
            if (Convert.ToString(Session["Authenticated"]) != "True" || Convert.ToString(Session["Car_ID"]) == "")
            {
                Response.Redirect("../login.aspx", false);
            }
        }
        protected void btnLogout_Click(object sender, EventArgs e)
        {
            car_id = Session["Car_ID"].ToString();
            Session["Authenticated"] = "";
            Session["uname"] = "";
            car_id = "";
            LoginCheck();
        }
        protected void btnGuardar_Click(object sender, EventArgs e)
        {
            car_id = Session["Car_ID"].ToString();
            if (car_id != "")
            {
                string sConectionsku16 = WebConfigurationManager.ConnectionStrings["ApplicationServices"].ConnectionString;
                using (SqlConnection sqlConsku16 = new SqlConnection(sConectionsku16))
                {
                    SqlCommand sqlComsku16 = new SqlCommand("UPDATE cars SET name = '" + txtName.Text + "', hashtag = '" + txtHashtag.Text + "', descripcion = '" + txtDescripcion.Text + "' WHERE [id] = '" + car_id + "'", sqlConsku16);
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