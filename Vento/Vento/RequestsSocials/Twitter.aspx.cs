using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Web;
using System.Web.Services;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;
using TweetSharp.Model;
using TweetSharp;
using System.Text;
using System.Web.Configuration;
using System.Data.SqlClient;
using System.Globalization;

namespace Vento.RequestsSocials
{
    public partial class Twitter : System.Web.UI.Page
    {
        [WebMethod]
        public static string getHashes(string hash)
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
            StringBuilder sb = new StringBuilder();
            String thash=hash;
            var service = new TwitterService("nk72ZvomNHmQOW0Cg8J4Cg", "bdZNfJrRfB78DTklxy12NuX7OB6wtBx5R0GJogUJvE");
            service.AuthenticateWith("92536722-N5JD1f3n92tjkz9GaRcC6Kef4nPKck59aahGCg8G8", "0QaULsLK6gVTFDMN9Z4MwaqN7VrvedQTSz0Fo8mWcw");
            if (hash.IndexOf('#') > -1)
            {
                thash = hash.Substring(1);
            }
            var options = new SearchOptions { Q = "#"+hash };
            var tweets = service.Search(options);
            foreach (var twt in tweets.Statuses)
            {
                int totalp = 0;
                string sConection0 = WebConfigurationManager.ConnectionStrings["ApplicationServices"].ConnectionString;
                using (SqlConnection sqlCon0 = new SqlConnection(sConection0))
                {
                    SqlCommand sqlCom0 = new SqlCommand("select count(id) as total from twitter_feeds where id='" + twt.Id + "'", sqlCon0);
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
                        SqlCommand sqlCom = new SqlCommand("INSERT INTO twitter_feeds (id,content,id_user,name_user,screen_name,user_location,profilebackgroundimageurl,visible,dia_id) OUTPUT inserted.id VALUES ('" + twt.Id + "','" + twt.Text.Replace('\'', '\"') + "','" + twt.User.Id + "','" + twt.User.Name + "','" + twt.User.ScreenName + "','" + twt.Location + "','" + twt.User.ProfileImageUrl + "',1," + dia.ToString() + ")", sqlCon);
                        sqlCon.Open();
                        SqlDataReader reader = sqlCom.ExecuteReader();
                        while (reader.Read())
                        {
                            sb.Append(Convert.ToString(reader[0]) + ",");
                        }
                        sqlCon.Close();
                    }
                }
            }
            return sb.ToString();
        }
        [WebMethod]
        public static string getTwits(string screenName)
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
            StringBuilder sb = new StringBuilder();
            TwitterService service = new TwitterService("nk72ZvomNHmQOW0Cg8J4Cg", "bdZNfJrRfB78DTklxy12NuX7OB6wtBx5R0GJogUJvE");
            service.AuthenticateWith("92536722-N5JD1f3n92tjkz9GaRcC6Kef4nPKck59aahGCg8G8", "0QaULsLK6gVTFDMN9Z4MwaqN7VrvedQTSz0Fo8mWcw");
            var tweets = service.ListTweetsOnUserTimeline(new ListTweetsOnUserTimelineOptions { ScreenName = screenName });
            List<TwitterStatus> resultList = new List<TwitterStatus>(tweets);
            foreach (var twt in resultList)
            {
                int totalp = 0;
                string sConection0 = WebConfigurationManager.ConnectionStrings["ApplicationServices"].ConnectionString;
                using (SqlConnection sqlCon0 = new SqlConnection(sConection0))
                {
                    SqlCommand sqlCom0 = new SqlCommand("select count(id) as total from twitter_feeds where id='" + twt.Id + "'", sqlCon0);
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
                        SqlCommand sqlCom = new SqlCommand("INSERT INTO twitter_feeds (id,content,id_user,name_user,screen_name,user_location,profilebackgroundimageurl,visible,dia_id) OUTPUT inserted.id VALUES ('" + twt.Id + "','" + twt.Text.Replace('\'','\"') + "','" + twt.User.Id + "','" + twt.User.Name + "','" + twt.User.ScreenName + "','" + twt.Location + "','" + twt.User.ProfileImageUrl + "',1,"+dia.ToString()+")", sqlCon);
                        sqlCon.Open();
                        SqlDataReader reader = sqlCom.ExecuteReader();
                        while (reader.Read())
                        {
                            sb.Append(Convert.ToString(reader[0]) + ",");
                        }
                        sqlCon.Close();
                    }
                }
            }
            return sb.ToString();
        }
        private static string ConsumerSecret
        {
            get { return ConfigurationManager.AppSettings["TwitterConsumerSecret"]; }
        }

        private static string ConsumerKey
        {
            get { return ConfigurationManager.AppSettings["TwitterConsumerKey"]; }
        }

        private static string AccessToken
        {
            get { return ConfigurationManager.AppSettings["AccessToken"]; }
        }
        private static string AccessTokenSecret
        {
            get { return ConfigurationManager.AppSettings["AccessTokenSecret"]; }
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }
    }
}