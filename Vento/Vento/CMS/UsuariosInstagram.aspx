<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UsuariosInstagram.aspx.cs" Inherits="Vento.CMS.UsuariosInstagram"  ValidateRequest="false"%>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        <asp:Button ID="btnLogout" CssClass="logoutRight btn btn-info" runat="server" Text="log out" OnClick="btnLogout_Click" />
        <asp:DataGrid ID="GridView1" CssClass="table table-striped table-bordered" runat="server" AutoGenerateColumns="False" AllowPaging="true" OnPageIndexChanged="GridView1_PageIndexChanged" DataKeyField="id" OnDeleteCommand="GridView1_DeleteCommand" OnEditCommand="GridView1_EditCommand" OnUpdateCommand="GridView1_UpdateCommand" OnCancelCommand="GridView1_CancelCommand" OnItemCommand="GridView1_ItemCommand">
            <Columns>
                <asp:TemplateColumn HeaderText="Id" HeaderStyle-Font-Bold="true">
                    <EditItemTemplate>
                        <asp:Label ID="lbladdid_e" runat="server" Text='<%# DataBinder.Eval(Container, "DataItem.instid") %>'></asp:Label>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="lbladdid" runat="server" Text='<%# DataBinder.Eval(Container, "DataItem.instid") %>'></asp:Label>
                    </ItemTemplate>
                    <FooterTemplate>
                        <asp:Button ID="btnaddid_f" runat="server" CommandName="AddNew" Text="Insert" />
                    </FooterTemplate>
                    <HeaderStyle Font-Bold="True"></HeaderStyle>
                </asp:TemplateColumn>
                <asp:TemplateColumn HeaderText="Nombre" HeaderStyle-Font-Bold="true">
                    <EditItemTemplate>
                        <asp:TextBox ID="txtaddname_e" runat="server" Text='<%# DataBinder.Eval(Container, "DataItem.fullname") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="lbladdname" runat="server" Text='<%# DataBinder.Eval(Container, "DataItem.fullname") %>'></asp:Label>
                    </ItemTemplate>
                    <FooterTemplate>
                        <asp:TextBox ID="txtname_f" runat="server"></asp:TextBox>
                    </FooterTemplate>
                    <HeaderStyle Font-Bold="True"></HeaderStyle>
                </asp:TemplateColumn>
                <asp:TemplateColumn HeaderText="User name" HeaderStyle-Font-Bold="true">
                    <EditItemTemplate>
                        <asp:TextBox ID="txtaddtwitter_e" runat="server" Text='<%# DataBinder.Eval(Container, "DataItem.username") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="lbladdtwitter" runat="server" Text='<%# DataBinder.Eval(Container, "DataItem.username") %>'></asp:Label>
                    </ItemTemplate>
                    <FooterTemplate>
                        <asp:TextBox ID="txttwitter_f" runat="server"></asp:TextBox>
                    </FooterTemplate>
                    <HeaderStyle Font-Bold="True"></HeaderStyle>
                </asp:TemplateColumn>
                <asp:TemplateColumn HeaderText="Foto" HeaderStyle-Font-Bold="true">
                    <EditItemTemplate>
                        <asp:TextBox ID="txtaddinstagram_e" runat="server" Text='<%# DataBinder.Eval(Container, "DataItem.profilepic") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <img src='<%#DataBinder.Eval(Container, "DataItem.profilepic") %>' />
                    </ItemTemplate>
                    <FooterTemplate>
                        <asp:TextBox ID="txtinstagram_f" runat="server"></asp:TextBox>
                    </FooterTemplate>
                    <HeaderStyle Font-Bold="True"></HeaderStyle>
                </asp:TemplateColumn>
                <asp:ButtonColumn Text="Delete" ButtonType="PushButton" CommandName="Delete"></asp:ButtonColumn>
            </Columns>
            <PagerStyle Mode="NumericPages" />
        </asp:DataGrid>
        <asp:Label ID="lblMessage" runat="server"></asp:Label>
        </div>
    </form>
    <a href="TwitterFeeds.aspx">Listados Twitter</a>
    <a href="DiasDatos.aspx">Datos días</a>
    <a href="InstagramFeeds.aspx">Listados Instagram</a>
    <a href="DatosAutos.aspx">Datos de los autos</a>
    <a href="Usuarios.aspx">Datos de los usuarios</a>
    <script>
        function ondeleteclick() {
            return confirm("Are you sure you want to delete this?")
        }

        for (i = 0; i < document.all.length; i++) {
            var x = document.all.item(i)
            if (x != null && x.name != null && x.name.indexOf("GridView1") == 0) {
                if (x.value == "Delete")
                    x.onclick = ondeleteclick
                continue;
            }
        }
    </script>
</body>
</html>
