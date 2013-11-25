<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="new_user.aspx.cs" Inherits="Vento.CMS.add.NEW_USER"  ValidateRequest="false"%>

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
        <p><b>Nombre</b>(150)<br />
            <asp:TextBox ID="txtNombre" runat="server"></asp:TextBox>
        </p>
        <p><b>Twitter</b>(50)<br />
            <asp:TextBox ID="txtTwitter" runat="server"></asp:TextBox>
        </p>
        <p><b>Instagram</b><br />
            <asp:TextBox ID="txtInstagram" runat="server"></asp:TextBox>
        </p>
            <p><b>Bio</b>(400)<br />
            <asp:TextBox ID="txtBio" runat="server"></asp:TextBox>
        </p>
            <p><b>Auto</b><br />
            <asp:TextBox ID="txtAuto" runat="server"></asp:TextBox>
        </p>
            <p><b>Foto</b>(200)<br />
            <asp:TextBox ID="txtFoto" runat="server"></asp:TextBox>
        </p>
            <p><b>Likes</b><br />
            <asp:TextBox ID="txtLike" runat="server"></asp:TextBox>
        </p>
            <p><b>Edad</b><br />
            <asp:TextBox ID="txtEdad" runat="server"></asp:TextBox>
        </p>
            <p><b>Ocupación</b>(100)<br />
            <asp:TextBox ID="txtOcupacion" runat="server"></asp:TextBox>
        </p>
            <p><b>Origen</b>(100)<br />
            <asp:TextBox ID="txtOrigen" runat="server"></asp:TextBox>
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