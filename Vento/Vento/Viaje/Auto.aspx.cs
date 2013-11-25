using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Vento.Viaje
{
    public partial class InfoAuto : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string dato = "";
            dato = HttpContext.Current.Request.Form["currentId"].ToString();
            if (dato != null && dato != "")
            {
                //Auto
                string sConection1 = WebConfigurationManager.ConnectionStrings["ApplicationServices"].ConnectionString;
                using (SqlConnection sqlCon1 = new SqlConnection(sConection1))
                {
                    SqlCommand sqlCom1 = new SqlCommand("SELECT name, hashtag,title, descripcion from cars where id = '" + dato + "'", sqlCon1);
                    sqlCon1.Open();
                    SqlDataReader reader1 = sqlCom1.ExecuteReader();
                    while (reader1.Read())
                    {
                        titleAuto.InnerHtml = reader1[2].ToString();
                        descriptionAuto.InnerHtml = reader1[3].ToString();
                        hashcoche.InnerHtml = "<span>#</span>"+reader1[1].ToString();
                    }
                    sqlCon1.Close();
                }
                //Participantes
                StringBuilder code = new StringBuilder();
                int i = 0;
                string sConection2 = WebConfigurationManager.ConnectionStrings["ApplicationServices"].ConnectionString;
                using (SqlConnection sqlCon2 = new SqlConnection(sConection2))
                {
                    SqlCommand sqlCom2 = new SqlCommand("SELECT id, nombre, twitter_id, picture from users_travel where auto_id = '" + dato + "'", sqlCon2);
                    sqlCon2.Open();
                    SqlDataReader reader2 = sqlCom2.ExecuteReader();
                    while (reader2.Read())
                    {
                        i++;
                        System.Web.UI.HtmlControls.HtmlAnchor link1 = (System.Web.UI.HtmlControls.HtmlAnchor)FindControl("personProfile"+i.ToString());
                        link1.Attributes.Add("currentid", reader2[0].ToString());
                        System.Web.UI.HtmlControls.HtmlImage picture = (System.Web.UI.HtmlControls.HtmlImage)FindControl("person" + i.ToString());
                        picture.Src = reader2[3].ToString();
                        System.Web.UI.HtmlControls.HtmlGenericControl hash = (System.Web.UI.HtmlControls.HtmlGenericControl)FindControl("personName" + i.ToString());
                        hash.InnerHtml = "@" + reader2[2].ToString();
                        code.Append("$('#personProfile" + i.ToString() + "').on('click', function (e) {_gaq.push(['_trackPageview', 'ruta/vento" + dato.ToString() + "/" + reader2[2].ToString() + "']);});");
                    }
                    sqlCon2.Close();
                }
                scriptTags.InnerHtml = code.ToString();
            }
        }
    }
}