<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="new_car.aspx.cs" Inherits="Vento.CMS.add.new_car" ValidateRequest="false" %>

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
        <p><b>Nombre(140)</b><br />
            <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
        </p>
            <p><b>Título</b>(200)<br />
            <asp:TextBox ID="txtTitulo" runat="server"></asp:TextBox>
        </p>
        <p><b>Hashtag</b>(50)<br />
            <asp:TextBox ID="txtHashtag" runat="server"></asp:TextBox>
        </p>
        <p><b>Descripcion</b>(800)<br />
            <asp:TextBox ID="txtDescripcion" runat="server"></asp:TextBox>
        </p>
            <p><b>Puntos</b><br />
            <asp:TextBox ID="txtPuntos" runat="server"></asp:TextBox>
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
