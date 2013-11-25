<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Twitter.aspx.cs" Inherits="Vento.RequestsSocials.Twitter" %>
<script src="jquery-1.7.1.js"></script>
<script>
    setInterval(function () {
        $.ajax({
            type: 'POST',
            contentType: "application/json; charset=utf-8",
            data: "{'screenName':'GrissVarela'}",
            url: "Twitter.aspx/getTwits",
            dataType: "json",
            success: function (data) {
                console.log(data.d);
            }
        });
        $.ajax({
            type: 'POST',
            contentType: "application/json; charset=utf-8",
            data: "{'screenName':'Meri_t'}",
            url: "Twitter.aspx/getTwits",
            dataType: "json",
            success: function (data) {
                console.log(data.d);
            }
        });
        $.ajax({
            type: 'POST',
            contentType: "application/json; charset=utf-8",
            data: "{'screenName':'vientoentucara'}",
            url: "Twitter.aspx/getTwits",
            dataType: "json",
            success: function (data) {
                console.log(data.d);
            }
        });
        $.ajax({
            type: 'POST',
            contentType: "application/json; charset=utf-8",
            data: "{'screenName':'valentincov'}",
            url: "Twitter.aspx/getTwits",
            dataType: "json",
            success: function (data) {
                console.log(data.d);
            }
        });
        $.ajax({
            type: 'POST',
            contentType: "application/json; charset=utf-8",
            data: "{'screenName':'winiberto'}",
            url: "Twitter.aspx/getTwits",
            dataType: "json",
            success: function (data) {
                console.log(data.d);
            }
        });
        $.ajax({
            type: 'POST',
            contentType: "application/json; charset=utf-8",
            data: "{'screenName':'juancarlosvizu1'}",
            url: "Twitter.aspx/getTwits",
            dataType: "json",
            success: function (data) {
                console.log(data.d);
            }
        });
        $.ajax({
            type: 'POST',
            contentType: "application/json; charset=utf-8",
            data: "{'screenName':'LizzMerino'}",
            url: "Twitter.aspx/getTwits",
            dataType: "json",
            success: function (data) {
                console.log(data.d);
            }
        });
        $.ajax({
            type: 'POST',
            contentType: "application/json; charset=utf-8",
            data: "{'screenName':'kutziromero'}",
            url: "Twitter.aspx/getTwits",
            dataType: "json",
            success: function (data) {
                console.log(data.d);
            }
        });
        $.ajax({
            type: 'POST',
            contentType: "application/json; charset=utf-8",
            data: "{'screenName':'ocamglez'}",
            url: "Twitter.aspx/getTwits",
            dataType: "json",
            success: function (data) {
                console.log(data.d);
            }
        });
        $.ajax({
            type: 'POST',
            contentType: "application/json; charset=utf-8",
            data: "{'screenName':'iseon'}",
            url: "Twitter.aspx/getTwits",
            dataType: "json",
            success: function (data) {
                console.log(data.d);
            }
        });
        $.ajax({
            type: 'POST',
            contentType: "application/json; charset=utf-8",
            data: "{'hash':'#XperiVento'}",
            url: "Twitter.aspx/getHashes",
            dataType: "json",
            success: function (data) {
                console.log(data.d);
            }
        });
        $.ajax({
            type: 'POST',
            contentType: "application/json; charset=utf-8",
            data: "{'hash':'#GreenVentors'}",
            url: "Twitter.aspx/getHashes",
            dataType: "json",
            success: function (data) {
                console.log(data.d);
            }
        });
        $.ajax({
            type: 'POST',
            contentType: "application/json; charset=utf-8",
            data: "{'hash':'#VamonosDeAVenton'}",
            url: "Twitter.aspx/getHashes",
            dataType: "json",
            success: function (data) {
                console.log(data.d);
            }
        });
        $.ajax({
            type: 'POST',
            contentType: "application/json; charset=utf-8",
            data: "{'hash':'#LaRutaDeLasIdeas'}",
            url: "Twitter.aspx/getHashes",
            dataType: "json",
            success: function (data) {
                console.log(data.d);
            }
        });
    }, 350000);
</script>