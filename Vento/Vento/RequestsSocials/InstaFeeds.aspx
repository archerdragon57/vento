<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="InstaFeeds.aspx.cs" Inherits="Vento.RequestsSocials.InstaFeeds" %>
<script src="jquery-1.7.1.js"></script>
<%@ Import Namespace="System.IO" %>
<html>
<body>
    <% foreach (var dir in new DirectoryInfo("C:\\inetpub\\wwwroot\\Vento\\Vento\\Viaje").GetDirectories()) { %>
        Directory: <%= dir.Name %><br />

        <% foreach (var file in dir.GetFiles()) { %>
            <%= file.Name %><br />
        <% } %>
        <br />
    <% } %>
</body>
</html>