using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Text.RegularExpressions;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Vento.CMS
{
    public partial class login : System.Web.UI.Page
    {
        string Authenticated = "";
        string Status = "";
        protected void Page_Load(object sender, EventArgs e)
        {
        }
        protected void btnLogin_Click(object sender, EventArgs e)
        {
            Authenticate();
            if (Authenticated == "True")
            {
                Response.Redirect("admin.aspx", false);
            }
            else
            {
                lblErrorMessage.Text = "Sus datos son incorrectos.";
            }
        }
        public void Authenticate()
        {
            int valid = 0;
            string sConectionx = WebConfigurationManager.ConnectionStrings["ApplicationServices"].ConnectionString;
            using (SqlConnection sqlConx = new SqlConnection(sConectionx))
            {
                SqlCommand sqlComx = new SqlCommand("select count(id) as total from [dbo].[CmsUsers]", sqlConx);
                sqlConx.Open();
                SqlDataReader readerx = sqlComx.ExecuteReader();
                while (readerx.Read())
                {
                    valid = int.Parse(Convert.ToString(readerx[0]));
                }
                sqlConx.Close();
            }
            if (valid > 0)
            {
                if (txtUsername.Text != null && txtUsername.Text != "" && txtPassword.Text != null && txtPassword.Text != "")
                {
                    string Username = Convert.ToString(txtUsername.Text);
                    string Password = Convert.ToString(txtPassword.Text);
                    Regex objAlphaPattern = new Regex(@"^[a-zA-Z0-9#_/.-]*$");
                    bool sus = objAlphaPattern.IsMatch(Username);
                    bool sps = objAlphaPattern.IsMatch(Username);
                    if (sus && sps)
                    {
                        string sConection = WebConfigurationManager.ConnectionStrings["ApplicationServices"].ConnectionString;
                        using (SqlConnection sqlCon = new SqlConnection(sConection))
                        {
                            int latest_id = 0;
                            string latest_password = "";
                            string sConection112 = WebConfigurationManager.ConnectionStrings["ApplicationServices"].ConnectionString;
                            using (SqlConnection sqlCon112 = new SqlConnection(sConection112))
                            {
                                SqlCommand sqlCom112 = new SqlCommand("select max(id) from [dbo].[CmsUsers] where uname='" + Username + "'", sqlCon112);
                                sqlCon112.Open();
                                SqlDataReader reader112 = sqlCom112.ExecuteReader();
                                int counter = 0;
                                while (reader112.Read())
                                {
                                    latest_id = int.Parse(Convert.ToString(reader112[0]));
                                }
                                sqlCon112.Close();
                            }
                            string sConection113 = WebConfigurationManager.ConnectionStrings["ApplicationServices"].ConnectionString;
                            using (SqlConnection sqlCon113 = new SqlConnection(sConection113))
                            {
                                SqlCommand sqlCom113 = new SqlCommand("select password from [dbo].[CmsUsers] where id='" + latest_id + "'", sqlCon113);
                                sqlCon113.Open();
                                SqlDataReader reader113 = sqlCom113.ExecuteReader();
                                while (reader113.Read())
                                {
                                    latest_password = Convert.ToString(reader113[0]);
                                }
                                sqlCon113.Close();
                            }
                            if (Password.CompareTo(latest_password) == 0)
                            {
                                SqlCommand sqlCom = new SqlCommand("SELECT [uname] FROM [dbo].[CmsUsers] WHERE [uname] = '" + Username + "' AND [password] = '" + latest_password + "'", sqlCon);
                                sqlCon.Open();
                                SqlDataReader reader = sqlCom.ExecuteReader();
                                while (reader.Read())
                                {
                                    Status = Convert.ToString(reader[0]);
                                    Session["uname"] = Status;
                                    if (Status == Username)
                                    {
                                        Authenticated = "True";
                                        Session["Authenticated"] = "True";
                                    }
                                    else
                                    {
                                        Authenticated = "False";
                                        Session["Authenticated"] = "False";
                                    }
                                }
                                sqlCon.Close();
                            }
                            else
                            {
                                Authenticated = "False";
                                Session["Authenticated"] = "False";
                            }
                        }
                    }
                    else
                    {
                        Authenticated = "False";
                        Session["Authenticated"] = "False";
                    }
                }
                else
                {
                    Authenticated = "False";
                    Session["Authenticated"] = "False";
                }
            }
            else
            {
                Authenticated = "False";
                Session["Authenticated"] = "False";
            }
        }
    }
}