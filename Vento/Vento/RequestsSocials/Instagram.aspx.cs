using Skybrud.Social.Instagram;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Globalization;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.Services;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Vento.RequestsSocials
{
    public partial class Instagram : System.Web.UI.Page
    {
        [WebMethod]
        public static Skybrud.Social.Instagram.Responses.InstagramMediaResponse GetCode(string code)
        {
            string instatoken = code.Substring(code.IndexOf("code=") + 5);
            try
            {
                InstagramService service = InstagramService.CreateFromAuthCode("681989a8c519487dadc104599ca8dbd0", "19b50b5b6a6245e99a7ae1d0ea16b149", "http://nuevovento.mx/RequestsSocials/Instagram.aspx", instatoken);
                string token = service.AccessToken;
                //Guardar token ver que más necesita el usuario
                var media = service.Endpoints.Users.GetMedia(34655664);
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
                            SqlCommand sqlCom2 = new SqlCommand("INSERT INTO instagramfeeds (captiontext,filter,dato_id,like_count,link,location,lowres,normal,thumbnail,data_type,dia_id) OUTPUT inserted.id VALUES ('" + img.CaptionText + "','" + img.Filter + "','" + img.Id + "'," + img.LikeCount + ",'" + img.Link + "','" + img.Location + "','" + img.LowRes + "','" + img.Standard + "','" + img.Thumbnail + "','" + img.Type + "',"+dia+")", sqlCon2);
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
                            SqlCommand sqlCom5 = new SqlCommand("INSERT INTO instagramfeeds (captiontext,filter,dato_id,like_count,link,location,lowres,normal,thumbnail,data_type,dia_id) OUTPUT inserted.id VALUES ('" + vid.CaptionText + "','" + vid.Filter + "','" + vid.Id + "'," + vid.LikeCount + ",'" + vid.Link + "','" + vid.Location + "','" + vid.LowRes + "','" + vid.Standard + "','" + vid.Thumbnail + "','" + vid.Type + "',1)", sqlCon5);
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
                        SqlCommand sqlCom = new SqlCommand("INSERT INTO instagramfeeds (captiontext,filter,dato_id,like_count,link,location,lowres,normal,thumbnail,data_type,dia_id) OUTPUT inserted.id VALUES ('"+img.CaptionText+"','"+img.Filter+"','"+img.Id+"',"+img.LikeCount+",'"+img.Link+"','"+img.Location+"','"+img.LowRes+"','"+img.Standard+"','"+img.Thumbnail+"','"+img.Type+"',"+dia+")", sqlCon);
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
                        SqlCommand sqlCom = new SqlCommand("INSERT INTO instagramfeeds (captiontext,filter,dato_id,like_count,link,location,lowres,normal,thumbnail,data_type,dia_id) OUTPUT inserted.id VALUES ('" + vid.CaptionText + "','" + vid.Filter + "','" + vid.Id + "'," + vid.LikeCount + ",'" + vid.Link + "','" + vid.Location + "','" + vid.LowRes + "','" + vid.Standard + "','" + vid.Thumbnail + "','" + vid.Type + "',"+dia+")", sqlCon);
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
        protected void Page_Load(object sender, EventArgs e)
        {

        }
    }
}