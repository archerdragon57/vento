<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Usuarios.aspx.cs" Inherits="Vento.CMS.Usuarios" %>

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
                        <asp:TextBox ID="txtaddname_e" runat="server" Text='<%# DataBinder.Eval(Container, "DataItem.nombre") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="lbladdname" runat="server" Text='<%# DataBinder.Eval(Container, "DataItem.nombre") %>'></asp:Label>
                    </ItemTemplate>
                    <FooterTemplate>
                        <asp:TextBox ID="txtname_f" runat="server"></asp:TextBox>
                    </FooterTemplate>
                    <HeaderStyle Font-Bold="True"></HeaderStyle>
                </asp:TemplateColumn>
                <asp:TemplateColumn HeaderText="Twitter" HeaderStyle-Font-Bold="true">
                    <EditItemTemplate>
                        <asp:TextBox ID="txtaddtwitter_e" runat="server" Text='<%# DataBinder.Eval(Container, "DataItem.twitter_id") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="lbladdtwitter" runat="server" Text='<%# DataBinder.Eval(Container, "DataItem.twitter_id") %>'></asp:Label>
                    </ItemTemplate>
                    <FooterTemplate>
                        <asp:TextBox ID="txttwitter_f" runat="server"></asp:TextBox>
                    </FooterTemplate>
                    <HeaderStyle Font-Bold="True"></HeaderStyle>
                </asp:TemplateColumn>
                <asp:TemplateColumn HeaderText="Instagram" HeaderStyle-Font-Bold="true">
                    <EditItemTemplate>
                        <asp:TextBox ID="txtaddinstagram_e" runat="server" Text='<%# DataBinder.Eval(Container, "DataItem.instagram_id") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="lbladdinstagram" runat="server" Text='<%# DataBinder.Eval(Container, "DataItem.instagram_id") %>'></asp:Label>
                    </ItemTemplate>
                    <FooterTemplate>
                        <asp:TextBox ID="txtinstagram_f" runat="server"></asp:TextBox>
                    </FooterTemplate>
                    <HeaderStyle Font-Bold="True"></HeaderStyle>
                </asp:TemplateColumn>
                <asp:TemplateColumn HeaderText="Auto" HeaderStyle-Font-Bold="true">
                    <EditItemTemplate>
                        <asp:TextBox ID="txtaddauto_e" runat="server" Text='<%# DataBinder.Eval(Container, "DataItem.auto_id") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="lbladdauto" runat="server" Text='<%# DataBinder.Eval(Container, "DataItem.auto_id") %>'></asp:Label>
                    </ItemTemplate>
                    <FooterTemplate>
                        <asp:TextBox ID="txtauto_f" runat="server"></asp:TextBox>
                    </FooterTemplate>
                    <HeaderStyle Font-Bold="True"></HeaderStyle>
                </asp:TemplateColumn>
                <asp:TemplateColumn HeaderText="Foto" HeaderStyle-Font-Bold="true">
                    <EditItemTemplate>
                        <asp:TextBox ID="txtaddfoto_e" runat="server" Text='<%# DataBinder.Eval(Container, "DataItem.picture") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="lbladdfoto" runat="server" Text='<%# DataBinder.Eval(Container, "DataItem.picture") %>'></asp:Label>
                    </ItemTemplate>
                    <FooterTemplate>
                        <asp:TextBox ID="txtfoto_f" runat="server"></asp:TextBox>
                    </FooterTemplate>
                    <HeaderStyle Font-Bold="True"></HeaderStyle>
                </asp:TemplateColumn>
                <asp:TemplateColumn HeaderText="Likes" HeaderStyle-Font-Bold="true">
                    <EditItemTemplate>
                        <asp:TextBox ID="txtaddlike_e" runat="server" Text='<%# DataBinder.Eval(Container, "DataItem.likes") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="lbladdlike" runat="server" Text='<%# DataBinder.Eval(Container, "DataItem.likes") %>'></asp:Label>
                    </ItemTemplate>
                    <FooterTemplate>
                        <asp:TextBox ID="txtlike_f" runat="server"></asp:TextBox>
                    </FooterTemplate>
                    <HeaderStyle Font-Bold="True"></HeaderStyle>
                </asp:TemplateColumn>
                <asp:TemplateColumn HeaderText="Edad" HeaderStyle-Font-Bold="true">
                    <EditItemTemplate>
                        <asp:TextBox ID="txtaddedad_e" runat="server" Text='<%# DataBinder.Eval(Container, "DataItem.edad") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="lbladdedad" runat="server" Text='<%# DataBinder.Eval(Container, "DataItem.edad") %>'></asp:Label>
                    </ItemTemplate>
                    <FooterTemplate>
                        <asp:TextBox ID="txtedad_f" runat="server"></asp:TextBox>
                    </FooterTemplate>
                    <HeaderStyle Font-Bold="True"></HeaderStyle>
                </asp:TemplateColumn>
                <asp:TemplateColumn HeaderText="Ocupación" HeaderStyle-Font-Bold="true">
                    <EditItemTemplate>
                        <asp:TextBox ID="txtaddocupacion_e" runat="server" Text='<%# DataBinder.Eval(Container, "DataItem.ocupacion") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="lbladdocupacion" runat="server" Text='<%# DataBinder.Eval(Container, "DataItem.ocupacion") %>'></asp:Label>
                    </ItemTemplate>
                    <FooterTemplate>
                        <asp:TextBox ID="txtocupacion_f" runat="server"></asp:TextBox>
                    </FooterTemplate>
                    <HeaderStyle Font-Bold="True"></HeaderStyle>
                </asp:TemplateColumn>
                <asp:TemplateColumn HeaderText="Origen" HeaderStyle-Font-Bold="true">
                    <EditItemTemplate>
                        <asp:TextBox ID="txtaddorigen_e" runat="server" Text='<%# DataBinder.Eval(Container, "DataItem.origen") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="lbladdorigen" runat="server" Text='<%# DataBinder.Eval(Container, "DataItem.origen") %>'></asp:Label>
                    </ItemTemplate>
                    <FooterTemplate>
                        <asp:TextBox ID="txtorigen_f" runat="server"></asp:TextBox>
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
    <a href="add/new_user.aspx">Agregar nuevo usuario</a>
    <br/>
    <a href="TwitterFeeds.aspx">Listados Twitter</a>
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
