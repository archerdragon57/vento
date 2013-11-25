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
    public partial class new_car : System.Web.UI.Page
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
           Session["Car_ID"]="";
            Session["Authenticated"] = "";
            Session["uname"] = "";
            Response.Redirect("../login.aspx", false);
            //LoginCheck();
        }
        protected void btnNext1_Click(object sender, EventArgs e)
        {
          
            string sConectionsku16 = WebConfigurationManager.ConnectionStrings["ApplicationServices"].ConnectionString;
            using (SqlConnection sqlConsku16 = new SqlConnection(sConectionsku16))
            {
                SqlCommand sqlComsku16 = new SqlCommand("insert into cars (name,hashtag,descripcion,title,points) values ('" + txtName.Text + "', '" + txtHashtag.Text + "', '" + txtDescripcion.Text + "','"+txtTitulo.Text+"',"+txtPuntos.Text+")", sqlConsku16);
                sqlConsku16.Open();
                sqlComsku16.ExecuteNonQuery();
                sqlConsku16.Close();
            }
            lblMessage.Text = "Cambios guardados.";
        }
    }
}