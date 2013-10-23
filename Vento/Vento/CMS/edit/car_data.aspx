<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="car_data.aspx.cs" Inherits="Vento.CMS.edit.car_data" %>

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
        <p><b>Nombre</b><br />
            <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
        </p>
        <p><b>Hashtag</b><br />
            <asp:TextBox ID="txtHashtag" runat="server"></asp:TextBox>
        </p>
        <p><b>Descripcion</b><br />
            <asp:TextBox ID="txtDescripcion" runat="server"></asp:TextBox>
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
