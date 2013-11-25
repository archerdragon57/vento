using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Globalization;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net;

namespace Vento.Viaje
{
    public partial class InfoDia : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            int dia = 4;
            var dato_r = Request.QueryString["dia"];
            if (dato_r != null && dato_r != "")
            {
                dia = Convert.ToInt16(dato_r.ToString());
            }
            //Parámetro del día
            System.Web.UI.HtmlControls.HtmlGenericControl daynumber = (System.Web.UI.HtmlControls.HtmlGenericControl)FindControl("dayNumber");
            daynumber.InnerHtml = dia.ToString();
            if (dia == 1)
            {
                System.Web.UI.HtmlControls.HtmlAnchor link2 = (System.Web.UI.HtmlControls.HtmlAnchor)FindControl("dayBack");
                link2.Attributes.Add("currentid", "3");
                link2.HRef = "http://nuevovento.mx/Viaje/Resumen.aspx?dia=3";
                System.Web.UI.HtmlControls.HtmlAnchor link1 = (System.Web.UI.HtmlControls.HtmlAnchor)FindControl("dayForward");
                link1.Attributes.Add("currentid", "2");
                link1.HRef = "http://nuevovento.mx/Viaje/Resumen.aspx?dia=2";
            }
            if (dia == 2)
            {
                System.Web.UI.HtmlControls.HtmlAnchor link1 = (System.Web.UI.HtmlControls.HtmlAnchor)FindControl("dayBack");
                link1.Attributes.Add("currentid", "1");
                link1.HRef = "http://nuevovento.mx/Viaje/Resumen.aspx?dia=1";
                System.Web.UI.HtmlControls.HtmlAnchor link2 = (System.Web.UI.HtmlControls.HtmlAnchor)FindControl("dayForward");
                link2.Attributes.Add("currentid", "3");
                link2.HRef = "http://nuevovento.mx/Viaje/Resumen.aspx?dia=3";
            }
            if (dia == 3)
            {
                System.Web.UI.HtmlControls.HtmlAnchor link1 = (System.Web.UI.HtmlControls.HtmlAnchor)FindControl("dayBack");
                link1.Attributes.Add("currentid", "2");
                link1.HRef = "http://nuevovento.mx/Viaje/Resumen.aspx?dia=2";
                System.Web.UI.HtmlControls.HtmlAnchor link2 = (System.Web.UI.HtmlControls.HtmlAnchor)FindControl("dayForward");
                link2.Attributes.Add("currentid", "1");
                link2.HRef = "http://nuevovento.mx/Viaje/Resumen.aspx?dia=4";
            }
            if (dia == 4)
            {
                System.Web.UI.HtmlControls.HtmlAnchor link1 = (System.Web.UI.HtmlControls.HtmlAnchor)FindControl("dayBack");
                link1.Attributes.Add("currentid", "2");
                link1.HRef = "http://nuevovento.mx/Viaje/Resumen.aspx?dia=3";
                System.Web.UI.HtmlControls.HtmlAnchor link2 = (System.Web.UI.HtmlControls.HtmlAnchor)FindControl("dayForward");
                link2.Attributes.Add("currentid", "1");
                link2.HRef = "http://nuevovento.mx/Viaje/Resumen.aspx?dia=1";
            }
            //Info día
            string sConection11 = WebConfigurationManager.ConnectionStrings["ApplicationServices"].ConnectionString;
            using (SqlConnection sqlCon11 = new SqlConnection(sConection11))
            {
                SqlCommand sqlCom11 = new SqlCommand("SELECT title,objetivo,descripcion,imagen,video_dia,titulo_resumen,resumen_dia,date from dias where id = '"+dia.ToString()+"'", sqlCon11);
                sqlCon11.Open();
                SqlDataReader reader11 = sqlCom11.ExecuteReader();
                while (reader11.Read())
                {
                    System.Web.UI.HtmlControls.HtmlGenericControl who = (System.Web.UI.HtmlControls.HtmlGenericControl)FindControl("routefromTo");
                    who.InnerHtml = reader11[0].ToString();
                    System.Web.UI.HtmlControls.HtmlGenericControl t2 = (System.Web.UI.HtmlControls.HtmlGenericControl)FindControl("title2");
                    t2.InnerHtml = reader11[5].ToString();
                    System.Web.UI.HtmlControls.HtmlGenericControl t3 = (System.Web.UI.HtmlControls.HtmlGenericControl)FindControl("feed_desc_done");
                    t3.InnerHtml = reader11[6].ToString();
                }
                sqlCon11.Close();
            }
            //Progreso autos
            using (SqlConnection sqlCon11 = new SqlConnection(sConection11))
            {
                SqlCommand sqlCom11 = new SqlCommand("SELECT points,name from cars order by id asc", sqlCon11);
                sqlCon11.Open();
                SqlDataReader reader11 = sqlCom11.ExecuteReader();
                int i = 1;
                while (reader11.Read())
                {
                    int val=int.Parse(((int.Parse(reader11[0].ToString())*100)/500).ToString());
                    System.Web.UI.HtmlControls.HtmlGenericControl who = (System.Web.UI.HtmlControls.HtmlGenericControl)FindControl("p"+i.ToString());
                    who.Style.Add("width", val.ToString() + "%");
                    System.Web.UI.HtmlControls.HtmlGenericControl who2 = (System.Web.UI.HtmlControls.HtmlGenericControl)FindControl("pc" + i.ToString());
                    who2.Style.Add("left", val.ToString() + "%");
                    string dato = "";
                    switch (i)
                    { 
                        case 1:
                            dato = "rankventoUno";
                            break;
                        case 2:
                            dato = "rankventoDos";
                            break;
                        case 3:
                            dato = "rankventoTres";
                            break;
                    }
                    System.Web.UI.HtmlControls.HtmlGenericControl who3 = (System.Web.UI.HtmlControls.HtmlGenericControl)FindControl(dato);
                    string nombre = "";
                    if (reader11[1].ToString().IndexOf("xperi") > -1)
                    {
                        nombre = "<span>#</span>xperi <span>Vento</span>";
                    }
                    if (reader11[1].ToString().IndexOf("vamonos") > -1)
                    {
                        nombre = "<span>#</span>vamonosde a<span>Vento</span>n";
                    }
                    if (reader11[1].ToString().IndexOf("green") > -1)
                    {
                        nombre = "<span>#</span>green <span>Vento</span>rs";
                    }
                    //who3.InnerHtml = "<span>#</span>" + reader11[1].ToString().Substring(0, reader11[1].ToString().IndexOf(' ')) + " <span>" + reader11[1].ToString().Substring(reader11[1].ToString().IndexOf(' ')+1) + "</span>";
                    who3.InnerHtml = nombre;
                    i++;
                }
                sqlCon11.Close();
            }
            //Info
            //Video del día
            string sConection2 = WebConfigurationManager.ConnectionStrings["ApplicationServices"].ConnectionString;
            using (SqlConnection sqlCon2 = new SqlConnection(sConection2))
            {
                SqlCommand sqlCom2 = new SqlCommand("SELECT id,video_dia from dias where id='"+dia+"'", sqlCon2);
                sqlCon2.Open();
                SqlDataReader reader2 = sqlCom2.ExecuteReader();
                while (reader2.Read())
                {
                    System.Web.UI.HtmlControls.HtmlGenericControl who3 = (System.Web.UI.HtmlControls.HtmlGenericControl)FindControl("container_video_dia_option");
                    who3.InnerHtml = "<iframe width='222' height='222' src='" + reader2[1].ToString() + "' frameborder='0' allowfullscreen></iframe>";
                }
                sqlCon2.Close();
            }
            //Imágenes siempre habrán
            using (SqlConnection sqlCon2 = new SqlConnection(sConection2))
            {
                SqlCommand sqlCom2 = new SqlCommand("SELECT link,normal,dato_id from instagramfeeds where data_type='image' and visible=1 and dia_id=" + dia.ToString()+" order by dato_id desc", sqlCon2);
                sqlCon2.Open();
                SqlDataReader reader2 = sqlCom2.ExecuteReader();
                int i = 2;
                while (reader2.Read() && i <= 5)
                {
                    System.Web.UI.HtmlControls.HtmlImage who = (System.Web.UI.HtmlControls.HtmlImage)FindControl("id" + i.ToString() + "_in");
                    who.Src = reader2[1].ToString();
                    i++;
                }
                sqlCon2.Close();
            }
            //Ver si hay videos disponibles
            int totalp = 0;
            string sConection0 = WebConfigurationManager.ConnectionStrings["ApplicationServices"].ConnectionString;
            using (SqlConnection sqlCon0 = new SqlConnection(sConection0))
            {
                SqlCommand sqlCom0 = new SqlCommand("select count(id) as total from instagramfeeds where data_type='video' and visible=1 and  dia_id=" + dia.ToString(), sqlCon0);
                sqlCon0.Open();
                SqlDataReader reader0 = sqlCom0.ExecuteReader();
                while (reader0.Read())
                {
                    totalp = Convert.ToInt16(reader0[0]);
                }
                sqlCon0.Close();
            }
            if (totalp < 1)
            {
                string sConection = WebConfigurationManager.ConnectionStrings["ApplicationServices"].ConnectionString;
                using (SqlConnection sqlCon = new SqlConnection(sConection))
                {
                    SqlCommand sqlCom = new SqlCommand("SELECT link,normal,dato_id from instagramfeeds where data_type='image' and visible=1 and dia_id=" + dia.ToString() + " order by dato_id desc", sqlCon);
                    sqlCon.Open();
                    SqlDataReader reader = sqlCom.ExecuteReader();
                    int i = 1;
                    while (reader.Read())
                    {
                        if(i==1)
                        {
                            System.Web.UI.HtmlControls.HtmlGenericControl who3 = (System.Web.UI.HtmlControls.HtmlGenericControl)FindControl("div_video_lift");
                            System.Web.UI.HtmlControls.HtmlGenericControl who4 = (System.Web.UI.HtmlControls.HtmlGenericControl)FindControl("div_image_lift");
                            System.Web.UI.HtmlControls.HtmlImage who = (System.Web.UI.HtmlControls.HtmlImage)FindControl("id2_in");
                            who.Src = reader[1].ToString();
                            System.Web.UI.HtmlControls.HtmlVideo who2 = (System.Web.UI.HtmlControls.HtmlVideo)FindControl("id2_v");
                            who4.Style["display"] = "block";
                            who3.Style["display"] = "none";
                        }
                        i++;
                    }
                    sqlCon.Close();
                }
            }
            else
            {
                string sConection = WebConfigurationManager.ConnectionStrings["ApplicationServices"].ConnectionString;
                using (SqlConnection sqlCon = new SqlConnection(sConection))
                {
                    SqlCommand sqlCom = new SqlCommand("SELECT link,normal,dato_id from instagramfeeds where data_type='video' and visible=1 and dia_id=" + dia.ToString() + " order by dato_id desc", sqlCon);
                    sqlCon.Open();
                    SqlDataReader reader = sqlCom.ExecuteReader();
                    while (reader.Read())
                    {
                        System.Web.UI.HtmlControls.HtmlGenericControl who3 = (System.Web.UI.HtmlControls.HtmlGenericControl)FindControl("div_video_lift");
                        System.Web.UI.HtmlControls.HtmlGenericControl who4 = (System.Web.UI.HtmlControls.HtmlGenericControl)FindControl("div_image_lift");
                        System.Web.UI.HtmlControls.HtmlVideo who2 = (System.Web.UI.HtmlControls.HtmlVideo)FindControl("id2_v");
                        who2.Src = reader[0].ToString();
                        System.Web.UI.HtmlControls.HtmlImage who = (System.Web.UI.HtmlControls.HtmlImage)FindControl("id2_in");
                        who3.Style["display"] = "block";
                        who4.Style["display"] = "none";
                    }
                    sqlCon.Close();
                }
            }
            ////Twit de volkswagen
            //string sConection9 = WebConfigurationManager.ConnectionStrings["ApplicationServices"].ConnectionString;
            //using (SqlConnection sqlCon = new SqlConnection(sConection9))
            //{
            //    SqlCommand sqlCom0 = new SqlCommand("select screen_name,content from twitter_feeds where screen_name='Volkswagen_MX' order by id desc", sqlCon);
            //    sqlCon.Open();
            //    SqlDataReader reader = sqlCom0.ExecuteReader();
            //    int i = 0;
            //    while (reader.Read()&&i<1)
            //    {
            //        i++;
            //        System.Web.UI.HtmlControls.HtmlGenericControl who = (System.Web.UI.HtmlControls.HtmlGenericControl)FindControl("id5_in");
            //        who.InnerHtml="<p class='tweetUser'> @" + reader[0].ToString() + " </p> <p class='tweetText'> " + reader[1].ToString() + "</p>";
            //    }
            //    sqlCon.Close();
            //}
        }
    }
}