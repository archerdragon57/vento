using Facebook;
using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.Configuration;
using System.Web.Services;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Vento.RequestsSocials
{
    public partial class Facebook : System.Web.UI.Page
    {
        [WebMethod]
        public static void SetAccessToken(string id, string token)
        {
            if (id != null && id != "" && token != null && token != "")
            {
                int totalp = 0;
                string sConection0 = WebConfigurationManager.ConnectionStrings["ApplicationServices"].ConnectionString;
                using (SqlConnection sqlCon0 = new SqlConnection(sConection0))
                {
                    SqlCommand sqlCom0 = new SqlCommand("select count(id) as total from fb_users where fbid='" + id + "'", sqlCon0);
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
                        SqlCommand sqlCom = new SqlCommand("INSERT INTO fb_users (fbid,fbtoken) OUTPUT inserted.id VALUES ('" + id + "','" + token + "')", sqlCon);
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
                        SqlCommand sqlCom = new SqlCommand("update fb_users set fbtoken ='" + token + "' where fbid='"+id+"'", sqlCon);
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
        [WebMethod]
        public static string GetFeeds(string accesstoken)
        {
            StringBuilder sb = new StringBuilder();
            var client = new FacebookClient(accesstoken);
            dynamic me = client.Get("me/feed");
            dynamic jsonObj = JsonConvert.DeserializeObject(me.ToString());
            int id;
            string message, type, picture, link, status_type, icon, created_time, updated_time;
            string idi = "0";
            if (jsonObj.data != null)
            {
                foreach (var obj in jsonObj.data)
                {
                    if (obj != null)
                    {
                        try
                        {
                            if (obj["id"] != null)
                            {
                                id = obj["id"].ToString();
                                if (obj["story"] != null)
                                {
                                    message = obj["story"].ToString();
                                }
                                else
                                {
                                    message = "";
                                }
                                if (obj["type"] != null)
                                {
                                    type = obj["type"].ToString();
                                }
                                else {
                                    type = "";
                                }
                                if (obj["picture"] != null)
                                {
                                    picture = obj["picture"].ToString();
                                }
                                else {
                                    picture = "";
                                }
                                if (obj["link"] != null)
                                {
                                    link = obj["link"].ToString();
                                }
                                else
                                {
                                    link = "";
                                }
                                if (obj["status_type"] != null)
                                {
                                    status_type = obj["status_type"].ToString();
                                }
                                else
                                {
                                    status_type = "";
                                }
                                if (obj["icon"] != null)
                                {
                                    icon = obj["icon"].ToString();
                                }
                                else
                                {
                                    icon = "";
                                }
                                if (obj["created_time"] != null)
                                {
                                    created_time = obj["created_time"].ToString();
                                }
                                else
                                {
                                    created_time = "";
                                }
                                if (obj["updated_time"] != null)
                                {
                                    updated_time = obj["updated_time"].ToString();
                                }
                                else
                                {
                                    updated_time = "";
                                }
                                sb.Append("'" + id + "','" + message + "','" + type + "','" + picture + "','" + link + "','" + status_type + "','" + icon + "','" + created_time + "','" + updated_time + "',0");
                                string sConection = WebConfigurationManager.ConnectionStrings["ApplicationServices"].ConnectionString;
                                using (SqlConnection sqlCon = new SqlConnection(sConection))
                                {
                                    SqlCommand sqlCom = new SqlCommand("INSERT INTO fb_feeds (id,[message],[type],picture,link,status_type,icon,created_time,updated_time,visible) VALUES ('" + id + "','" + message + "','" + type + "','" + picture + "','" + link + "','" + status_type + "','" + icon + "','" + created_time + "','" + updated_time + "',0)", sqlCon);
                                    sqlCon.Open();
                                    SqlDataReader reader123 = sqlCom.ExecuteReader();
                                    while (reader123.Read())
                                    {
                                        idi = reader123[0].ToString();
                                        sb.Append(idi);
                                        sb.Append("'" + id + "','" + message + "','" + type + "','" + picture + "','" + link + "','" + status_type + "','" + icon + "','" + created_time + "','" + updated_time + "',1");
                                    }
                                    sqlCon.Close();
                                }
                            }
                        }
                        catch (Exception e)
                        {
                            sb.Append(e.Message);
                        }
                    }
                }
            }
            //sb.Append(me.ToString());
            return sb.ToString();
        }
        protected void Page_Load(object sender, EventArgs e)
        {

        }
    }
}