<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DatosAutos.aspx.cs" Inherits="Vento.CMS.DatosAutos"  ValidateRequest="false"%>

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
                        <asp:Label ID="lbladdid_e" runat="server" Text='<%# DataBinder.Eval(Container, "DataItem.id") %>'></asp:Label>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="lbladdid" runat="server" Text='<%# DataBinder.Eval(Container, "DataItem.id") %>'></asp:Label>
                    </ItemTemplate>
                    <FooterTemplate>
                        <asp:Button ID="btnaddid_f" runat="server" CommandName="AddNew" Text="Insert" />
                    </FooterTemplate>
                    <HeaderStyle Font-Bold="True"></HeaderStyle>
                </asp:TemplateColumn>
                <asp:TemplateColumn HeaderText="Nombre" HeaderStyle-Font-Bold="true">
                    <EditItemTemplate>
                        <asp:TextBox ID="txtaddcontent_e" runat="server" Text='<%# DataBinder.Eval(Container, "DataItem.name") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="lbladdcontent" runat="server" Text='<%# DataBinder.Eval(Container, "DataItem.name") %>'></asp:Label>
                    </ItemTemplate>
                    <FooterTemplate>
                        <asp:TextBox ID="txtcontent_f" runat="server"></asp:TextBox>
                    </FooterTemplate>
                    <HeaderStyle Font-Bold="True"></HeaderStyle>
                </asp:TemplateColumn>
                <asp:TemplateColumn HeaderText="Hashtag" HeaderStyle-Font-Bold="true">
                    <EditItemTemplate>
                        <asp:TextBox ID="txtaddiduser_e" runat="server" Text='<%# DataBinder.Eval(Container, "DataItem.hashtag") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="lbladdiduser" runat="server" Text='<%# DataBinder.Eval(Container, "DataItem.hashtag") %>'></asp:Label>
                    </ItemTemplate>
                    <FooterTemplate>
                        <asp:TextBox ID="txtiduser_f" runat="server"></asp:TextBox>
                    </FooterTemplate>
                    <HeaderStyle Font-Bold="True"></HeaderStyle>
                </asp:TemplateColumn>
                <asp:TemplateColumn HeaderText="Descripción" HeaderStyle-Font-Bold="true">
                    <EditItemTemplate>
                        <asp:TextBox ID="txtaddnombre_e" runat="server" Text='<%# DataBinder.Eval(Container, "DataItem.descripcion") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="lbladdnombre" runat="server" Text='<%# DataBinder.Eval(Container, "DataItem.descripcion") %>'></asp:Label>
                    </ItemTemplate>
                    <FooterTemplate>
                        <asp:TextBox ID="txtnombre_f" runat="server"></asp:TextBox>
                    </FooterTemplate>
                    <HeaderStyle Font-Bold="True"></HeaderStyle>
                </asp:TemplateColumn>
                <asp:TemplateColumn HeaderText="Título" HeaderStyle-Font-Bold="true">
                    <EditItemTemplate>
                        <asp:TextBox ID="txtaddtitle_e" runat="server" Text='<%# DataBinder.Eval(Container, "DataItem.title") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="lbladdtitle" runat="server" Text='<%# DataBinder.Eval(Container, "DataItem.title") %>'></asp:Label>
                    </ItemTemplate>
                    <FooterTemplate>
                        <asp:TextBox ID="txttitle_f" runat="server"></asp:TextBox>
                    </FooterTemplate>
                    <HeaderStyle Font-Bold="True"></HeaderStyle>
                </asp:TemplateColumn>
                <asp:TemplateColumn HeaderText="Título" HeaderStyle-Font-Bold="true">
                    <EditItemTemplate>
                        <asp:TextBox ID="txtaddpts_e" runat="server" Text='<%# DataBinder.Eval(Container, "DataItem.points") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="lbladdpts" runat="server" Text='<%# DataBinder.Eval(Container, "DataItem.points") %>'></asp:Label>
                    </ItemTemplate>
                    <FooterTemplate>
                        <asp:TextBox ID="txtpts_f" runat="server"></asp:TextBox>
                    </FooterTemplate>
                    <HeaderStyle Font-Bold="True"></HeaderStyle>
                </asp:TemplateColumn>
                <asp:EditCommandColumn CancelText="Cancel" EditText="Edit" HeaderText="" UpdateText="Update"></asp:EditCommandColumn>
                <asp:ButtonColumn Text="Delete" ButtonType="PushButton" CommandName="Delete"></asp:ButtonColumn>
            </Columns>
            <PagerStyle Mode="NumericPages" />
        </asp:DataGrid>
        <asp:Label ID="lblMessage" runat="server"></asp:Label>
        </div>
    </form>
    <a href="add/new_car.aspx">Agregar nuevo auto</a>
    <br/>
    <a href="TwitterFeeds.aspx">Listados Twitter</a>
    <a href="DiasDatos.aspx">Datos días</a>
    <a href="InstagramFeeds.aspx">Listados Instagram</a>
    <a href="DatosAutos.aspx">Datos de los autos</a>
    <a href="Usuarios.aspx">Datos de los usuarios</a>
    <a href="UsuariosInstagram.aspx">Datos de los usuarios de instagram</a>
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
