using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Vento.Viaje
{
    public partial class Ranking : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //Participantes
            int i = 0;
            string place = "";
            string sConection2 = WebConfigurationManager.ConnectionStrings["ApplicationServices"].ConnectionString;
            using (SqlConnection sqlCon2 = new SqlConnection(sConection2))
            {
                SqlCommand sqlCom2 = new SqlCommand("SELECT id, nombre, twitter_id, picture, likes,auto_id from users_travel order by likes desc", sqlCon2);
                sqlCon2.Open();
                SqlDataReader reader2 = sqlCom2.ExecuteReader();
                while (reader2.Read())
                {
                    i++;
                    switch (i)
                    {
                        case 1:
                            place = "first";
                            break;
                        case 2:
                            place = "second";
                            break;
                        case 3:
                            place = "third";
                            break;
                        case 4:
                            place = "fourth";
                            break;
                        case 5:
                            place = "fifth";
                            break;
                        case 6:
                            place = "sixth";
                            break;
                        case 7:
                            place = "seventh";
                            break;
                        case 8:
                            place = "eighth";
                            break;
                        case 9:
                            place = "nineth";
                            break;
                        case 10:
                            place = "tenth";
                            break;
                        case 11:
                            place = "eleventh";
                            break;
                        case 12:
                            place = "twelfth";
                            break;
                    }
                    System.Web.UI.HtmlControls.HtmlImage picture = (System.Web.UI.HtmlControls.HtmlImage)FindControl(place+"placeImg");
                    picture.Src = reader2[3].ToString();
                    System.Web.UI.HtmlControls.HtmlGenericControl votos = (System.Web.UI.HtmlControls.HtmlGenericControl)FindControl("votes" + char.ToUpper(place[0]) + place.Substring(1));
                    if (i != 1)
                    {
                        votos.InnerHtml = reader2[4].ToString() + "<span> Votos</span>";
                    }
                    if (i == 1)
                    {
                        votos.InnerHtml = reader2[4].ToString();
                        System.Web.UI.HtmlControls.HtmlAnchor link1 = (System.Web.UI.HtmlControls.HtmlAnchor)FindControl("backRanking");
                        link1.Attributes.Add("currentid", reader2[5].ToString());
                        System.Web.UI.HtmlControls.HtmlGenericControl name = (System.Web.UI.HtmlControls.HtmlGenericControl)FindControl("firstName");
                        name.InnerHtml = reader2[1].ToString();
                    }
                    
                }
                sqlCon2.Close();
            }
        }
    }
}