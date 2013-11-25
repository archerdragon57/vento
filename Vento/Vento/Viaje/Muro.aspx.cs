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
    public partial class Muro : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Int64 lastidtwit = 0;
            string lastidinst = "";
            Random random = new Random();
            StringBuilder sb = new StringBuilder();
            string sConection0 = WebConfigurationManager.ConnectionStrings["ApplicationServices"].ConnectionString;
            using (SqlConnection sqlCon0 = new SqlConnection(sConection0))
            {
                SqlCommand sqlCom0 = new SqlCommand("select max(id) as total from twitter_feeds where visible=1", sqlCon0);
                sqlCon0.Open();
                SqlDataReader reader0 = sqlCom0.ExecuteReader();
                while (reader0.Read())
                {
                    lastidtwit = Convert.ToInt64(reader0[0].ToString())+1;
                }
                sqlCon0.Close();
            }
            using (SqlConnection sqlCon0 = new SqlConnection(sConection0))
            {
                SqlCommand sqlCom0 = new SqlCommand("select max(dato_id) as total from instagramfeeds where visible=1", sqlCon0);
                sqlCon0.Open();
                SqlDataReader reader0 = sqlCom0.ExecuteReader();
                while (reader0.Read())
                {
                    lastidinst = reader0[0].ToString();
                }
                sqlCon0.Close();
            }
            bool _factible=true;
            int number_t = 0;
            int number_i = 0;
            using (SqlConnection sqlCon0 = new SqlConnection(sConection0))
            {
                SqlCommand sqlCom0 = new SqlCommand("select count(id) as total from twitter_feeds where visible=1", sqlCon0);
                sqlCon0.Open();
                SqlDataReader reader0 = sqlCom0.ExecuteReader();
                while (reader0.Read())
                {
                    number_t = Convert.ToInt16(reader0[0].ToString());
                }
                sqlCon0.Close();
            }
            using (SqlConnection sqlCon0 = new SqlConnection(sConection0))
            {
                SqlCommand sqlCom0 = new SqlCommand("select count(id) as total from InstagramFeeds where visible=1", sqlCon0);
                sqlCon0.Open();
                SqlDataReader reader0 = sqlCom0.ExecuteReader();
                while (reader0.Read())
                {
                    number_i = int.Parse(reader0[0].ToString());
                }
                sqlCon0.Close();
            }
            int counter = 0;
            while (_factible && counter < 14)
            {
                int limitt = 0;
                int limitinst = 0;
                if (number_t > 02 || number_i > 3)
                {
                    limitt = 0;
                    limitinst = 0;
                    int randomNumber = random.Next(1, 5);
                    switch (randomNumber)
                    {
                        case 1:
                            if (number_t > 0 && number_i > 1)
                            {
                                limitt = 0;
                                using (SqlConnection sqlCon0 = new SqlConnection(sConection0))
                                {
                                    SqlCommand sqlCom0 = new SqlCommand("select id,content,id_user,screen_name from twitter_feeds where id <" + lastidtwit + " and visible=1 order by id desc", sqlCon0);
                                    sqlCon0.Open();
                                    SqlDataReader reader0 = sqlCom0.ExecuteReader();
                                    while (reader0.Read() && limitt < 1)
                                    {
                                        limitt++;
                                        lastidtwit = Convert.ToInt64(reader0[0].ToString());
                                        //sb.Append("<div class='twitterModule'> <p class='twTitle'>@" + reader0[3].ToString() + " </p> <p class='twText'> " + reader0[1] + "</p> <a class='reTwbtn' href='https://twitter.com/tweet?text=" + Server.HtmlEncode(reader0[1].ToString()) + ";url=" + Server.HtmlEncode("http://nuevovento.mx/Viaje/site.aspx") + " target='_blank'></a> </div>");
                                        sb.Append("<div class='twitterModule'> <p class='twTitle'>@" + reader0[3].ToString() + " </p> <p class='twText'> " + reader0[1] + "</p> <a class='reTwbtn' href='https://twitter.com/intent/retweet?tweet_id="+reader0[0]+"'></a> <script>!function(d,s,id){var js,fjs=d.getElementsByTagName(s)[0];if(!d.getElementById(id)){js=d.createElement(s);js.id=id;js.src='//platform.twitter.com/widgets.js';fjs.parentNode.insertBefore(js,fjs);}}(document,'script','twitter-wjs');</script></div>");
                                    }
                                    sqlCon0.Close();
                                }
                                number_t--;
                                limitinst = 0;
                                sb.Append("<div class='instagramModule'>");
                                using (SqlConnection sqlCon0 = new SqlConnection(sConection0))
                                {
                                    SqlCommand sqlCom0 = new SqlCommand("select id,captiontext,like_count,link,normal,data_type,dato_id from instagramfeeds where dato_id <'" + lastidinst + "' and visible=1 order by dato_id desc", sqlCon0);
                                    sqlCon0.Open();
                                    SqlDataReader reader0 = sqlCom0.ExecuteReader();
                                    while (reader0.Read() && limitinst < 2)
                                    {
                                        limitinst++;
                                        lastidinst = reader0[6].ToString();
                                        if (reader0[5].ToString() == "video")
                                        {
                                            sb.Append("<div class='instagramPhotoCont video'> <video alt='' class='photo' src='" + reader0[3].ToString() + "'> <a class='play' href='#'></a> <span> <div class='userCont'> <img alt='' class='userPhoto' src=''>  <p class='user'> Nuevo Vento </p> </div> <p class='caption'> " + reader0[1] + " </p> <div class='likesCont'> <div class='likeIcon'></div> <p class='likesCount'> " + reader0[2].ToString() + " </p> </div> </span> </div>");
                                        }
                                        else
                                        {
                                            sb.Append("<div class='instagramPhotoCont'> <img alt='' class='photo' src='" + reader0[4].ToString() + "'> <span> <div class='userCont'> <img alt='' class='userPhoto' src=''> <p class='user'> Nuevo Vento </p> </div> <p class='caption'> " + reader0[1] + " </p> <div class='likesCont'> <div class='likeIcon'></div> <p class='likesCount'> " + reader0[2] + " </p> </div> <a class='shareLink' href='" + reader0[3].ToString() + "' target='blank'></a> </span> </div>");
                                        }
                                    }
                                    sqlCon0.Close();
                                }
                                sb.Append("</div>");
                                number_i -= 2;
                                counter++;
                            }
                            break;
                        case 2://twit a derecha
                            if (number_t >= 1 && number_i >= 2)
                            {
                                limitinst = 0;
                                //Instagram 2
                                sb.Append("<div class='instagramModule'>");
                                using (SqlConnection sqlCon0 = new SqlConnection(sConection0))
                                {
                                    SqlCommand sqlCom0 = new SqlCommand("select id,captiontext,like_count,link,normal,data_type,dato_id from instagramfeeds where dato_id <'" + lastidinst + "' and visible=1 order by dato_id desc", sqlCon0);
                                    sqlCon0.Open();
                                    SqlDataReader reader0 = sqlCom0.ExecuteReader();
                                    while (reader0.Read() && limitinst < 2)
                                    {
                                        limitinst++;
                                        lastidinst = reader0[6].ToString();
                                        if (reader0[5].ToString() == "video")
                                        {
                                            sb.Append("<div class='instagramPhotoCont video'> <video alt='' class='photo' src='" + reader0[3].ToString() + "'> <a class='play' href='#'></a> <span> <div class='userCont'> <img alt='' class='userPhoto' src=''>  <p class='user'> Nuevo Vento </p> </div> <p class='caption'> " + reader0[1] + " </p> <div class='likesCont'> <div class='likeIcon'></div> <p class='likesCount'> " + reader0[2].ToString() + " </p> </div> </span> </div>");
                                        }
                                        else
                                        {
                                            sb.Append("<div class='instagramPhotoCont'> <img alt='' class='photo' src='" + reader0[4].ToString() + "'> <span> <div class='userCont'> <img alt='' class='userPhoto' src=''> <p class='user'> Nuevo Vento </p> </div> <p class='caption'> " + reader0[1] + " </p> <div class='likesCont'> <div class='likeIcon'></div> <p class='likesCount'> " + reader0[2] + " </p> </div> <a class='shareLink' href='" + reader0[3].ToString() + "' target='blank'></a> </span> </div>");
                                        }
                                    }
                                    sqlCon0.Close();
                                }
                                sb.Append("</div>");
                                number_i -= 2;
                                //1 twit
                                limitt = 0;
                                using (SqlConnection sqlCon0 = new SqlConnection(sConection0))
                                {
                                    SqlCommand sqlCom0 = new SqlCommand("select id,content,id_user,screen_name from twitter_feeds where id <" + lastidtwit + " and visible=1 order by id desc", sqlCon0);
                                    sqlCon0.Open();
                                    SqlDataReader reader0 = sqlCom0.ExecuteReader();
                                    while (reader0.Read() && limitt < 2)
                                    {
                                        limitt++;
                                        lastidtwit = Convert.ToInt64(reader0[0].ToString());
                                        //sb.Append("<div class='twitterModule'> <p class='twTitle'>@" + reader0[3].ToString() + " </p> <p class='twText'> " + reader0[1] + "</p> <a class='reTwbtn' href='https://twitter.com/tweet?text=" + Server.HtmlEncode(reader0[1].ToString()) + ";url=" + Server.HtmlEncode("http://nuevovento.mx/Viaje/site.aspx") + " target='_blank'></a> </div>");
                                        sb.Append("<div class='twitterModule'> <p class='twTitle'>@" + reader0[3].ToString() + " </p> <p class='twText'> " + reader0[1] + "</p> <a class='reTwbtn' href='https://twitter.com/intent/retweet?tweet_id=" + reader0[0] + "'></a> <script>!function(d,s,id){var js,fjs=d.getElementsByTagName(s)[0];if(!d.getElementById(id)){js=d.createElement(s);js.id=id;js.src='//platform.twitter.com/widgets.js';fjs.parentNode.insertBefore(js,fjs);}}(document,'script','twitter-wjs');</script></div>");
                                    }
                                    sqlCon0.Close();
                                }
                                number_t--;
                                counter++;
                            }
                            break;
                        case 3://no twit
                            if (number_i > 3)
                            {
                                limitinst = 0;
                                //Instagram 2
                                sb.Append("<div class='instagramModule'>");
                                using (SqlConnection sqlCon0 = new SqlConnection(sConection0))
                                {
                                    SqlCommand sqlCom0 = new SqlCommand("select id,captiontext,like_count,link,normal,data_type,dato_id from instagramfeeds where dato_id <'" + lastidinst + "' and visible=1 order by dato_id desc", sqlCon0);
                                    sqlCon0.Open();
                                    SqlDataReader reader0 = sqlCom0.ExecuteReader();
                                    while (reader0.Read() && limitinst < 2)
                                    {
                                        limitinst++;
                                        lastidinst = reader0[6].ToString();
                                        if (reader0[5].ToString() == "video")
                                        {
                                            sb.Append("<div class='instagramPhotoCont video'> <video alt='' class='photo' src='" + reader0[3].ToString() + "'> <a class='play' href='#'></a> <span> <div class='userCont'> <img alt='' class='userPhoto' src=''>  <p class='user'> Nuevo Vento </p> </div> <p class='caption'> " + reader0[1] + " </p> <div class='likesCont'> <div class='likeIcon'></div> <p class='likesCount'> " + reader0[2].ToString() + " </p> </div> </span> </div>");
                                        }
                                        else
                                        {
                                            sb.Append("<div class='instagramPhotoCont'> <img alt='' class='photo' src='" + reader0[4].ToString() + "'> <span> <div class='userCont'> <img alt='' class='userPhoto' src=''> <p class='user'> Nuevo Vento </p> </div> <p class='caption'> " + reader0[1] + " </p> <div class='likesCont'> <div class='likeIcon'></div> <p class='likesCount'> " + reader0[2] + " </p> </div> <a class='shareLink' href='" + reader0[3].ToString() + "' target='blank'></a> </span> </div>");
                                        }
                                    }
                                    sqlCon0.Close();
                                }
                                sb.Append("</div>");
                                number_i -= 2;
                                limitinst = 0;
                                //Instagram 2
                                sb.Append("<div class='instagramModule'>");
                                using (SqlConnection sqlCon0 = new SqlConnection(sConection0))
                                {
                                    SqlCommand sqlCom0 = new SqlCommand("select id,captiontext,like_count,link,normal,data_type,dato_id from instagramfeeds where dato_id <'" + lastidinst + "' and visible=1 order by dato_id desc", sqlCon0);
                                    sqlCon0.Open();
                                    SqlDataReader reader0 = sqlCom0.ExecuteReader();
                                    while (reader0.Read() && limitinst < 2)
                                    {
                                        limitinst++;
                                        lastidinst = reader0[6].ToString();
                                        if (reader0[5].ToString() == "video")
                                        {
                                            sb.Append("<div class='instagramPhotoCont video'> <video alt='' class='photo' src='" + reader0[3].ToString() + "'> <a class='play' href='#'></a> <span> <div class='userCont'> <img alt='' class='userPhoto' src=''>  <p class='user'> Nuevo Vento </p> </div> <p class='caption'> " + reader0[1] + " </p> <div class='likesCont'> <div class='likeIcon'></div> <p class='likesCount'> " + reader0[2].ToString() + " </p> </div> </span> </div>");
                                        }
                                        else
                                        {
                                            sb.Append("<div class='instagramPhotoCont'> <img alt='' class='photo' src='" + reader0[4].ToString() + "'> <span> <div class='userCont'> <img alt='' class='userPhoto' src=''> <p class='user'> Nuevo Vento </p> </div> <p class='caption'> " + reader0[1] + " </p> <div class='likesCont'> <div class='likeIcon'></div> <p class='likesCount'> " + reader0[2] + " </p> </div> <a class='shareLink' href='"+reader0[3].ToString()+"' target='blank'></a> </span> </div>");
                                        }
                                    }
                                    sqlCon0.Close();
                                }
                                sb.Append("</div>");
                                number_i -= 2;
                                counter++;
                            }
                            break;
                        case 4://doble twitter
                            if (number_t > 1)
                            {
                                limitt = 0;
                                using (SqlConnection sqlCon0 = new SqlConnection(sConection0))
                                {
                                    SqlCommand sqlCom0 = new SqlCommand("select id,content,id_user,screen_name from twitter_feeds where id <" + lastidtwit + " and visible=1 order by id desc", sqlCon0);
                                    sqlCon0.Open();
                                    SqlDataReader reader0 = sqlCom0.ExecuteReader();
                                    while (reader0.Read() && limitt < 3)
                                    {
                                        limitt++;
                                        lastidtwit = Convert.ToInt64(reader0[0].ToString());
                                        //sb.Append("<div class='twitterModule'> <p class='twTitle'>@" + reader0[3].ToString() + " </p> <p class='twText'> " + reader0[1] + "</p> <a class='reTwbtn' href='https://twitter.com/tweet?text=" + Server.HtmlEncode(reader0[1].ToString()) + ";url=" + Server.HtmlEncode("http://nuevovento.mx/Viaje/site.aspx") + " target='_blank'></a> </div>");
                                        sb.Append("<div class='twitterModule'> <p class='twTitle'>@" + reader0[3].ToString() + " </p> <p class='twText'> " + reader0[1] + "</p> <a class='reTwbtn' href='https://twitter.com/intent/retweet?tweet_id=" + reader0[0] + "'></a> <script>!function(d,s,id){var js,fjs=d.getElementsByTagName(s)[0];if(!d.getElementById(id)){js=d.createElement(s);js.id=id;js.src='//platform.twitter.com/widgets.js';fjs.parentNode.insertBefore(js,fjs);}}(document,'script','twitter-wjs');</script></div>");
                                    }
                                    sqlCon0.Close();
                                }
                                number_t--;
                                counter++;
                            }
                            break;
                    }
                }
                else
                {
                    _factible = false;
                }
            }
            muroOverview.InnerHtml = sb.ToString();
        }
    }
}