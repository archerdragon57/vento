using Skybrud.Social.Instagram;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Globalization;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.Script.Services;
using System.Web.Services;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Vento.RequestsSocials
{
    public partial class Instagram : System.Web.UI.Page
    {
        [WebMethod, ScriptMethod(ResponseFormat = ResponseFormat.Json, UseHttpGet = false)]
        public static List<string[]> getPhase3()
        {
            List<string[]> dataI = new List<string[]>();
            string sConection0 = WebConfigurationManager.ConnectionStrings["ApplicationServices"].ConnectionString;
            using (SqlConnection sqlCon0 = new SqlConnection(sConection0))
            {
                SqlCommand sqlCom0 = new SqlCommand("select InstagramFeeds.id,captiontext,like_count,link,normal,data_type,dato_id,location,instid,username from instagramfeeds join instagram_users on instagramfeeds.user_id=instagram_users.instid where instagramfeeds.id in (188,196,219,190,214,223,153,148,225,222,207,205) order by case instagramfeeds.id when 188 then 1 when 196 then 2 when 219 then 3 when 190 then 4 when 214 then 5 when 222 then 6 when 153 then 7 when 148 then 8 when 225 then 9 when 223 then 10 when 207 then 11 when 205 then 12 end", sqlCon0);
                sqlCon0.Open();
                SqlDataReader reader0 = sqlCom0.ExecuteReader();
                while (reader0.Read())
                {
                    string[] data_t = new string[10];
                    data_t[0] = "";
                    data_t[1] = "";
                    data_t[2] = "";
                    data_t[3] = "instagram";
                    data_t[4] = reader0[4].ToString();
                    data_t[5] = "";
                    data_t[6] = "";
                    data_t[7] = "";
                    data_t[8] = reader0[8].ToString();
                    data_t[9] = reader0[9].ToString();
                    dataI.Add(data_t);
                }
                sqlCon0.Close();
            }
            return dataI;
        }
        [WebMethod]
        public static List<List<string[]>> getLocations(int dia)
        {
            List<string[]> dataT = new List<string[]>();
            List<string[]> dataI = new List<string[]>();
            List<List<string[]>> data = new List<List<string[]>>();
            string sConection0 = WebConfigurationManager.ConnectionStrings["ApplicationServices"].ConnectionString;
            using (SqlConnection sqlCon0 = new SqlConnection(sConection0))
            {
                SqlCommand sqlCom0 = new SqlCommand("select id,captiontext,like_count,link,normal,data_type,dato_id,location,instid,username from instagramfeeds join instagram_users on instagramfeeds.user_id=instagram_users.instid where visible=1 and dia_id<='" + dia + "' and location is not null and location!='' order by dato_id desc", sqlCon0);
                sqlCon0.Open();
                SqlDataReader reader0 = sqlCom0.ExecuteReader();
                while (reader0.Read())
                {
                    string[] data_t = new string[10];
                    data_t[0] = reader0[1].ToString();
                    data_t[1] = reader0[2].ToString();
                    data_t[2] = reader0[3].ToString();
                    data_t[3] = "instagram";
                    data_t[4] = reader0[4].ToString();
                    data_t[5] = reader0[5].ToString();
                    data_t[6] = reader0[6].ToString();
                    data_t[7] = reader0[7].ToString();
                    data_t[8] = reader0[8].ToString();
                    data_t[9] = reader0[9].ToString();
                    //data.Add("['caption':'"+reader0[1]+"','likes':'"+reader0[2]+"','link':'"+reader0[3]+"','type':'instagram','image':'"+reader0[4]+"','data_type':'"+reader0[5]+"','location':'location']");
                    dataI.Add(data_t);
                }
                sqlCon0.Close();
            }
            using (SqlConnection sqlCon0 = new SqlConnection(sConection0))
            {
                SqlCommand sqlCom0 = new SqlCommand("select id,content,id_user,screen_name,user_location,profilebackgroundimageurl from twitter_feeds where visible=1 and dia_id <= '" + dia + "' and user_location is not null and user_location!='' order by id desc", sqlCon0);
                sqlCon0.Open();
                SqlDataReader reader0 = sqlCom0.ExecuteReader();
                while (reader0.Read())
                {
                    string[] data_t = new string[5];                    
                    data_t[0] = reader0[1].ToString(); ;
                    data_t[1]="twitter";
                    data_t[2] = reader0[3].ToString(); ;
                    data_t[3] = reader0[4].ToString();
                    data_t[4] = reader0[5].ToString();
                    //data.Add("['caption':'" + reader0[1] + "','type':'twitter','screen_name':'"+reader0[3]+"','location':'"+reader0[4]+"']");
                    dataT.Add(data_t);
                }
                sqlCon0.Close();
            }
            data.Add(dataT);
            data.Add(dataI);
            return data;
        }
        [WebMethod]
        public static Skybrud.Social.Instagram.Responses.InstagramMediaResponse GetCode(string code)
        {
            string instatoken = code.Substring(code.IndexOf("code=") + 5);
            try
            {
                InstagramService service = InstagramService.CreateFromAuthCode("681989a8c519487dadc104599ca8dbd0", "19b50b5b6a6245e99a7ae1d0ea16b149", "http://nuevovento.mx/RequestsSocials/Instagram.aspx", instatoken);
                string token = service.AccessToken;
                //Guardar token ver que más necesita el usuario
                int totalp = 0;
                string sConection0 = WebConfigurationManager.ConnectionStrings["ApplicationServices"].ConnectionString;
                using (SqlConnection sqlCon0 = new SqlConnection(sConection0))
                {
                    SqlCommand sqlCom0 = new SqlCommand("select count(id) as total from instagram_users where instid='" + service.CurrentUser.Id + "'", sqlCon0);
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
                        SqlCommand sqlCom = new SqlCommand("INSERT INTO instagram_users (instid,fullname,profilepic,username,code,token) OUTPUT inserted.id VALUES ('" + service.CurrentUser.Id+ "','"+service.CurrentUser.FullName+"','"+service.CurrentUser.ProfilePicture+"','"+service.CurrentUser.Username+"','"+instatoken+"','"+service.AccessToken+"')", sqlCon);
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
                        SqlCommand sqlCom = new SqlCommand("update instagram_users set token ='" + service.AccessToken + "',code='"+instatoken+"' where instid='" + service.CurrentUser.Id + "'", sqlCon);
                        sqlCon.Open();
                        SqlDataReader reader = sqlCom.ExecuteReader();
                        while (reader.Read())
                        {
                            //sb.Append(Convert.ToString(reader[0]));
                        }
                        sqlCon.Close();
                    }
                }
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
                var media = service.Endpoints.Users.GetMedia(service.CurrentUser.Id,10);
                foreach (var img in media.Images)
                {
                    totalp = 0;
                    string sConection1 = WebConfigurationManager.ConnectionStrings["ApplicationServices"].ConnectionString;
                    using (SqlConnection sqlCon1 = new SqlConnection(sConection1))
                    {
                        SqlCommand sqlCom0 = new SqlCommand("select count(id) as total from InstagramFeeds where dato_id='" + img.Id + "'", sqlCon1);
                        sqlCon1.Open();
                        SqlDataReader reader1 = sqlCom0.ExecuteReader();
                        while (reader1.Read())
                        {
                            totalp = Convert.ToInt16(reader1[0]);
                        }
                        sqlCon1.Close();
                    }
                    if (totalp < 1)
                    {
                        string sConection2 = WebConfigurationManager.ConnectionStrings["ApplicationServices"].ConnectionString;
                        using (SqlConnection sqlCon2 = new SqlConnection(sConection2))
                        {
                            SqlCommand sqlCom2 = new SqlCommand("INSERT INTO instagramfeeds (captiontext,filter,dato_id,like_count,link,location,lowres,normal,thumbnail,data_type,dia_id,visible) OUTPUT inserted.id VALUES ('" + img.CaptionText + "','" + img.Filter + "','" + img.Id + "'," + img.LikeCount + ",'" + img.Link + "','" + img.Location.Latitude.ToString() + "," + img.Location.Longitude.ToString() + "','" + img.LowRes + "','" + img.Standard + "','" + img.Thumbnail + "','" + img.Type + "'," + dia + ",1)", sqlCon2);
                            sqlCon2.Open();
                            SqlDataReader reader = sqlCom2.ExecuteReader();
                            while (reader.Read())
                            {
                                //sb.Append(Convert.ToString(reader[0]));
                            }
                            sqlCon2.Close();
                        }
                    }
                    else
                    {
                        string sConection3 = WebConfigurationManager.ConnectionStrings["ApplicationServices"].ConnectionString;
                        using (SqlConnection sqlCon3 = new SqlConnection(sConection3))
                        {
                            SqlCommand sqlCom3 = new SqlCommand("update instagramfeeds set like_count ='" + img.LikeCount + "' where dato_id='" + img.Id + "'", sqlCon3);
                            sqlCon3.Open();
                            SqlDataReader reader3 = sqlCom3.ExecuteReader();
                            while (reader3.Read())
                            {
                                //sb.Append(Convert.ToString(reader[0]));
                            }
                            sqlCon3.Close();
                        }
                    }
                }
                foreach (var vid in media.Videos)
                {
                    totalp = 0;
                    string sConection4 = WebConfigurationManager.ConnectionStrings["ApplicationServices"].ConnectionString;
                    using (SqlConnection sqlCon4 = new SqlConnection(sConection4))
                    {
                        SqlCommand sqlCom4 = new SqlCommand("select count(id) as total from InstagramFeeds where dato_id='" + vid.Id + "'", sqlCon4);
                        sqlCon4.Open();
                        SqlDataReader reader4 = sqlCom4.ExecuteReader();
                        while (reader4.Read())
                        {
                            totalp = Convert.ToInt16(reader4[0]);
                        }
                        sqlCon4.Close();
                    }
                    if (totalp < 1)
                    {
                        string sConection5 = WebConfigurationManager.ConnectionStrings["ApplicationServices"].ConnectionString;
                        using (SqlConnection sqlCon5 = new SqlConnection(sConection5))
                        {
                            SqlCommand sqlCom5 = new SqlCommand("INSERT INTO instagramfeeds (captiontext,filter,dato_id,like_count,link,location,lowres,normal,thumbnail,data_type,dia_id,visible) OUTPUT inserted.id VALUES ('" + vid.CaptionText + "','" + vid.Filter + "','" + vid.Id + "'," + vid.LikeCount + ",'" + vid.Videos.StandardResolution.Url + "','" + vid.Location.Latitude.ToString() + "," + vid.Location.Longitude.ToString()+"','" + vid.LowRes + "','" + vid.Standard + "','" + vid.Thumbnail + "','" + vid.Type + "'," + dia + ",1)", sqlCon5);
                            sqlCon5.Open();
                            SqlDataReader reader5 = sqlCom5.ExecuteReader();
                            while (reader5.Read())
                            {
                                //sb.Append(Convert.ToString(reader[0]));
                            }
                            sqlCon5.Close();
                        }
                    }
                    else
                    {
                        string sConection6 = WebConfigurationManager.ConnectionStrings["ApplicationServices"].ConnectionString;
                        using (SqlConnection sqlCon6 = new SqlConnection(sConection6))
                        {
                            SqlCommand sqlCom6 = new SqlCommand("update instagramfeeds set like_count ='" + vid.LikeCount + "' where dato_id='" + vid.Id + "'", sqlCon6);
                            sqlCon6.Open();
                            SqlDataReader reader6 = sqlCom6.ExecuteReader();
                            while (reader6.Read())
                            {
                                //sb.Append(Convert.ToString(reader[0]));
                            }
                            sqlCon6.Close();
                        }
                    }
                }
                return media;
            }
            catch (Exception)
            {
                return null;
            }
        }
        [WebMethod]
        public static void getMedia(string instatoken)
        {
            InstagramService service = InstagramService.CreateFromAccessToken(instatoken);
            var media = service.Endpoints.Users.GetMedia(34655664);
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
                        SqlCommand sqlCom = new SqlCommand("INSERT INTO instagramfeeds (captiontext,filter,dato_id,like_count,link,location,lowres,normal,thumbnail,data_type,dia_id,visible) OUTPUT inserted.id VALUES ('" + img.CaptionText + "','" + img.Filter + "','" + img.Id + "'," + img.LikeCount + ",'" + img.Link + "','" + img.Location.Latitude.ToString() + "," + img.Location.Longitude.ToString()  +"','" + img.LowRes + "','" + img.Standard + "','" + img.Thumbnail + "','" + img.Type + "'," + dia + ",1)", sqlCon);
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
                        SqlCommand sqlCom = new SqlCommand("INSERT INTO instagramfeeds (captiontext,filter,dato_id,like_count,link,location,lowres,normal,thumbnail,data_type,dia_id,visible) OUTPUT inserted.id VALUES ('" + vid.CaptionText + "','" + vid.Filter + "','" + vid.Id + "'," + vid.LikeCount + ",'" + vid.Link + "','" +vid.Location.Latitude.ToString() + "," + vid.Location.Longitude.ToString() + "','" + vid.LowRes + "','" + vid.Standard + "','" + vid.Thumbnail + "','" + vid.Type + "'," + dia + ",1)", sqlCon);
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
        //[WebMethod]
        //public static void getUsersMedia()
        //{
        //    string token = "";
        //    string id = "";
        //    try
        //    {
        //        string sConectionx = WebConfigurationManager.ConnectionStrings["ApplicationServices"].ConnectionString;
        //        using (SqlConnection sqlConx = new SqlConnection(sConectionx))
        //        {
        //            SqlCommand sqlComx = new SqlCommand("select instid from instagram_users", sqlConx);
        //            sqlConx.Open();
        //            SqlDataReader readerx = sqlComx.ExecuteReader();
        //            while (readerx.Read())
        //            {
        //                id = readerx[0].ToString();
        //                token = readerx[1].ToString();
        //                InstagramService service = InstagramService.CreateFromAccessToken(token);
        //                var media = service.Endpoints.Users.GetMedia(Convert.ToUInt32(id));
        //                int dia = 1;
        //                string us = DateTime.Now.ToString(new CultureInfo("en-US"));
        //                if (us.IndexOf("28/10/2012") > -1)
        //                {
        //                    dia = 1;
        //                }
        //                if (us.IndexOf("29/10/2012") > -1)
        //                {
        //                    dia = 2;
        //                }
        //                if (us.IndexOf("30/10/2012") > -1)
        //                {
        //                    dia = 3;
        //                }
        //                if (us.IndexOf("31/10/2012") > -1)
        //                {
        //                    dia = 4;
        //                }
        //                foreach (var img in media.Images)
        //                {
        //                    int totalp = 0;
        //                    string sConection0 = WebConfigurationManager.ConnectionStrings["ApplicationServices"].ConnectionString;
        //                    using (SqlConnection sqlCon0 = new SqlConnection(sConection0))
        //                    {
        //                        SqlCommand sqlCom0 = new SqlCommand("select count(id) as total from InstagramFeeds where dato_id='" + img.Id + "'", sqlCon0);
        //                        sqlCon0.Open();
        //                        SqlDataReader reader0 = sqlCom0.ExecuteReader();
        //                        while (reader0.Read())
        //                        {
        //                            totalp = Convert.ToInt16(reader0[0]);
        //                        }
        //                        sqlCon0.Close();
        //                    }
        //                    if (totalp < 1)
        //                    {
        //                        string sConection = WebConfigurationManager.ConnectionStrings["ApplicationServices"].ConnectionString;
        //                        using (SqlConnection sqlCon = new SqlConnection(sConection))
        //                        {
        //                            SqlCommand sqlCom = new SqlCommand("INSERT INTO instagramfeeds (captiontext,filter,dato_id,like_count,link,location,lowres,normal,thumbnail,data_type,dia_id,created) OUTPUT inserted.id VALUES ('" + img.CaptionText + "','" + img.Filter + "','" + img.Id + "'," + img.LikeCount + ",'" + img.Link + "','" + img.Location + "','" + img.LowRes + "','" + img.Standard + "','" + img.Thumbnail + "','" + img.Type + "'," + dia + ",'" + img.Created + "')", sqlCon);
        //                            sqlCon.Open();
        //                            SqlDataReader reader = sqlCom.ExecuteReader();
        //                            while (reader.Read())
        //                            {
        //                                //sb.Append(Convert.ToString(reader[0]));
        //                            }
        //                            sqlCon.Close();
        //                        }
        //                    }
        //                    else
        //                    {
        //                        string sConection = WebConfigurationManager.ConnectionStrings["ApplicationServices"].ConnectionString;
        //                        using (SqlConnection sqlCon = new SqlConnection(sConection))
        //                        {
        //                            SqlCommand sqlCom = new SqlCommand("update instagramfeeds set like_count ='" + img.LikeCount + "' where dato_id='" + img.Id + "'", sqlCon);
        //                            sqlCon.Open();
        //                            SqlDataReader reader = sqlCom.ExecuteReader();
        //                            while (reader.Read())
        //                            {
        //                                //sb.Append(Convert.ToString(reader[0]));
        //                            }
        //                            sqlCon.Close();
        //                        }
        //                    }
        //                }
        //                foreach (var vid in media.Videos)
        //                {
        //                    int totalp = 0;
        //                    string sConection0 = WebConfigurationManager.ConnectionStrings["ApplicationServices"].ConnectionString;
        //                    using (SqlConnection sqlCon0 = new SqlConnection(sConection0))
        //                    {
        //                        SqlCommand sqlCom0 = new SqlCommand("select count(id) as total from InstagramFeeds where dato_id='" + vid.Id + "'", sqlCon0);
        //                        sqlCon0.Open();
        //                        SqlDataReader reader0 = sqlCom0.ExecuteReader();
        //                        while (reader0.Read())
        //                        {
        //                            totalp = Convert.ToInt16(reader0[0]);
        //                        }
        //                        sqlCon0.Close();
        //                    }
        //                    if (totalp < 1)
        //                    {
        //                        string sConection = WebConfigurationManager.ConnectionStrings["ApplicationServices"].ConnectionString;
        //                        using (SqlConnection sqlCon = new SqlConnection(sConection))
        //                        {
        //                            SqlCommand sqlCom = new SqlCommand("INSERT INTO instagramfeeds (captiontext,filter,dato_id,like_count,link,location,lowres,normal,thumbnail,data_type,dia_id,created) OUTPUT inserted.id VALUES ('" + vid.CaptionText + "','" + vid.Filter + "','" + vid.Id + "'," + vid.LikeCount + ",'" + vid.Link + "','" + vid.Location + "','" + vid.LowRes + "','" + vid.Standard + "','" + vid.Thumbnail + "','" + vid.Type + "'," + dia + ",'" + vid.Created + "')", sqlCon);
        //                            sqlCon.Open();
        //                            SqlDataReader reader = sqlCom.ExecuteReader();
        //                            while (reader.Read())
        //                            {
        //                                //sb.Append(Convert.ToString(reader[0]));
        //                            }
        //                            sqlCon.Close();
        //                        }
        //                    }
        //                    else
        //                    {
        //                        string sConection = WebConfigurationManager.ConnectionStrings["ApplicationServices"].ConnectionString;
        //                        using (SqlConnection sqlCon = new SqlConnection(sConection))
        //                        {
        //                            SqlCommand sqlCom = new SqlCommand("update instagramfeeds set like_count ='" + vid.LikeCount + "' where dato_id='" + vid.Id + "'", sqlCon);
        //                            sqlCon.Open();
        //                            SqlDataReader reader = sqlCom.ExecuteReader();
        //                            while (reader.Read())
        //                            {
        //                                //sb.Append(Convert.ToString(reader[0]));
        //                            }
        //                            sqlCon.Close();
        //                        }
        //                    }
        //                }
        //            }
        //        }
        //    }
        //    catch (Exception ex)
        //    { }
        //}
        protected void Page_Load(object sender, EventArgs e)
        {

        }
    }
}