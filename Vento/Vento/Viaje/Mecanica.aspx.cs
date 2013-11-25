using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Globalization;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Vento.Viaje
{
    public partial class Video : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            int dia = 4;
            string us = DateTime.Now.ToString(new CultureInfo("en-US"));
            if (us.IndexOf("10/28/2013") > -1)
            {
                dia = 1;
            }
            if (us.IndexOf("10/29/2013") > -1)
            {
                dia = 1;
            }
            if (us.IndexOf("10/30/2013") > -1)
            {
                dia = 2;
            }
            if (us.IndexOf("10/31/2013") > -1)
            {
                dia = 3;
            }
            if (us.IndexOf("11/1/2013") > -1)
            {
                dia = 4;
            }
            string sConection0 = WebConfigurationManager.ConnectionStrings["ApplicationServices"].ConnectionString;
            using (SqlConnection sqlCon0 = new SqlConnection(sConection0))
            {
                SqlCommand sqlCom0 = new SqlCommand("select titulo_dinamica,objetivo,descripcion from dias where id="+dia, sqlCon0);
                sqlCon0.Open();
                SqlDataReader reader0 = sqlCom0.ExecuteReader();
                while (reader0.Read())
                {
                    mecanicaTitle.InnerHtml = reader0[0].ToString();
                    mecanicaDescription1.InnerHtml = reader0[1].ToString();
                    mecanicaDescription2.InnerHtml = reader0[2].ToString();
                }
                sqlCon0.Close();
            }
        }
    }
}