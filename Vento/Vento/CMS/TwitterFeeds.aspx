<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TwitterFeeds.aspx.cs" Inherits="Vento.CMS.TwitterFeeds" %>

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
            <asp:TemplateColumn HeaderText="Twit" HeaderStyle-Font-Bold="true">
                <EditItemTemplate>
                    <asp:TextBox ID="txtaddcontent_e" runat="server" Text='<%# DataBinder.Eval(Container, "DataItem.content") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="lbladdcontent" runat="server" Text='<%# DataBinder.Eval(Container, "DataItem.content") %>'></asp:Label>
                </ItemTemplate>
                <FooterTemplate>
                    <asp:TextBox ID="txtcontent_f" runat="server"></asp:TextBox>
                </FooterTemplate>
                <HeaderStyle Font-Bold="True"></HeaderStyle>
            </asp:TemplateColumn>
            <asp:TemplateColumn HeaderText="id_usuario" HeaderStyle-Font-Bold="true">
                <EditItemTemplate>
                    <asp:TextBox ID="txtaddiduser_e" runat="server" Text='<%# DataBinder.Eval(Container, "DataItem.id_user") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="lbladdiduser" runat="server" Text='<%# DataBinder.Eval(Container, "DataItem.id_user") %>'></asp:Label>
                </ItemTemplate>
                <FooterTemplate>
                    <asp:TextBox ID="txtiduser_f" runat="server"></asp:TextBox>
                </FooterTemplate>
                <HeaderStyle Font-Bold="True"></HeaderStyle>
            </asp:TemplateColumn>
            <asp:TemplateColumn HeaderText="Nombre usuario" HeaderStyle-Font-Bold="true">
                <EditItemTemplate>
                    <asp:TextBox ID="txtaddnombre_e" runat="server" Text='<%# DataBinder.Eval(Container, "DataItem.name_user") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="lbladdnombre" runat="server" Text='<%# DataBinder.Eval(Container, "DataItem.name_user") %>'></asp:Label>
                </ItemTemplate>
                <FooterTemplate>
                    <asp:TextBox ID="txtnombre_f" runat="server"></asp:TextBox>
                </FooterTemplate>
                <HeaderStyle Font-Bold="True"></HeaderStyle>
            </asp:TemplateColumn>
            <asp:TemplateColumn HeaderText="Screen Name" HeaderStyle-Font-Bold="true">
                <EditItemTemplate>
                    <asp:TextBox ID="txtaddscreen_e" runat="server" Text='<%# DataBinder.Eval(Container, "DataItem.screen_name") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="lbladdscreen" runat="server" Text='<%# DataBinder.Eval(Container, "DataItem.screen_name") %>'></asp:Label>
                </ItemTemplate>
                <FooterTemplate>
                    <asp:TextBox ID="txtscreen_f" runat="server"></asp:TextBox>
                </FooterTemplate>
                <HeaderStyle Font-Bold="True"></HeaderStyle>
            </asp:TemplateColumn>
            <asp:TemplateColumn HeaderText="User Location" HeaderStyle-Font-Bold="true">
                <EditItemTemplate>
                    <asp:TextBox ID="txtaddlocation_e" runat="server" Text='<%# DataBinder.Eval(Container, "DataItem.user_location") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="lbladdlocation" runat="server" Text='<%# DataBinder.Eval(Container, "DataItem.user_location") %>'></asp:Label>
                </ItemTemplate>
                <FooterTemplate>
                    <asp:TextBox ID="txtlocation_f" runat="server"></asp:TextBox>
                </FooterTemplate>
                <HeaderStyle Font-Bold="True"></HeaderStyle>
            </asp:TemplateColumn>
            <asp:TemplateColumn HeaderText="Foto" HeaderStyle-Font-Bold="true">
                <EditItemTemplate>
                    <asp:TextBox ID="txtaddphone_e" runat="server" Text='<%# DataBinder.Eval(Container, "DataItem.profilebackgroundimageurl") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="lbladdphone" runat="server" Text='<%# DataBinder.Eval(Container, "DataItem.profilebackgroundimageurl") %>'></asp:Label>
                </ItemTemplate>
                <FooterTemplate>
                    <asp:TextBox ID="txtphoto_f" runat="server"></asp:TextBox>
                </FooterTemplate>
                <HeaderStyle Font-Bold="True"></HeaderStyle>
            </asp:TemplateColumn>
            <asp:TemplateColumn HeaderText="Visible" HeaderStyle-Font-Bold="true">
                <EditItemTemplate>
                    <asp:TextBox ID="txtaddphoto" runat="server" Text='<%# DataBinder.Eval(Container, "DataItem.visible") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="lbladdphoto" runat="server" Text='<%# DataBinder.Eval(Container, "DataItem.visible") %>'></asp:Label>
                </ItemTemplate>
                <FooterTemplate>
                    <asp:CheckBox  ID="checkbox_f" runat="server"></asp:CheckBox>
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
        <a href="TwitterFeeds.aspx">Listados Twitter</a>
    <a href="InstagramFeeds.aspx">Listados Instagram</a>
    <a href="DatosAutos.aspx">Datos de los autos</a>
    <a href="#">Datos de los usuarios</a>
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
