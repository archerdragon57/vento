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
    public partial class Site : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string sConection11 = WebConfigurationManager.ConnectionStrings["ApplicationServices"].ConnectionString;
            using (SqlConnection sqlCon11 = new SqlConnection(sConection11))
            {
                SqlCommand sqlCom11 = new SqlCommand("SELECT hashtag from cars order by id asc", sqlCon11);
                sqlCon11.Open();
                SqlDataReader reader11 = sqlCom11.ExecuteReader();
                int i = 1;
                while (reader11.Read())
                {
                    System.Web.UI.HtmlControls.HtmlGenericControl who = (System.Web.UI.HtmlControls.HtmlGenericControl)FindControl("rollOvervento" + i.ToString());
                    who.InnerHtml = "<span>#</span>"+reader11[0].ToString();
                    i++;
                }
                sqlCon11.Close();
            }
        }
    }
}