using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.Configuration;
using System.Web.Services;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Vento.Viaje
{
    public partial class Participante : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string dato = "";
            if (HttpContext.Current.Request.Form["currentId"] != null)
            {
                dato = HttpContext.Current.Request.Form["currentId"].ToString();
                if (dato != null && dato != "")
                {
                    StringBuilder sb = new StringBuilder();
                    string sConection2 = WebConfigurationManager.ConnectionStrings["ApplicationServices"].ConnectionString;
                    using (SqlConnection sqlCon2 = new SqlConnection(sConection2))
                    {
                        SqlCommand sqlCom2 = new SqlCommand("SELECT nombre, twitter_id, picture,descripcion,edad,ocupacion,origen,twitter_id,auto_id from users_travel where id = '" + dato + "'", sqlCon2);
                        sqlCon2.Open();
                        SqlDataReader reader2 = sqlCom2.ExecuteReader();
                        while (reader2.Read())
                        {
                            System.Web.UI.HtmlControls.HtmlGenericControl name = (System.Web.UI.HtmlControls.HtmlGenericControl)FindControl("competitorName");
                            name.InnerHtml = reader2[0].ToString();
                            System.Web.UI.HtmlControls.HtmlImage picture = (System.Web.UI.HtmlControls.HtmlImage)FindControl("competitorImg");
                            picture.Src = reader2[2].ToString();
                            System.Web.UI.HtmlControls.HtmlGenericControl bio = (System.Web.UI.HtmlControls.HtmlGenericControl)FindControl("competitorBio");
                            bio.InnerHtml = reader2[3].ToString();
                            System.Web.UI.HtmlControls.HtmlGenericControl age = (System.Web.UI.HtmlControls.HtmlGenericControl)FindControl("competitorAge");
                            age.InnerHtml = reader2[4].ToString();
                            System.Web.UI.HtmlControls.HtmlGenericControl city = (System.Web.UI.HtmlControls.HtmlGenericControl)FindControl("competitorCity");
                            city.InnerHtml = reader2[6].ToString();
                            System.Web.UI.HtmlControls.HtmlGenericControl ocup = (System.Web.UI.HtmlControls.HtmlGenericControl)FindControl("competitorOcupation");
                            ocup.InnerHtml = reader2[5].ToString();
                            System.Web.UI.HtmlControls.HtmlGenericControl twit = (System.Web.UI.HtmlControls.HtmlGenericControl)FindControl("competitorTwitter");
                            twit.InnerHtml = reader2[7].ToString();
                            System.Web.UI.HtmlControls.HtmlAnchor link1 = (System.Web.UI.HtmlControls.HtmlAnchor)FindControl("backParticipante");
                            link1.Attributes.Add("currentid", reader2[8].ToString());
                            sb.Append("$('#container_video_dia_option').on('click', function (e) {_gaq.push(['_trackPageview', 'ruta/reto']);});");
                        }
                        sqlCon2.Close();
                        clickTags.InnerHtml=sb.ToString();
                    }
                }
            }
        }
        [WebMethod]
        public static string Voto(string fbid, string u_id)
        {
            if (fbid != null && u_id != null)
            {
                int userid = 0;
                int votos = 0;
                string sConection11 = WebConfigurationManager.ConnectionStrings["ApplicationServices"].ConnectionString;
                using (SqlConnection sqlCon11 = new SqlConnection(sConection11))
                {
                    SqlCommand sqlCom11 = new SqlCommand("SELECT count(id) as total from votes where fbid='" + fbid + "'", sqlCon11);
                    sqlCon11.Open();
                    SqlDataReader reader11 = sqlCom11.ExecuteReader();
                    while (reader11.Read())
                    {
                        votos = Convert.ToInt16(reader11[0].ToString());
                    }
                    sqlCon11.Close();
                }
                using (SqlConnection sqlCon11 = new SqlConnection(sConection11))
                {
                    SqlCommand sqlCom11 = new SqlCommand("select id from users_travel where twitter_id='" + u_id + "'", sqlCon11);
                    sqlCon11.Open();
                    SqlDataReader reader11 = sqlCom11.ExecuteReader();
                    while (reader11.Read())
                    {
                        userid = Convert.ToInt16(reader11[0].ToString());
                    }
                    sqlCon11.Close();
                }
                if (votos < 1)
                {
                    using (SqlConnection sqlCon11 = new SqlConnection(sConection11))
                    {
                        SqlCommand sqlCom11 = new SqlCommand("insert into votes(fbid,user_id) values ('" + fbid + "','" + userid + "')", sqlCon11);
                        sqlCon11.Open();
                        SqlDataReader reader11 = sqlCom11.ExecuteReader();
                        while (reader11.Read())
                        {
                            //votos = Convert.ToInt16(reader11[0].ToString());
                        }
                        sqlCon11.Close();
                    }
                    using (SqlConnection sqlCon11 = new SqlConnection(sConection11))
                    {
                        SqlCommand sqlCom11 = new SqlCommand("update users_travel set likes=likes +1 where id='"+userid+"'", sqlCon11);
                        sqlCon11.Open();
                        SqlDataReader reader11 = sqlCom11.ExecuteReader();
                        while (reader11.Read())
                        {
                            //votos = Convert.ToInt16(reader11[0].ToString());
                        }
                        sqlCon11.Close();
                    }
                    return "Success.aspx";
                }
                else
                {
                    return "Error.aspx";
                }
            }
            else
            {
                return "Error.aspx";
            }
        }
    }
}