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
    public partial class dia : System.Web.UI.Page
    {
        string dia_id = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            LoginCheck();
            if (!Page.IsPostBack)
            {
                try
                {
                    dia_id = Session["Dia_ID"].ToString();
                    string sConection11 = WebConfigurationManager.ConnectionStrings["ApplicationServices"].ConnectionString;
                    using (SqlConnection sqlCon11 = new SqlConnection(sConection11))
                    {
                        SqlCommand sqlCom11 = new SqlCommand("SELECT title,objetivo,descripcion,video_dia,titulo_resumen,resumen_dia,titulo_dinamica from dias where id = '" + dia_id + "'", sqlCon11);
                        sqlCon11.Open();
                        SqlDataReader reader11 = sqlCom11.ExecuteReader();
                        while (reader11.Read())
                        {
                            txtTitle.Text = reader11[0].ToString();
                            txtObjetivo.Text = reader11[1].ToString();
                            txtDescripcion.Text = reader11[2].ToString();
                            txtvideo_dia.Text = reader11[3].ToString();
                            txtTitle2.Text = reader11[4].ToString();
                            txtResumen.Text = reader11[5].ToString();
                            txtTitleRes.Text = reader11[6].ToString();
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
            if (Convert.ToString(Session["Authenticated"]) != "True")
            {
                Response.Redirect("../login.aspx", false);
            }
        }
        protected void btnLogout_Click(object sender, EventArgs e)
        {
            dia_id = Session["Dia_ID"].ToString();
            Session["Authenticated"] = "";
            Session["uname"] = "";
            dia_id = "";
            //LoginCheck();
            Response.Redirect("../login.aspx", false);
        }
        protected void btnNext1_Click(object sender, EventArgs e)
        {
            dia_id = Session["Dia_ID"].ToString();
            if (dia_id != "")
            {
                string sConectionsku16 = WebConfigurationManager.ConnectionStrings["ApplicationServices"].ConnectionString;
                using (SqlConnection sqlConsku16 = new SqlConnection(sConectionsku16))
                {
                    SqlCommand sqlComsku16 = new SqlCommand("UPDATE dias SET title='" + txtTitle.Text + "',objetivo='" + txtObjetivo.Text + "',descripcion='" + txtDescripcion.Text + "',video_dia='" + txtvideo_dia.Text + "',titulo_resumen='" + txtTitle2.Text + "',resumen_dia='" + txtResumen.Text + "',titulo_dinamica='"+txtTitleRes.Text+"' WHERE [id] = " + dia_id + "", sqlConsku16);
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