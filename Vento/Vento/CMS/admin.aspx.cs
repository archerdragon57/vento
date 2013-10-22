using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text.RegularExpressions;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Vento.CMS
{
    public partial class admin : System.Web.UI.Page
    {
        string dbcon = ConfigurationManager.ConnectionStrings["ApplicationServices"].ConnectionString;
        SqlConnection con;
        SqlCommand cmd;
        SqlDataAdapter da;
        DataSet ds;
        protected void Page_Load(object sender, EventArgs e)
        {
            LoginCheck();
            if (!IsPostBack)
            {
                BindData();
            }
        }
        public void LoginCheck()
        {
            if (Convert.ToString(Session["Authenticated"]) != "True")
            {
                Response.Redirect("login.aspx");
            }
        }

        protected void btnLogout_Click(object sender, EventArgs e)
        {
            Session["Authenticated"] = "";
            LoginCheck();
        }

        public void BindData()
        {
            string concatenado = "(";
            string sConection112 = WebConfigurationManager.ConnectionStrings["ApplicationServices"].ConnectionString;
            using (SqlConnection sqlCon112 = new SqlConnection(sConection112))
            {
                SqlCommand sqlCom112 = new SqlCommand("SELECT max([id]) as id FROM [dbo].[CmsUsers] GROUP BY [uname] order by id desc", sqlCon112);
                sqlCon112.Open();
                SqlDataReader reader112 = sqlCom112.ExecuteReader();
                while (reader112.Read())
                {
                    concatenado = concatenado + Convert.ToString(reader112[0]) + ",";
                }
                sqlCon112.Close();
            }
            concatenado = concatenado.Substring(0, concatenado.Length - 1);
            concatenado = concatenado + ")";
            con = new SqlConnection(dbcon);
            da = new SqlDataAdapter("SELECT [id], [uname], [fname], [mname], [lname], [password] FROM [dbo].[CmsUsers] WHERE [id] in " + concatenado + " ORDER BY [uname]", con);
            ds = new DataSet();
            da.Fill(ds, "[dbo].[CmsUsers]");
            GridView1.DataSource = ds.Tables["[dbo].[CmsUsers]"].DefaultView;
            GridView1.DataBind();
        }

        protected void GridView1_DeleteCommand(object source, DataGridCommandEventArgs e)
        {
            string uname = "";
            string sConection112 = WebConfigurationManager.ConnectionStrings["ApplicationServices"].ConnectionString;
            using (SqlConnection sqlCon112 = new SqlConnection(sConection112))
            {
                SqlCommand sqlCom112 = new SqlCommand("SELECT [uname] FROM [dbo].[CmsUsers] where [id]=" + GridView1.DataKeys[e.Item.ItemIndex].ToString(), sqlCon112);
                sqlCon112.Open();
                SqlDataReader reader112 = sqlCom112.ExecuteReader();
                while (reader112.Read())
                {
                    uname = Convert.ToString(reader112[0]);
                }
                sqlCon112.Close();
            }
            con = new SqlConnection(dbcon);
            cmd = new SqlCommand("DELETE FROM [dbo].[CmsUsers] WHERE [uname] = '" + uname + "'", con);
            con.Open();
            int rows = cmd.ExecuteNonQuery();
            if (rows > 0)
            {
                lblMessage.Text = "Successfully deleted";
                con.Close();
                BindData();
            }
        }

        protected void btnAddNew_Click(object sender, EventArgs e)
        {
            if (btnAddNew.Text == "Add New Rec")
            {
                btnAddNew.Text = "Cancel";
                GridView1.ShowFooter = true;
            }
            else
            {
                btnAddNew.Text = "Add New Rec";
                GridView1.ShowFooter = false;
            }
        }
        protected void GridView1_EditCommand1(object source, DataGridCommandEventArgs e)
        {
            GridView1.EditItemIndex = e.Item.ItemIndex;
            BindData();
        }

        protected void GridView1_UpdateCommand1(object source, DataGridCommandEventArgs e)
        {
            Regex objAlphaPattern = new Regex(@"^[a-zA-Z0-9#_/.-]*$");
            TextBox uname = (TextBox)GridView1.Items[e.Item.ItemIndex].Cells[1].FindControl("txtuname_e");
            TextBox pass = (TextBox)GridView1.Items[e.Item.ItemIndex].Cells[5].FindControl("txtaddpass_e");
            bool sus = objAlphaPattern.IsMatch(uname.Text);
            bool sps = objAlphaPattern.IsMatch(pass.Text);
            if (sus && sps)
            {
                TextBox fname = (TextBox)GridView1.Items[e.Item.ItemIndex].Cells[2].FindControl("txtaddfname_e");
                TextBox mname = (TextBox)GridView1.Items[e.Item.ItemIndex].Cells[3].FindControl("txtaddmname_e");
                TextBox lname = (TextBox)GridView1.Items[e.Item.ItemIndex].Cells[4].FindControl("txtaddlname_e");
                con = new SqlConnection(dbcon);
                //checar si ya lo habia usado en las tres ultimas veces
                string[] passes = new string[3];
                string sConection112 = WebConfigurationManager.ConnectionStrings["ApplicationServices"].ConnectionString;
                using (SqlConnection sqlCon112 = new SqlConnection(sConection112))
                {
                    SqlCommand sqlCom112 = new SqlCommand("select top 3 password from [dbo].[CmsUsers] where uname='" + uname.Text + "' order by id desc", sqlCon112);
                    sqlCon112.Open();
                    SqlDataReader reader112 = sqlCom112.ExecuteReader();
                    int counter = 0;
                    while (reader112.Read())
                    {
                        passes[counter++] = Convert.ToString(reader112[0]);
                    }
                    sqlCon112.Close();
                }
                int pos = Array.IndexOf(passes, pass.Text);
                if (pos < 0)
                {
                    cmd = new SqlCommand("INSERT INTO [dbo].[CmsUsers] VALUES ('" + uname.Text + "','" + fname.Text + "','" + mname.Text + "','" + lname.Text + "','" + pass.Text + "')", con);
                    con.Open();
                    int rows = cmd.ExecuteNonQuery();
                    if (rows > 0)
                    {
                        lblMessage.Text = "Successfully updated";
                        con.Close();
                        BindData();
                    }
                }
                else
                {
                    lblMessage.Text = "No use una contraseña que ha sido usada 3 veces recientemente.";
                }
            }

        }
        protected void GridView1_CancelCommand(object source, DataGridCommandEventArgs e)
        {
            GridView1.EditItemIndex = -1;
            BindData();
        }
        protected void GridView1_ItemCommand1(object source, DataGridCommandEventArgs e)
        {
            if (e.CommandName.Equals("AddNew"))
            {
                TextBox uname = (TextBox)e.Item.FindControl("txtuname_f");
                TextBox pass = (TextBox)e.Item.FindControl("txtaddpass_f");
                Regex objAlphaPattern = new Regex(@"^[a-zA-Z0-9#_/.-]*$");
                bool sus = objAlphaPattern.IsMatch(uname.Text);
                bool sps = objAlphaPattern.IsMatch(pass.Text);
                if (sps && sus)//Contraseña y pass válidos
                {
                    TextBox fname = (TextBox)e.Item.FindControl("txtaddfname_f");
                    TextBox mname = (TextBox)e.Item.FindControl("txtaddmname_f");
                    TextBox lname = (TextBox)e.Item.FindControl("txtaddlname_f");
                    con = new SqlConnection(dbcon);
                    cmd = new SqlCommand("INSERT INTO [dbo].[CmsUsers] VALUES ('" + uname.Text + "','" + fname.Text + "','" + mname.Text + "','" + lname.Text + "','" + pass.Text + "')", con);
                    con.Open();
                    int rows = cmd.ExecuteNonQuery();
                    if (rows > 0)
                    {
                        lblMessage.Text = "Successfully saved";
                        con.Close();
                        BindData();
                    }
                }
            }
        }
    }
}