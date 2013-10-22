<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Twitter.aspx.cs" Inherits="Vento.RequestsSocials.Twitter" %>
<script src="jquery-1.7.1.js"></script>
<script>
    $.ajax({
        type: 'POST',
        contentType: "application/json; charset=utf-8",
        data: "{'screenName':'jose_menchaca'}",
        url: "Twitter.aspx/getTwits",
        dataType: "json",
        success: function (data) {
            console.log(data.d);
        }
    });
    $.ajax({
        type: 'POST',
        contentType: "application/json; charset=utf-8",
        data: "{'screenName':'ulises_valencia'}",
        url: "Twitter.aspx/getTwits",
        dataType: "json",
        success: function (data) {
            console.log(data.d);
        }
    });
    $.ajax({
        type: 'POST',
        contentType: "application/json; charset=utf-8",
        data: "{'screenName':'gamanox'}",
        url: "Twitter.aspx/getTwits",
        dataType: "json",
        success: function (data) {
            console.log(data.d);
        }
    });
    $.ajax({
        type: 'POST',
        contentType: "application/json; charset=utf-8",
        data: "{'screenName':'DigitalInvaders'}",
        url: "Twitter.aspx/getTwits",
        dataType: "json",
        success: function (data) {
            console.log(data.d);
        }
    });
    $.ajax({
        type: 'POST',
        contentType: "application/json; charset=utf-8",
        data: "{'screenName':'GrupoW'}",
        url: "Twitter.aspx/getTwits",
        dataType: "json",
        success: function (data) {
            console.log(data.d);
        }
    });
    $.ajax({
        type: 'POST',
        contentType: "application/json; charset=utf-8",
        data: "{'screenName':'DiabloSwing'}",
        url: "Twitter.aspx/getTwits",
        dataType: "json",
        success: function (data) {
            console.log(data.d);
        }
    });
    $.ajax({
        type: 'POST',
        contentType: "application/json; charset=utf-8",
        data: "{'screenName':'Taur'}",
        url: "Twitter.aspx/getTwits",
        dataType: "json",
        success: function (data) {
            console.log(data.d);
        }
    });
    //$.ajax({
    //    type: 'POST',
    //    contentType: "application/json; charset=utf-8",
    //    data: "{'screenName':'cuenta8'}",
    //    url: "Twitter.aspx/getTwits",
    //    dataType: "json",
    //    success: function (data) {
    //        console.log(data.d);
    //    }
    //});
    //$.ajax({
    //    type: 'POST',
    //    contentType: "application/json; charset=utf-8",
    //    data: "{'screenName':'cuenta9'}",
    //    url: "Twitter.aspx/getTwits",
    //    dataType: "json",
    //    success: function (data) {
    //        console.log(data.d);
    //    }
    //});
    //$.ajax({
    //    type: 'POST',
    //    contentType: "application/json; charset=utf-8",
    //    data: "{'screenName':'cuenta10'}",
    //    url: "Twitter.aspx/getTwits",
    //    dataType: "json",
    //    success: function (data) {
    //        console.log(data.d);
    //    }
    //});
    //$.ajax({
    //    type: 'POST',
    //    contentType: "application/json; charset=utf-8",
    //    data: "{'screenName':'cuenta11'}",
    //    url: "Twitter.aspx/getTwits",
    //    dataType: "json",
    //    success: function (data) {
    //        console.log(data.d);
    //    }
    //});
    //$.ajax({
    //    type: 'POST',
    //    contentType: "application/json; charset=utf-8",
    //    data: "{'screenName':'cuenta12'}",
    //    url: "Twitter.aspx/getTwits",
    //    dataType: "json",
    //    success: function (data) {
    //        console.log(data.d);
    //    }
    //});
    //$.ajax({
    //    type: 'POST',
    //    contentType: "application/json; charset=utf-8",
    //    data: "{'screenName':'cuenta13'}",
    //    url: "Twitter.aspx/getTwits",
    //    dataType: "json",
    //    success: function (data) {
    //        console.log(data.d);
    //    }
    //});
    $.ajax({
        type: 'POST',
        contentType: "application/json; charset=utf-8",
        data: "{'hash':'hash1'}",
        url: "Twitter.aspx/getHashes",
        dataType: "json",
        success: function (data) {
            console.log(data.d);
        }
    });
    $.ajax({
        type: 'POST',
        contentType: "application/json; charset=utf-8",
        data: "{'hash':'hash2'}",
        url: "Twitter.aspx/getHashes",
        dataType: "json",
        success: function (data) {
            console.log(data.d);
        }
    });
    $.ajax({
        type: 'POST',
        contentType: "application/json; charset=utf-8",
        data: "{'hash':'hash3'}",
        url: "Twitter.aspx/getHashes",
        dataType: "json",
        success: function (data) {
            console.log(data.d);
        }
    });
    $.ajax({
        type: 'POST',
        contentType: "application/json; charset=utf-8",
        data: "{'hash':'hash4'}",
        url: "Twitter.aspx/getHashes",
        dataType: "json",
        success: function (data) {
            console.log(data.d);
        }
    });
</script>