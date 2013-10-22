using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using TweetSharp;

namespace Vento.Classes
{
    public class TwitterReader
    {
        public static List<string> getFeed()
        {
            List<string> feeds=new List<string>();
            try
            {
                TwitterService service = new TwitterService("nk72ZvomNHmQOW0Cg8J4Cg", "bdZNfJrRfB78DTklxy12NuX7OB6wtBx5R0GJogUJvE");
                service.AuthenticateWith("92536722-N5JD1f3n92tjkz9GaRcC6Kef4nPKck59aahGCg8G8", "0QaULsLK6gVTFDMN9Z4MwaqN7VrvedQTSz0Fo8mWcw");
                var tweets = service.Search(new SearchOptions { Q = "#Vento" });
                List<TwitterStatus> resultList = new List<TwitterStatus>(tweets.Statuses);
                foreach (var twt in resultList)
                {
                    feeds.Add(twt.RawSource);
                }
            }
            catch (Exception)
            { 
                //Donothing();
            }
            return feeds;
        }
    }
}