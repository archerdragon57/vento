<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="twit_feed.aspx.cs" Inherits="Vento.CMS.edit.twit_feed" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        <h5><asp:Label ID="lblMessage" runat="server" Text=""></asp:Label></h5>


        <asp:Button ID="btnLogout" CssClass="logoutRight btn btn-info" runat="server" Text="log out" OnClick="btnLogout_Click" />
        <p><b>Twit</b><br />
            <asp:TextBox ID="txtTwit" runat="server"></asp:TextBox>
        </p>
        <p><b>Id Usuario</b><br />
            <asp:TextBox ID="txtIdUsuario" runat="server"></asp:TextBox>
        </p>
        <p><b>Nombre usuario</b><br />
            <asp:TextBox ID="txtUserName" runat="server"></asp:TextBox>
        </p>
        <p><b>Screen name</b><br />
            <asp:TextBox ID="txtScreenName" runat="server"></asp:TextBox>
        </p>
        <p><b>Location</b><br />
            <asp:TextBox ID="txtUserLocation" runat="server"></asp:TextBox>
        </p>
        <p><b>Foto usuario</b><br />
            <asp:Image ID="Image1" ImageUrl="http://placehold.it/100x100" runat="server" />
        </p>
        <p><b>Visible</b><br />
            <asp:CheckBox  ID="checkbox_f" runat="server"></asp:CheckBox>
        </p>
            <p><asp:Button ID="btnNext1" CssClass="btn btn-primary" runat="server" Text="Guardar" OnClick="btnNext1_Click" /></p>
        </div>
    </form>
</body>
</html>
