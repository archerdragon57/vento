<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="dia.aspx.cs" Inherits="Vento.CMS.edit.dia" %>

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
            <asp:TextBox ID="txtTitle" runat="server"></asp:TextBox>
        </p>
        <p><b>Id Usuario</b><br />
            <asp:TextBox ID="txtObjetivo" runat="server"></asp:TextBox>
        </p>
        <p><b>Nombre usuario</b><br />
            <asp:TextBox ID="txtDescripcion" runat="server"></asp:TextBox>
        </p>
        <p><b>Screen name</b><br />
            <asp:TextBox ID="txtImagen" runat="server"></asp:TextBox>
        </p>
        <p><b>Location</b><br />
            <asp:TextBox ID="txtvideo_dia" runat="server"></asp:TextBox>
        </p>
            <p><asp:Button ID="btnNext1" CssClass="btn btn-primary" runat="server" Text="Guardar" OnClick="btnNext1_Click" /></p>
        </div>
    </form>
    <a href="../TwitterFeeds.aspx">Listados Twitter</a>
    <a href="../InstagramFeeds.aspx">Listados Instagram</a>
    <a href="../DatosAutos.aspx">Datos de los autos</a>
    <a href="../Usuarios.aspx">Datos de los usuarios</a>
</body>
</html>