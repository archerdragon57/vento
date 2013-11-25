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
    public partial class Feed : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //string[] hashes=new string[4];
            //int i=1;
            //hashes[0] = "LaRutaDeLasIdeas";
            //string sConection0 = WebConfigurationManager.ConnectionStrings["ApplicationServices"].ConnectionString;
            //using (SqlConnection sqlCon0 = new SqlConnection(sConection0))
            //{
            //    SqlCommand sqlCom0 = new SqlCommand("select hashtag from cars order by id asc", sqlCon0);
            //    sqlCon0.Open();
            //    SqlDataReader reader0 = sqlCom0.ExecuteReader();
            //    while (reader0.Read())
            //    {
            //        hashes[i] = reader0[0].ToString();
            //        i++;
            //    }
            //    sqlCon0.Close();
            //}
            //StringBuilder sb = new StringBuilder();
            //for (int j = 0; j < 4; j++)
            //{
            //    using (SqlConnection sqlCon0 = new SqlConnection(sConection0))
            //    {
            //        SqlCommand sqlCom0 = new SqlCommand("select screen_name,content from twitter_feeds where content like '%#"+hashes[j]+"%' order by id desc", sqlCon0);
            //        sqlCon0.Open();
            //        SqlDataReader reader0 = sqlCom0.ExecuteReader();
            //        while (reader0.Read())
            //        {
            //            sb.Append("<li> <p class='tweetUser'> @" + reader0[0].ToString() + " </p> <p class='tweetText'> " + reader0[1].ToString() + " </p> </li>");
            //        }
            //        sqlCon0.Close();
            //    }
            //    System.Web.UI.HtmlControls.HtmlGenericControl data = (System.Web.UI.HtmlControls.HtmlGenericControl)FindControl("hashSlider" + (j+1).ToString());
            //    data.InnerHtml = "#" + hashes[j].ToString();
            //    System.Web.UI.HtmlControls.HtmlGenericControl data2 = (System.Web.UI.HtmlControls.HtmlGenericControl)FindControl("ulSlider" + (j + 1).ToString());
            //    data2.InnerHtml = sb.ToString();
            //}
            StringBuilder sb = new StringBuilder();
            string sConection0 = WebConfigurationManager.ConnectionStrings["ApplicationServices"].ConnectionString;
            using (SqlConnection sqlCon0 = new SqlConnection(sConection0))
            {
                SqlCommand sqlCom0 = new SqlCommand("select screen_name,content from twitter_feeds where content like '%#LaRutaDeLasIdeas%' order by id desc", sqlCon0);
                sqlCon0.Open();
                SqlDataReader reader0 = sqlCom0.ExecuteReader();
                while (reader0.Read())
                {
                    sb.Append("<li> <p class='tweetUser'> @" + reader0[0].ToString() + " </p> <p class='tweetText'> " + reader0[1].ToString() + " </p> </li>");
                }
                sqlCon0.Close();
            }
            System.Web.UI.HtmlControls.HtmlGenericControl data = (System.Web.UI.HtmlControls.HtmlGenericControl)FindControl("hashSlider1");
            data.InnerHtml = "#LaRutaDeLasIdeas";
            System.Web.UI.HtmlControls.HtmlGenericControl data2 = (System.Web.UI.HtmlControls.HtmlGenericControl)FindControl("ulSlider1");
            data2.InnerHtml = sb.ToString();
            //
            sb = new StringBuilder();
            using (SqlConnection sqlCon0 = new SqlConnection(sConection0))
            {
                SqlCommand sqlCom0 = new SqlCommand("select screen_name,content from twitter_feeds where content like '%#xperiVento%' order by id desc", sqlCon0);
                sqlCon0.Open();
                SqlDataReader reader0 = sqlCom0.ExecuteReader();
                while (reader0.Read())
                {
                    sb.Append("<li> <p class='tweetUser'> @" + reader0[0].ToString() + " </p> <p class='tweetText'> " + reader0[1].ToString() + " </p> </li>");
                }
                sqlCon0.Close();
            }
            System.Web.UI.HtmlControls.HtmlGenericControl data3 = (System.Web.UI.HtmlControls.HtmlGenericControl)FindControl("hashSlider2");
            data3.InnerHtml = "#xperiVento";
            System.Web.UI.HtmlControls.HtmlGenericControl data4 = (System.Web.UI.HtmlControls.HtmlGenericControl)FindControl("ulSlider2");
            data4.InnerHtml = sb.ToString();
            //
            sb = new StringBuilder();
            using (SqlConnection sqlCon0 = new SqlConnection(sConection0))
            {
                SqlCommand sqlCom0 = new SqlCommand("select screen_name,content from twitter_feeds where content like '%#greenVentors%' order by id desc", sqlCon0);
                sqlCon0.Open();
                SqlDataReader reader0 = sqlCom0.ExecuteReader();
                while (reader0.Read())
                {
                    sb.Append("<li> <p class='tweetUser'> @" + reader0[0].ToString() + " </p> <p class='tweetText'> " + reader0[1].ToString() + " </p> </li>");
                }
                sqlCon0.Close();
            }
            System.Web.UI.HtmlControls.HtmlGenericControl data5 = (System.Web.UI.HtmlControls.HtmlGenericControl)FindControl("hashSlider3");
            data5.InnerHtml = "#greenVentors";
            System.Web.UI.HtmlControls.HtmlGenericControl data6 = (System.Web.UI.HtmlControls.HtmlGenericControl)FindControl("ulSlider3");
            data6.InnerHtml = sb.ToString();
            //
            sb = new StringBuilder();
            using (SqlConnection sqlCon0 = new SqlConnection(sConection0))
            {
                SqlCommand sqlCom0 = new SqlCommand("select screen_name,content from twitter_feeds where content like '%#vamonosdeaVenton%' order by id desc", sqlCon0);
                sqlCon0.Open();
                SqlDataReader reader0 = sqlCom0.ExecuteReader();
                while (reader0.Read())
                {
                    sb.Append("<li> <p class='tweetUser'> @" + reader0[0].ToString() + " </p> <p class='tweetText'> " + reader0[1].ToString() + " </p> </li>");
                }
                sqlCon0.Close();
            }
            System.Web.UI.HtmlControls.HtmlGenericControl data7 = (System.Web.UI.HtmlControls.HtmlGenericControl)FindControl("hashSlider4");
            data7.InnerHtml = "#vamonosdeaVenton";
            System.Web.UI.HtmlControls.HtmlGenericControl data8 = (System.Web.UI.HtmlControls.HtmlGenericControl)FindControl("ulSlider4");
            data8.InnerHtml = sb.ToString();
        }
    }
}