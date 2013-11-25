using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Vento.CMS.add
{
    public partial class new_day : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            LoginCheck();
        }
        public void LoginCheck()
        {
            if (Convert.ToString(Session["Authenticated"]) != "True")
            {
                Response.Redirect("../login.aspx", false);
            }
        }
        protected void btnLogout_Click(object sender, EventArgs e)
        {
            Session["Day_ID"] = "";
            Session["Authenticated"] = "";
            Session["uname"] = "";
            Response.Redirect("../login.aspx", false);
            //LoginCheck();
        }
        protected void btnNext1_Click(object sender, EventArgs e)
        {
            //string dateString = "7/10/1974 7:10:24 AM";
            string sConectionsku16 = WebConfigurationManager.ConnectionStrings["ApplicationServices"].ConnectionString;
            using (SqlConnection sqlConsku16 = new SqlConnection(sConectionsku16))
            {
                SqlCommand sqlComsku16 = new SqlCommand("insert into dias (title,objetivo,descripcion,video_dia,titulo_resumen,resumen_dia,titulo_dinamica) values ('" + txtTitle.Text + "','" + txtObjetivo.Text + "','" + txtDescripcion.Text + "','" + txtvideo_dia.Text + "','" + txtTitleRes.Text + "','" + txtResumen.Text + "','"+txtTitle2.Text+"')", sqlConsku16);
                sqlConsku16.Open();
                sqlComsku16.ExecuteNonQuery();
                sqlConsku16.Close();
            }
            lblMessage.Text = "Cambios guardados.";
        }
    }
}