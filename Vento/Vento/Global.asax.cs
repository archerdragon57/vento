using Skybrud.Social.Instagram;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Globalization;
using System.Linq;
using System.Text;
using System.Threading;
using System.Web;
using System.Web.Configuration;
using System.Web.Optimization;
using System.Web.Routing;
using System.Web.Security;
using TweetSharp;
using Vento;

namespace Vento
{
    public class Worker
    {
        public static void getUsersMedia()
        {
            string token = "";
            //int id = 0 ;
            try
            {
                string sConectionx = WebConfigurationManager.ConnectionStrings["ApplicationServices"].ConnectionString;
                using (SqlConnection sqlConx = new SqlConnection(sConectionx))
                {
                    SqlCommand sqlComx = new SqlCommand("select token from instagram_users", sqlConx);
                    sqlConx.Open();
                    SqlDataReader readerx = sqlComx.ExecuteReader();
                    while (readerx.Read())
                    {
                        token = readerx[0].ToString();
                        InstagramService service = InstagramService.CreateFromAccessToken(token);
                        var media = service.Endpoints.Users.GetMedia(service.CurrentUser.Id);
                        int dia = 1;
                        string us = DateTime.Now.ToString(new CultureInfo("en-US"));
                        if (us.IndexOf("28/10/2012") > -1)
                        {
                            dia = 1;
                        }
                        if (us.IndexOf("29/10/2012") > -1)
                        {
                            dia = 2;
                        }
                        if (us.IndexOf("30/10/2012") > -1)
                        {
                            dia = 3;
                        }
                        if (us.IndexOf("31/10/2012") > -1)
                        {
                            dia = 4;
                        }
                        foreach (var img in media.Images)
                        {
                            int totalp = 0;
                            string sConection0 = WebConfigurationManager.ConnectionStrings["ApplicationServices"].ConnectionString;
                            using (SqlConnection sqlCon0 = new SqlConnection(sConection0))
                            {
                                SqlCommand sqlCom0 = new SqlCommand("select count(id) as total from InstagramFeeds where dato_id='" + img.Id + "'", sqlCon0);
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
                                    SqlCommand sqlCom = new SqlCommand("INSERT INTO instagramfeeds (captiontext,filter,dato_id,like_count,link,location,lowres,normal,thumbnail,data_type,dia_id,created) OUTPUT inserted.id VALUES ('" + img.CaptionText + "','" + img.Filter + "','" + img.Id + "'," + img.LikeCount + ",'" + img.Link + "','" + img.Location + "','" + img.LowRes + "','" + img.Standard + "','" + img.Thumbnail + "','" + img.Type + "'," + dia + ",'" + img.Created + "')", sqlCon);
                                    sqlCon.Open();
                                    SqlDataReader reader = sqlCom.ExecuteReader();
                                    while (reader.Read())
                                    {
                                        //sb.Append(Convert.ToString(reader[0]));
                                    }
                                    sqlCon.Close();
                                }
                            }
                            else
                            {
                                string sConection = WebConfigurationManager.ConnectionStrings["ApplicationServices"].ConnectionString;
                                using (SqlConnection sqlCon = new SqlConnection(sConection))
                                {
                                    SqlCommand sqlCom = new SqlCommand("update instagramfeeds set like_count ='" + img.LikeCount + "' where dato_id='" + img.Id + "'", sqlCon);
                                    sqlCon.Open();
                                    SqlDataReader reader = sqlCom.ExecuteReader();
                                    while (reader.Read())
                                    {
                                        //sb.Append(Convert.ToString(reader[0]));
                                    }
                                    sqlCon.Close();
                                }
                            }
                        }
                        foreach (var vid in media.Videos)
                        {
                            int totalp = 0;
                            string sConection0 = WebConfigurationManager.ConnectionStrings["ApplicationServices"].ConnectionString;
                            using (SqlConnection sqlCon0 = new SqlConnection(sConection0))
                            {
                                SqlCommand sqlCom0 = new SqlCommand("select count(id) as total from InstagramFeeds where dato_id='" + vid.Id + "'", sqlCon0);
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
                                    SqlCommand sqlCom = new SqlCommand("INSERT INTO instagramfeeds (captiontext,filter,dato_id,like_count,link,location,lowres,normal,thumbnail,data_type,dia_id,created) OUTPUT inserted.id VALUES ('" + vid.CaptionText + "','" + vid.Filter + "','" + vid.Id + "'," + vid.LikeCount + ",'" + vid.Link + "','" + vid.Location + "','" + vid.LowRes + "','" + vid.Standard + "','" + vid.Thumbnail + "','" + vid.Type + "'," + dia + ",'" + vid.Created + "')", sqlCon);
                                    sqlCon.Open();
                                    SqlDataReader reader = sqlCom.ExecuteReader();
                                    while (reader.Read())
                                    {
                                        //sb.Append(Convert.ToString(reader[0]));
                                    }
                                    sqlCon.Close();
                                }
                            }
                            else
                            {
                                string sConection = WebConfigurationManager.ConnectionStrings["ApplicationServices"].ConnectionString;
                                using (SqlConnection sqlCon = new SqlConnection(sConection))
                                {
                                    SqlCommand sqlCom = new SqlCommand("update instagramfeeds set like_count ='" + vid.LikeCount + "' where dato_id='" + vid.Id + "'", sqlCon);
                                    sqlCon.Open();
                                    SqlDataReader reader = sqlCom.ExecuteReader();
                                    while (reader.Read())
                                    {
                                        //sb.Append(Convert.ToString(reader[0]));
                                    }
                                    sqlCon.Close();
                                }
                            }
                        }
                    }
                }
            }
            catch (Exception ex)
            { }
        }
        public static void getUserTwitts()
        {
            string user = "";
            try
            {
                string sConectionx = WebConfigurationManager.ConnectionStrings["ApplicationServices"].ConnectionString;
                using (SqlConnection sqlConx = new SqlConnection(sConectionx))
                {
                    SqlCommand sqlComx = new SqlCommand("select twitter_id from users_travel", sqlConx);
                    sqlConx.Open();
                    SqlDataReader readerx = sqlComx.ExecuteReader();
                    while (readerx.Read())
                    {
                        user = readerx[0].ToString();
                        int dia = 1;
                        string us = DateTime.Now.ToString(new CultureInfo("en-US"));
                        if (us.IndexOf("28/10/2012") > -1)
                        {
                            dia = 1;
                        }
                        if (us.IndexOf("29/10/2012") > -1)
                        {
                            dia = 2;
                        }
                        if (us.IndexOf("30/10/2012") > -1)
                        {
                            dia = 3;
                        }
                        if (us.IndexOf("31/10/2012") > -1)
                        {
                            dia = 4;
                        }
                        StringBuilder sb = new StringBuilder();
                        TwitterService service = new TwitterService("nk72ZvomNHmQOW0Cg8J4Cg", "bdZNfJrRfB78DTklxy12NuX7OB6wtBx5R0GJogUJvE");
                        service.AuthenticateWith("92536722-N5JD1f3n92tjkz9GaRcC6Kef4nPKck59aahGCg8G8", "0QaULsLK6gVTFDMN9Z4MwaqN7VrvedQTSz0Fo8mWcw");
                        var tweets = service.ListTweetsOnUserTimeline(new ListTweetsOnUserTimelineOptions { ScreenName = user });
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
                                    SqlCommand sqlCom = new SqlCommand("INSERT INTO twitter_feeds (id,content,id_user,name_user,screen_name,user_location,profilebackgroundimageurl,visible,dia_id,created) OUTPUT inserted.id VALUES ('" + twt.Id + "','" + twt.Text.Replace('\'', '\"') + "','" + twt.User.Id + "','" + twt.User.Name + "','" + twt.User.ScreenName + "','" + twt.Location + "','" + twt.User.ProfileImageUrl + "',1," + dia + ",'" + twt.CreatedDate.ToString("yyyy-MM-dd HH:mm:ss") + "')", sqlCon);
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
                    }
                    sqlConx.Close();
                }
            }
            catch (Exception ex)
            {
            }
        }
        public static void getMainHash()
        {
            string hash = "#LaRutaDeLasIdeas";
            try
            {
                int dia = 1;
                string us = DateTime.Now.ToString(new CultureInfo("en-US"));
                if (us.IndexOf("28/10/2012") > -1)
                {
                    dia = 1;
                }
                if (us.IndexOf("29/10/2012") > -1)
                {
                    dia = 2;
                }
                if (us.IndexOf("30/10/2012") > -1)
                {
                    dia = 3;
                }
                if (us.IndexOf("31/10/2012") > -1)
                {
                    dia = 4;
                }
                StringBuilder sb = new StringBuilder();
                String thash = hash;
                var service = new TwitterService("nk72ZvomNHmQOW0Cg8J4Cg", "bdZNfJrRfB78DTklxy12NuX7OB6wtBx5R0GJogUJvE");
                service.AuthenticateWith("92536722-N5JD1f3n92tjkz9GaRcC6Kef4nPKck59aahGCg8G8", "0QaULsLK6gVTFDMN9Z4MwaqN7VrvedQTSz0Fo8mWcw");
                var options = new SearchOptions { Q = hash };
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
                            SqlCommand sqlCom = new SqlCommand("INSERT INTO twitter_feeds (id,content,id_user,name_user,screen_name,user_location,profilebackgroundimageurl,visible,dia_id,created) OUTPUT inserted.id VALUES ('" + twt.Id + "','" + twt.Text.Replace('\'', '\"') + "','" + twt.User.Id + "','" + twt.User.Name + "','" + twt.User.ScreenName + "','" + twt.Location + "','" + twt.User.ProfileImageUrl + "',1," + dia + ",'" + twt.CreatedDate.ToString("yyyy-MM-dd HH:mm:ss") + "')", sqlCon);
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
            }
            catch (Exception ex)
            {
            }
        }
        public static void getSiteHashes()
        {
            string hash = "";
            try
            {
                string sConectionx = WebConfigurationManager.ConnectionStrings["ApplicationServices"].ConnectionString;
                using (SqlConnection sqlConx = new SqlConnection(sConectionx))
                {
                    SqlCommand sqlComx = new SqlCommand("select hashtag from cars", sqlConx);
                    sqlConx.Open();
                    SqlDataReader readerx = sqlComx.ExecuteReader();
                    while (readerx.Read())
                    {
                        hash = readerx[0].ToString();

                        int dia = 1;
                        string us = DateTime.Now.ToString(new CultureInfo("en-US"));
                        if (us.IndexOf("28/10/2012") > -1)
                        {
                            dia = 1;
                        }
                        if (us.IndexOf("29/10/2012") > -1)
                        {
                            dia = 2;
                        }
                        if (us.IndexOf("30/10/2012") > -1)
                        {
                            dia = 3;
                        }
                        if (us.IndexOf("31/10/2012") > -1)
                        {
                            dia = 4;
                        }
                        StringBuilder sb = new StringBuilder();
                        String thash = hash;
                        var service = new TwitterService("nk72ZvomNHmQOW0Cg8J4Cg", "bdZNfJrRfB78DTklxy12NuX7OB6wtBx5R0GJogUJvE");
                        service.AuthenticateWith("92536722-N5JD1f3n92tjkz9GaRcC6Kef4nPKck59aahGCg8G8", "0QaULsLK6gVTFDMN9Z4MwaqN7VrvedQTSz0Fo8mWcw");
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
                                    SqlCommand sqlCom = new SqlCommand("INSERT INTO twitter_feeds (id,content,id_user,name_user,screen_name,user_location,profilebackgroundimageurl,visible,dia_id,created) OUTPUT inserted.id VALUES ('" + twt.Id + "','" + twt.Text.Replace('\'', '\"') + "','" + twt.User.Id + "','" + twt.User.Name + "','" + twt.User.ScreenName + "','" + twt.Location + "','" + twt.User.ProfileImageUrl + "',1," + dia + ",'" + twt.CreatedDate.ToString("yyyy-MM-dd HH:mm:ss") + "')", sqlCon);
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
                    }
                    sqlConx.Close();
                }
            }
            catch (Exception ex)
            {
            }
        }
        // This method will be called when the thread is started. 
        public void DoWork()
        {
            while (!_shouldStop)
            {
                getUsersMedia();
                getUserTwitts();
                getMainHash();
                getSiteHashes();
            }
            Console.WriteLine("worker thread: terminating gracefully.");
        }
        public void RequestStop()
        {
            _shouldStop = true;
        }
        // Volatile is used as hint to the compiler that this data 
        // member will be accessed by multiple threads. 
        private volatile bool _shouldStop;
    }
    public class Global : HttpApplication
    {
        
        void Application_Start(object sender, EventArgs e)
        {
            BundleConfig.RegisterBundles(BundleTable.Bundles);
            AuthConfig.RegisterOpenAuth();
            /*Worker workerObject = new Worker();
            Thread workerThread = new Thread(workerObject.DoWork);
            workerThread.Start();
            while (!workerThread.IsAlive) ;
            Thread.Sleep(1000);
            workerObject.RequestStop();*/
        }

        void Application_End(object sender, EventArgs e)
        {
            //  Code that runs on application shutdown

        }

        void Application_Error(object sender, EventArgs e)
        {
            // Code that runs when an unhandled error occurs

        }
    }
}
