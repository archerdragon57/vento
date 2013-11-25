using Skybrud.Social.Instagram;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Globalization;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.Configuration;
using System.Web.Services;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Vento.RequestsSocials
{
    public partial class InstaFeeds : System.Web.UI.Page
    {
        [WebMethod]
        public static Skybrud.Social.Instagram.Responses.InstagramMediaResponse getUserF1()
        {
            InstagramService service = InstagramService.CreateFromAccessToken("9059793.681989a.8e2d98b694c64141af7e22efb70c8f11");
            var media = service.Endpoints.Users.GetMedia(9059793);
            int dia = 1;
            string us = DateTime.Now.ToString(new CultureInfo("en-US"));
            if (us.IndexOf("28/10/2012") > -1)
            {
                dia = 1;
            }
            if (us.IndexOf("29/10/2012") > -1)
            {
                dia = 1;
            }
            if (us.IndexOf("30/10/2012") > -1)
            {
                dia = 2;
            }
            if (us.IndexOf("31/10/2012") > -1)
            {
                dia = 3;
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
                        SqlCommand sqlCom = new SqlCommand("INSERT INTO instagramfeeds (captiontext,filter,dato_id,like_count,link,location,lowres,normal,thumbnail,data_type,dia_id,created) OUTPUT inserted.id VALUES ('" + img.CaptionText + "','" + img.Filter + "','" + img.Id + "'," + img.LikeCount + ",'" + img.Link + "','" + img.Location.ToString() + "','" + img.LowRes + "','" + img.Standard + "','" + img.Thumbnail + "','" + img.Type + "'," + dia + ",'" + img.Created + "',1)", sqlCon);
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
                        SqlCommand sqlCom5 = new SqlCommand("INSERT INTO instagramfeeds (captiontext,filter,dato_id,like_count,link,location,lowres,normal,thumbnail,data_type,dia_id,visible) OUTPUT inserted.id VALUES ('" + vid.CaptionText + "','" + vid.Filter + "','" + vid.Id + "'," + vid.LikeCount + ",'" + vid.Videos.StandardResolution.Url + "','" + vid.Location.ToString() + "','" + vid.LowRes + "','" + vid.Standard + "','" + vid.Thumbnail + "','" + vid.Type + "'," + dia + ",1)", sqlCon);
                        sqlCon.Open();
                        SqlDataReader reader = sqlCom5.ExecuteReader();
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
            return media;
        }
        [WebMethod]
        public static Skybrud.Social.Instagram.Responses.InstagramMediaResponse getUserF2()
        {
            InstagramService service = InstagramService.CreateFromAccessToken("629710776.681989a.47f7417c37884e6096338480f2c69b3f");
            var media = service.Endpoints.Users.GetMedia(629710776);
            int dia = 1;
            string us = DateTime.Now.ToString(new CultureInfo("en-US"));
            if (us.IndexOf("28/10/2012") > -1)
            {
                dia = 1;
            }
            if (us.IndexOf("29/10/2012") > -1)
            {
                dia = 1;
            }
            if (us.IndexOf("30/10/2012") > -1)
            {
                dia = 2;
            }
            if (us.IndexOf("31/10/2012") > -1)
            {
                dia = 3;
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
                        SqlCommand sqlCom = new SqlCommand("INSERT INTO instagramfeeds (captiontext,filter,dato_id,like_count,link,location,lowres,normal,thumbnail,data_type,dia_id,created) OUTPUT inserted.id VALUES ('" + img.CaptionText + "','" + img.Filter + "','" + img.Id + "'," + img.LikeCount + ",'" + img.Link + "','" + img.Location.ToString() + "','" + img.LowRes + "','" + img.Standard + "','" + img.Thumbnail + "','" + img.Type + "'," + dia + ",'" + img.Created + "',1)", sqlCon);
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
                        SqlCommand sqlCom5 = new SqlCommand("INSERT INTO instagramfeeds (captiontext,filter,dato_id,like_count,link,location,lowres,normal,thumbnail,data_type,dia_id,visible) OUTPUT inserted.id VALUES ('" + vid.CaptionText + "','" + vid.Filter + "','" + vid.Id + "'," + vid.LikeCount + ",'" + vid.Videos.StandardResolution.Url + "','" + vid.Location.ToString() + "','" + vid.LowRes + "','" + vid.Standard + "','" + vid.Thumbnail + "','" + vid.Type + "'," + dia + ",1)", sqlCon);
                        sqlCon.Open();
                        SqlDataReader reader = sqlCom5.ExecuteReader();
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
            return media;
        }
        [WebMethod]
        public static Skybrud.Social.Instagram.Responses.InstagramMediaResponse getUserF3()
        {
            InstagramService service = InstagramService.CreateFromAccessToken("576322979.681989a.1b9d813b5d7849e7b0ae8a154bf9ebe1");
            var media = service.Endpoints.Users.GetMedia(576322979);
            int dia = 1;
            string us = DateTime.Now.ToString(new CultureInfo("en-US"));
            if (us.IndexOf("28/10/2012") > -1)
            {
                dia = 1;
            }
            if (us.IndexOf("29/10/2012") > -1)
            {
                dia = 1;
            }
            if (us.IndexOf("30/10/2012") > -1)
            {
                dia = 2;
            }
            if (us.IndexOf("31/10/2012") > -1)
            {
                dia = 3;
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
                        SqlCommand sqlCom = new SqlCommand("INSERT INTO instagramfeeds (captiontext,filter,dato_id,like_count,link,location,lowres,normal,thumbnail,data_type,dia_id,created) OUTPUT inserted.id VALUES ('" + img.CaptionText + "','" + img.Filter + "','" + img.Id + "'," + img.LikeCount + ",'" + img.Link + "','" + img.Location.ToString() + "','" + img.LowRes + "','" + img.Standard + "','" + img.Thumbnail + "','" + img.Type + "'," + dia + ",'" + img.Created + "',1)", sqlCon);
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
                        SqlCommand sqlCom5 = new SqlCommand("INSERT INTO instagramfeeds (captiontext,filter,dato_id,like_count,link,location,lowres,normal,thumbnail,data_type,dia_id,visible) OUTPUT inserted.id VALUES ('" + vid.CaptionText + "','" + vid.Filter + "','" + vid.Id + "'," + vid.LikeCount + ",'" + vid.Videos.StandardResolution.Url + "','" + vid.Location.ToString() + "','" + vid.LowRes + "','" + vid.Standard + "','" + vid.Thumbnail + "','" + vid.Type + "'," + dia + ",1)", sqlCon);
                        sqlCon.Open();
                        SqlDataReader reader = sqlCom5.ExecuteReader();
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
            return media;
        }
        [WebMethod]
        public static Skybrud.Social.Instagram.Responses.InstagramMediaResponse getUserF4()
        {
            InstagramService service = InstagramService.CreateFromAccessToken("199877291.681989a.d4b43c26cb9b4bc0b695ad6729dbf77e");
            var media = service.Endpoints.Users.GetMedia(199877291);
            int dia = 1;
            string us = DateTime.Now.ToString(new CultureInfo("en-US"));
            if (us.IndexOf("28/10/2012") > -1)
            {
                dia = 1;
            }
            if (us.IndexOf("29/10/2012") > -1)
            {
                dia = 1;
            }
            if (us.IndexOf("30/10/2012") > -1)
            {
                dia = 2;
            }
            if (us.IndexOf("31/10/2012") > -1)
            {
                dia = 3;
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
                        SqlCommand sqlCom = new SqlCommand("INSERT INTO instagramfeeds (captiontext,filter,dato_id,like_count,link,location,lowres,normal,thumbnail,data_type,dia_id,created) OUTPUT inserted.id VALUES ('" + img.CaptionText + "','" + img.Filter + "','" + img.Id + "'," + img.LikeCount + ",'" + img.Link + "','" + img.Location.ToString() + "','" + img.LowRes + "','" + img.Standard + "','" + img.Thumbnail + "','" + img.Type + "'," + dia + ",'" + img.Created + "',1)", sqlCon);
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
                        SqlCommand sqlCom5 = new SqlCommand("INSERT INTO instagramfeeds (captiontext,filter,dato_id,like_count,link,location,lowres,normal,thumbnail,data_type,dia_id,visible) OUTPUT inserted.id VALUES ('" + vid.CaptionText + "','" + vid.Filter + "','" + vid.Id + "'," + vid.LikeCount + ",'" + vid.Videos.StandardResolution.Url + "','" + vid.Location.ToString() + "','" + vid.LowRes + "','" + vid.Standard + "','" + vid.Thumbnail + "','" + vid.Type + "'," + dia + ",1)", sqlCon);
                        sqlCon.Open();
                        SqlDataReader reader = sqlCom5.ExecuteReader();
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
            return media;
        }
        [WebMethod]
        public static Skybrud.Social.Instagram.Responses.InstagramMediaResponse getUserF5()
        {
            InstagramService service = InstagramService.CreateFromAccessToken("9059793.681989a.8e2d98b694c64141af7e22efb70c8f11");
            var media = service.Endpoints.Users.GetMedia(9059793);
            int dia = 1;
            string us = DateTime.Now.ToString(new CultureInfo("en-US"));
            if (us.IndexOf("28/10/2012") > -1)
            {
                dia = 1;
            }
            if (us.IndexOf("29/10/2012") > -1)
            {
                dia = 1;
            }
            if (us.IndexOf("30/10/2012") > -1)
            {
                dia = 2;
            }
            if (us.IndexOf("31/10/2012") > -1)
            {
                dia = 3;
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
                        SqlCommand sqlCom = new SqlCommand("INSERT INTO instagramfeeds (captiontext,filter,dato_id,like_count,link,location,lowres,normal,thumbnail,data_type,dia_id,created) OUTPUT inserted.id VALUES ('" + img.CaptionText + "','" + img.Filter + "','" + img.Id + "'," + img.LikeCount + ",'" + img.Link + "','" + img.Location.ToString() + "','" + img.LowRes + "','" + img.Standard + "','" + img.Thumbnail + "','" + img.Type + "'," + dia + ",'" + img.Created + "',1)", sqlCon);
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
                        SqlCommand sqlCom5 = new SqlCommand("INSERT INTO instagramfeeds (captiontext,filter,dato_id,like_count,link,location,lowres,normal,thumbnail,data_type,dia_id,visible) OUTPUT inserted.id VALUES ('" + vid.CaptionText + "','" + vid.Filter + "','" + vid.Id + "'," + vid.LikeCount + ",'" + vid.Videos.StandardResolution.Url + "','" + vid.Location.ToString() + "','" + vid.LowRes + "','" + vid.Standard + "','" + vid.Thumbnail + "','" + vid.Type + "'," + dia + ",1)", sqlCon);
                        sqlCon.Open();
                        SqlDataReader reader = sqlCom5.ExecuteReader();
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
            return media;
        }
        [WebMethod]
        public static Skybrud.Social.Instagram.Responses.InstagramMediaResponse getUserF6()
        {
            InstagramService service = InstagramService.CreateFromAccessToken("34593797.681989a.875cfff41421487c9441a42032d3408d");
            var media = service.Endpoints.Users.GetMedia(34593797);
            int dia = 1;
            string us = DateTime.Now.ToString(new CultureInfo("en-US"));
            if (us.IndexOf("28/10/2012") > -1)
            {
                dia = 1;
            }
            if (us.IndexOf("29/10/2012") > -1)
            {
                dia = 1;
            }
            if (us.IndexOf("30/10/2012") > -1)
            {
                dia = 2;
            }
            if (us.IndexOf("31/10/2012") > -1)
            {
                dia = 3;
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
                        SqlCommand sqlCom = new SqlCommand("INSERT INTO instagramfeeds (captiontext,filter,dato_id,like_count,link,location,lowres,normal,thumbnail,data_type,dia_id,created) OUTPUT inserted.id VALUES ('" + img.CaptionText + "','" + img.Filter + "','" + img.Id + "'," + img.LikeCount + ",'" + img.Link + "','" + img.Location.ToString() + "','" + img.LowRes + "','" + img.Standard + "','" + img.Thumbnail + "','" + img.Type + "'," + dia + ",'" + img.Created + "',1)", sqlCon);
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
                        SqlCommand sqlCom5 = new SqlCommand("INSERT INTO instagramfeeds (captiontext,filter,dato_id,like_count,link,location,lowres,normal,thumbnail,data_type,dia_id,visible) OUTPUT inserted.id VALUES ('" + vid.CaptionText + "','" + vid.Filter + "','" + vid.Id + "'," + vid.LikeCount + ",'" + vid.Videos.StandardResolution.Url + "','" + vid.Location.ToString() + "','" + vid.LowRes + "','" + vid.Standard + "','" + vid.Thumbnail + "','" + vid.Type + "'," + dia + ",1)", sqlCon);
                        sqlCon.Open();
                        SqlDataReader reader = sqlCom5.ExecuteReader();
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
            return media;
        }
        [WebMethod]
        public static Skybrud.Social.Instagram.Responses.InstagramMediaResponse getUserF7()
        {
            InstagramService service = InstagramService.CreateFromAccessToken("30618688.681989a.2bc36a1470f5477eb4f20ed2448f6c31");
            var media = service.Endpoints.Users.GetMedia(30618688);
            int dia = 1;
            string us = DateTime.Now.ToString(new CultureInfo("en-US"));
            if (us.IndexOf("28/10/2012") > -1)
            {
                dia = 1;
            }
            if (us.IndexOf("29/10/2012") > -1)
            {
                dia = 1;
            }
            if (us.IndexOf("30/10/2012") > -1)
            {
                dia = 2;
            }
            if (us.IndexOf("31/10/2012") > -1)
            {
                dia = 3;
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
                        SqlCommand sqlCom = new SqlCommand("INSERT INTO instagramfeeds (captiontext,filter,dato_id,like_count,link,location,lowres,normal,thumbnail,data_type,dia_id,created) OUTPUT inserted.id VALUES ('" + img.CaptionText + "','" + img.Filter + "','" + img.Id + "'," + img.LikeCount + ",'" + img.Link + "','" + img.Location.ToString() + "','" + img.LowRes + "','" + img.Standard + "','" + img.Thumbnail + "','" + img.Type + "'," + dia + ",'" + img.Created + "',1)", sqlCon);
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
                        SqlCommand sqlCom5 = new SqlCommand("INSERT INTO instagramfeeds (captiontext,filter,dato_id,like_count,link,location,lowres,normal,thumbnail,data_type,dia_id,visible) OUTPUT inserted.id VALUES ('" + vid.CaptionText + "','" + vid.Filter + "','" + vid.Id + "'," + vid.LikeCount + ",'" + vid.Videos.StandardResolution.Url + "','" + vid.Location.ToString() + "','" + vid.LowRes + "','" + vid.Standard + "','" + vid.Thumbnail + "','" + vid.Type + "'," + dia + ",1)", sqlCon);
                        sqlCon.Open();
                        SqlDataReader reader = sqlCom5.ExecuteReader();
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
            return media;
        }
        [WebMethod]
        public static Skybrud.Social.Instagram.Responses.InstagramMediaResponse getUserF8()
        {
            InstagramService service = InstagramService.CreateFromAccessToken("343427541.681989a.9e1666946adc47789a9328859f74992e");
            var media = service.Endpoints.Users.GetMedia(343427541);
            int dia = 1;
            string us = DateTime.Now.ToString(new CultureInfo("en-US"));
            if (us.IndexOf("28/10/2012") > -1)
            {
                dia = 1;
            }
            if (us.IndexOf("29/10/2012") > -1)
            {
                dia = 1;
            }
            if (us.IndexOf("30/10/2012") > -1)
            {
                dia = 2;
            }
            if (us.IndexOf("31/10/2012") > -1)
            {
                dia = 3;
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
                        SqlCommand sqlCom = new SqlCommand("INSERT INTO instagramfeeds (captiontext,filter,dato_id,like_count,link,location,lowres,normal,thumbnail,data_type,dia_id,created) OUTPUT inserted.id VALUES ('" + img.CaptionText + "','" + img.Filter + "','" + img.Id + "'," + img.LikeCount + ",'" + img.Link + "','" + img.Location.ToString() + "','" + img.LowRes + "','" + img.Standard + "','" + img.Thumbnail + "','" + img.Type + "'," + dia + ",'" + img.Created + "',1)", sqlCon);
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
                        SqlCommand sqlCom5 = new SqlCommand("INSERT INTO instagramfeeds (captiontext,filter,dato_id,like_count,link,location,lowres,normal,thumbnail,data_type,dia_id,visible) OUTPUT inserted.id VALUES ('" + vid.CaptionText + "','" + vid.Filter + "','" + vid.Id + "'," + vid.LikeCount + ",'" + vid.Videos.StandardResolution.Url + "','" + vid.Location.ToString() + "','" + vid.LowRes + "','" + vid.Standard + "','" + vid.Thumbnail + "','" + vid.Type + "'," + dia + ",1)", sqlCon);
                        sqlCon.Open();
                        SqlDataReader reader = sqlCom5.ExecuteReader();
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
            return media;
        }
        [WebMethod]
        public static Skybrud.Social.Instagram.Responses.InstagramMediaResponse getUserF9()
        {
            InstagramService service = InstagramService.CreateFromAccessToken("34258126.681989a.90d7e391c0fc4694a9856ee5ec6960b4");
            var media = service.Endpoints.Users.GetMedia(34258126);
            int dia = 1;
            string us = DateTime.Now.ToString(new CultureInfo("en-US"));
            if (us.IndexOf("28/10/2012") > -1)
            {
                dia = 1;
            }
            if (us.IndexOf("29/10/2012") > -1)
            {
                dia = 1;
            }
            if (us.IndexOf("30/10/2012") > -1)
            {
                dia = 2;
            }
            if (us.IndexOf("31/10/2012") > -1)
            {
                dia = 3;
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
                        SqlCommand sqlCom = new SqlCommand("INSERT INTO instagramfeeds (captiontext,filter,dato_id,like_count,link,location,lowres,normal,thumbnail,data_type,dia_id,created) OUTPUT inserted.id VALUES ('" + img.CaptionText + "','" + img.Filter + "','" + img.Id + "'," + img.LikeCount + ",'" + img.Link + "','" + img.Location.ToString() + "','" + img.LowRes + "','" + img.Standard + "','" + img.Thumbnail + "','" + img.Type + "'," + dia + ",'" + img.Created + "',1)", sqlCon);
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
                        SqlCommand sqlCom5 = new SqlCommand("INSERT INTO instagramfeeds (captiontext,filter,dato_id,like_count,link,location,lowres,normal,thumbnail,data_type,dia_id,visible) OUTPUT inserted.id VALUES ('" + vid.CaptionText + "','" + vid.Filter + "','" + vid.Id + "'," + vid.LikeCount + ",'" + vid.Videos.StandardResolution.Url + "','" + vid.Location.ToString() + "','" + vid.LowRes + "','" + vid.Standard + "','" + vid.Thumbnail + "','" + vid.Type + "'," + dia + ",1)", sqlCon);
                        sqlCon.Open();
                        SqlDataReader reader = sqlCom5.ExecuteReader();
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
            return media;
        }
        [WebMethod]
        public static Skybrud.Social.Instagram.Responses.InstagramMediaResponse getUserF10()
        {
            InstagramService service = InstagramService.CreateFromAccessToken("1103722.681989a.ea9b903df5944908afb2627b8b2e9380");
            var media = service.Endpoints.Users.GetMedia(1103722);
            int dia = 1;
            string us = DateTime.Now.ToString(new CultureInfo("en-US"));
            if (us.IndexOf("28/10/2012") > -1)
            {
                dia = 1;
            }
            if (us.IndexOf("29/10/2012") > -1)
            {
                dia = 1;
            }
            if (us.IndexOf("30/10/2012") > -1)
            {
                dia = 2;
            }
            if (us.IndexOf("31/10/2012") > -1)
            {
                dia = 3;
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
                        SqlCommand sqlCom = new SqlCommand("INSERT INTO instagramfeeds (captiontext,filter,dato_id,like_count,link,location,lowres,normal,thumbnail,data_type,dia_id,created) OUTPUT inserted.id VALUES ('" + img.CaptionText + "','" + img.Filter + "','" + img.Id + "'," + img.LikeCount + ",'" + img.Link + "','" + img.Location.ToString() + "','" + img.LowRes + "','" + img.Standard + "','" + img.Thumbnail + "','" + img.Type + "'," + dia + ",'" + img.Created + "',1)", sqlCon);
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
                        SqlCommand sqlCom5 = new SqlCommand("INSERT INTO instagramfeeds (captiontext,filter,dato_id,like_count,link,location,lowres,normal,thumbnail,data_type,dia_id,visible) OUTPUT inserted.id VALUES ('" + vid.CaptionText + "','" + vid.Filter + "','" + vid.Id + "'," + vid.LikeCount + ",'" + vid.Videos.StandardResolution.Url + "','" + vid.Location.ToString() + "','" + vid.LowRes + "','" + vid.Standard + "','" + vid.Thumbnail + "','" + vid.Type + "'," + dia + ",1)", sqlCon);
                        sqlCon.Open();
                        SqlDataReader reader = sqlCom5.ExecuteReader();
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
            return media;
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            string token = "";
            string id = "";
            try
            {
                string sConectionx = WebConfigurationManager.ConnectionStrings["ApplicationServices"].ConnectionString;
                using (SqlConnection sqlConx = new SqlConnection(sConectionx))
                {
                    SqlCommand sqlComx = new SqlCommand("select instid from instagram_users", sqlConx);
                    sqlConx.Open();
                    SqlDataReader readerx = sqlComx.ExecuteReader();
                    while (readerx.Read())
                    {
                        id = readerx[0].ToString();
                        token = readerx[1].ToString();
                        InstagramService service = InstagramService.CreateFromAccessToken(token);
                        var media = service.Endpoints.Users.GetMedia(Convert.ToUInt32(id));
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
                                    SqlCommand sqlCom = new SqlCommand("INSERT INTO instagramfeeds (captiontext,filter,dato_id,like_count,link,location,lowres,normal,thumbnail,data_type,dia_id,visible) OUTPUT inserted.id VALUES ('" + img.CaptionText + "','" + img.Filter + "','" + img.Id + "'," + img.LikeCount + ",'" + img.Link + "','" + img.Location.ToString() + "','" + img.LowRes + "','" + img.Standard + "','" + img.Thumbnail + "','" + img.Type + "'," + dia + ",1)", sqlCon);
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
                                    SqlCommand sqlCom = new SqlCommand("INSERT INTO instagramfeeds (captiontext,filter,dato_id,like_count,link,location,lowres,normal,thumbnail,data_type,dia_id,visible) OUTPUT inserted.id VALUES ('" + vid.CaptionText + "','" + vid.Filter + "','" + vid.Id + "'," + vid.LikeCount + ",'" + vid.Link + "','" + vid.Location.ToString() + "','" + vid.LowRes + "','" + vid.Standard + "','" + vid.Thumbnail + "','" + vid.Type + "'," + dia + ",1)", sqlCon);
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
    }
}