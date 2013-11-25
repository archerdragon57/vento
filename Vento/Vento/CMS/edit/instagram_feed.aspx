<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="instagram_feed.aspx.cs" Inherits="Vento.CMS.edit.instagram_feed"  ValidateRequest="false"%>

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
            <!-- -->
            <p><b>Caption Text</b><br />
                <asp:TextBox ID="txtCaption" runat="server"></asp:TextBox>
            </p>
            <!-- -->
            <p><b>Filter</b><br />
                <asp:TextBox ID="txtFilter" runat="server"></asp:TextBox>
            </p>
            <!-- -->
            <p><b>Dato Id</b><br />
                <asp:TextBox ID="txtDatoId" runat="server"></asp:TextBox>
            </p>
            <!-- -->
            <p><b>Like Count</b><br />
                <asp:TextBox ID="txtLikeCount" runat="server"></asp:TextBox>
            </p>
            <!-- -->
            <p><b>Link</b><br />
                <asp:TextBox ID="txtLink" runat="server"></asp:TextBox>
            </p>
            <!-- -->
            <p><b>Location</b><br />
                <asp:TextBox ID="txtLocation" runat="server"></asp:TextBox>
            </p>
            <!-- -->
            <p><b>Lowres</b><br />
                <asp:Image ID="ImgLowres" runat="server" />
            </p>
            <!-- -->
            <p><b>Normal</b><br />
                <asp:Image ID="ImgNormal" runat="server" />
            </p>
            <!-- -->
            <p><b>Thumbnail</b><br />
                <asp:Image ID="ImgThumb" runat="server" />
            </p>
            <!-- -->
            <p><b>Data Type</b><br />
                <asp:TextBox ID="txtDataType" runat="server"></asp:TextBox>
            </p>
            <!-- -->
            <p><b>Dia Id</b><br />
                <asp:TextBox ID="txtDiaId" runat="server"></asp:TextBox>
            </p>
            <!-- -->
            <p><b>Visible</b><br />
                <asp:CheckBox ID="chbActive" runat="server" />
            </p>
            <!-- -->
            <p>
                <asp:Button ID="btnGuardar" CssClass="btn btn-primary" runat="server" Text="Guardar" OnClick="btnGuardar_Click" />
            </p>
        </div>
    </form>
    <a href="../TwitterFeeds.aspx">Listados Twitter</a>
    <a href="../InstagramFeeds.aspx">Listados Instagram</a>
    <a href="../DatosAutos.aspx">Datos de los autos</a>
    <a href="../Usuarios.aspx">Datos de los usuarios</a>
</body>
</html>
