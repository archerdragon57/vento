using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Vento.CMS
{
    public partial class UsuariosInstagram : System.Web.UI.Page
    {
        string dbcon = ConfigurationManager.ConnectionStrings["ApplicationServices"].ConnectionString;
        SqlConnection con;
        SqlCommand cmd;
        SqlCommand cmd2;
        SqlCommand cmd3;
        SqlCommand cmd4;
        SqlCommand cmd5;
        SqlCommand cmd6;
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
        protected void btnLogout_Click(object sender, EventArgs e)
        {
            Session["Authenticated"] = "";
            Session["user_id"] = "";
            //LoginCheck();
            Response.Redirect("../login.aspx", false);
        }
        protected void GridView1_DeleteCommand(object source, DataGridCommandEventArgs e)
        {
            // PENDIENTE
            con = new SqlConnection(dbcon);
            cmd = new SqlCommand("DELETE FROM [dbo].[instagram_users] WHERE [id] = " + GridView1.DataKeys[e.Item.ItemIndex].ToString() + "", con);
            con.Open();
            int rows = cmd.ExecuteNonQuery();
            if (rows > 0)
            {
                con.Close();
            }
        }
        protected void GridView1_EditCommand(object source, DataGridCommandEventArgs e)
        {
            /*Session["user_id"] = Convert.ToString(GridView1.DataKeys[e.Item.ItemIndex]);
            Response.Redirect("edit/user_data.aspx?edit=" + GridView1.DataKeys[e.Item.ItemIndex].ToString(), false);*/
        }
        protected void GridView1_ItemCommand(object source, DataGridCommandEventArgs e)
        {
            if (e.CommandName.Equals("View"))
            {
                //Response.Redirect("sku.aspx?view=" + GridView1.DataKeys[e.Item.ItemIndex].ToString(), false);
            }
        }
        public void LoginCheck()
        {
            if (Convert.ToString(Session["Authenticated"]) != "True")
            {
                Response.Redirect("login.aspx");
            }
        }
        public void BindData()
        {
            con = new SqlConnection(dbcon);
            da = new SqlDataAdapter("SELECT * from instagram_users", con);
            ds = new DataSet();
            da.Fill(ds, "[dbo].[CmsUsers]");
            GridView1.DataSource = ds.Tables["[dbo].[CmsUsers]"].DefaultView;
            GridView1.DataBind();
        }
        protected void GridView1_PageIndexChanged(object source, DataGridPageChangedEventArgs e)
        {
            GridView1.CurrentPageIndex = e.NewPageIndex;
            BindData();
        }
        protected void GridView1_UpdateCommand(object source, DataGridCommandEventArgs e)
        {

        }
        protected void GridView1_CancelCommand(object source, DataGridCommandEventArgs e)
        {

        }
    }
}