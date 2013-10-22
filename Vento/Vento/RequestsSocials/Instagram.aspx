<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Instagram.aspx.cs" Inherits="Vento.RequestsSocials.Instagram" %>
<script src="jquery-1.7.1.js"></script>
<script>
    if (window.location.href.indexOf("code=") > -1)
    {
        
        //post with accesstoken
        alert(window.location.href);
        $.ajax({
            type: 'POST',
            contentType: "application/json; charset=utf-8",
            data: "{'code':'" + window.location.href + "'}",
            url: "Instagram.aspx/GetCode",
            dataType: "json",
            success: function (data) {
                console.log(data.d);
            }
        });
    }
    else
    {
        window.location = "https://instagram.com/oauth/authorize/?client_id=681989a8c519487dadc104599ca8dbd0&redirect_uri=http%3A%2F%2Fnuevovento.mx%2FRequestsSocials%2FInstagram.aspx&response_type=code&scope=basic";
    }
</script>