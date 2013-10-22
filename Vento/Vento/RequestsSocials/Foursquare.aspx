<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Foursquare.aspx.cs" Inherits="Vento.RequestsSocials.Foursquare" %>
<script>
    if (window.location.href.indexOf("code=") > -1) {
        //post with accesstoken
        alert(window.location.href);
        var codigo = window.location.href.substring(window.location.href.indexOf("code=") + 5);
        alert(codigo);
        /*$.ajax({
            type: 'POST',
            contentType: "application/json; charset=utf-8",
            data: "{}",
            url: "https://foursquare.com/oauth2/access_token?client_id=0OLDYRFXEEELWFFTC2ZEHMAM5C2BSPACRH3J4F5KHP5NZD5S&client_secret=SRJYDUYCGDPAYDNBYWNWZCJC02MYQD0ROZPNB3KWYM0GTOTS&grant_type=authorization_code&redirect_uri=http%3A%2F%2Fnuevovento.mx%2FRequestsSocials%2FFoursquare.aspx&code="+codigo,
            dataType: "json",
            success: function (data) {
                console.log(data.d);
            }
        });*/
    }
    else {
        window.location = "https://foursquare.com/oauth2/authenticate?client_id=0OLDYRFXEEELWFFTC2ZEHMAM5C2BSPACRH3J4F5KHP5NZD5S&response_type=code&redirect_uri=http%3A%2F%2Fnuevovento.mx%2FRequestsSocials%2FFoursquare.aspx";
    }
</script>