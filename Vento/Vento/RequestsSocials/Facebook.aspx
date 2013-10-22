<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Facebook.aspx.cs" Inherits="Vento.RequestsSocials.Facebook" %>
<script src="jquery-1.7.1.js"></script>
<div id="fb-root"></div>

<script>
    var init = false;
    var map;
    window.fbAsyncInit = function () {
        FB.init({
            appId: '230348633788922',
            cookie: true,
            xfbml: true,
            oauth: true
        });
        FB.Event.subscribe('auth.login', function (response) {
            console.log("subscribe"+response);
        });
        FB.Event.subscribe('auth.logout', function (response) {

        });
        login();

    };
    (function () {
        var e = document.createElement('script'); e.async = true;
        e.src = document.location.protocol + '//connect.facebook.net/en_US/all.js';
        document.getElementById('fb-root').appendChild(e);
    }());
    function login() {
        if (init) https://developers.facebook.com/tools/explorer?method=GET&path=me%2Ffeed
        {
            return false;
        }
        init = true;
        FB.login(function (response) {
            if (response.authResponse) {
                accessToken = response.authResponse.accessToken;
                fbid = response.authResponse.userID;
                //console.log(response);
                load_comments();
                $.ajax({
                    type: 'POST',
                    contentType: "application/json; charset=utf-8",
                    data: "{'id':'"+fbid+"','token':'"+accessToken+"'}",
                    url: "Facebook.aspx/SetAccessToken",
                    dataType: "json",
                    success: function (data) {
                        console.log(data.d);
                    }
                });
            } else {
                console.log('User cancelled login or did not fully authorize.');
            }
        }, { scope: 'user_location,friends_about_me,user_status,read_stream' });
    }
    function load_comments() {
        console.log("load_comments");
        FB.api('/me/feed', function (res) {
            //Aquí saca los feeds
            console.log(res);
        });
    }
</script>