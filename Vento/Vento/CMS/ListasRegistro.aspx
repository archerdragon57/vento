<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ListasRegistro.aspx.cs" Inherits="Vento.CMS.ListasRegistro" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script src="../Scripts/jquery-1.7.1.js"></script>
    <script src="../Scripts/jquery-ui-1.8.20.js"></script>
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
                    <asp:TextBox ID="txtaddname_e" runat="server" Text='<%# DataBinder.Eval(Container, "DataItem.name") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="lbladdname" runat="server" Text='<%# DataBinder.Eval(Container, "DataItem.name") %>'></asp:Label>
                </ItemTemplate>
                <FooterTemplate>
                    <asp:TextBox ID="txtname_f" runat="server"></asp:TextBox>
                </FooterTemplate>
                <HeaderStyle Font-Bold="True"></HeaderStyle>
            </asp:TemplateColumn>
            <asp:TemplateColumn HeaderText="Residencia" HeaderStyle-Font-Bold="true">
                <EditItemTemplate>
                    <asp:TextBox ID="txtaddresidence_e" runat="server" Text='<%# DataBinder.Eval(Container, "DataItem.residence") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="lbladdresidence" runat="server" Text='<%# DataBinder.Eval(Container, "DataItem.residence") %>'></asp:Label>
                </ItemTemplate>
                <FooterTemplate>
                    <asp:TextBox ID="txtresidence_f" runat="server"></asp:TextBox>
                </FooterTemplate>
                <HeaderStyle Font-Bold="True"></HeaderStyle>
            </asp:TemplateColumn>
            <asp:TemplateColumn HeaderText="Ocupación" HeaderStyle-Font-Bold="true">
                <EditItemTemplate>
                    <asp:TextBox ID="txtaddocupation_e" runat="server" Text='<%# DataBinder.Eval(Container, "DataItem.ocupation") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="lbladdocupation" runat="server" Text='<%# DataBinder.Eval(Container, "DataItem.ocupation") %>'></asp:Label>
                </ItemTemplate>
                <FooterTemplate>
                    <asp:TextBox ID="txtocupation_f" runat="server"></asp:TextBox>
                </FooterTemplate>
                <HeaderStyle Font-Bold="True"></HeaderStyle>
            </asp:TemplateColumn>
            <asp:TemplateColumn HeaderText="Experiencia" HeaderStyle-Font-Bold="true">
                <EditItemTemplate>
                    <asp:TextBox ID="txtaddexperience_e" runat="server" Text='<%# DataBinder.Eval(Container, "DataItem.experience") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="lbladdexperience" runat="server" Text='<%# DataBinder.Eval(Container, "DataItem.experience") %>'></asp:Label>
                </ItemTemplate>
                <FooterTemplate>
                    <asp:TextBox ID="txtexperience_f" runat="server"></asp:TextBox>
                </FooterTemplate>
                <HeaderStyle Font-Bold="True"></HeaderStyle>
            </asp:TemplateColumn>
            <asp:TemplateColumn HeaderText="Email" HeaderStyle-Font-Bold="true">
                <EditItemTemplate>
                    <asp:TextBox ID="txtaddmail_e" runat="server" Text='<%# DataBinder.Eval(Container, "DataItem.email") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="lbladdmail" runat="server" Text='<%# DataBinder.Eval(Container, "DataItem.email") %>'></asp:Label>
                </ItemTemplate>
                <FooterTemplate>
                    <asp:TextBox ID="txtmail_f" runat="server"></asp:TextBox>
                </FooterTemplate>
                <HeaderStyle Font-Bold="True"></HeaderStyle>
            </asp:TemplateColumn>
            <asp:TemplateColumn HeaderText="Teléfono" HeaderStyle-Font-Bold="true">
                <EditItemTemplate>
                    <asp:TextBox ID="txtaddphone_e" runat="server" Text='<%# DataBinder.Eval(Container, "DataItem.phone") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="lbladdphone" runat="server" Text='<%# DataBinder.Eval(Container, "DataItem.phone") %>'></asp:Label>
                </ItemTemplate>
                <FooterTemplate>
                    <asp:TextBox ID="txtphone_f" runat="server"></asp:TextBox>
                </FooterTemplate>
                <HeaderStyle Font-Bold="True"></HeaderStyle>
            </asp:TemplateColumn>
            <asp:TemplateColumn HeaderText="Foto" HeaderStyle-Font-Bold="true">
                <EditItemTemplate>
                    <asp:TextBox ID="txtaddphoto" runat="server" Text='<%# DataBinder.Eval(Container, "DataItem.photo") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="lbladdphoto" runat="server" Text='<%# DataBinder.Eval(Container, "DataItem.photo") %>'></asp:Label>
                </ItemTemplate>
                <FooterTemplate>
                    <asp:TextBox ID="txtphoto_f" runat="server"></asp:TextBox>
                </FooterTemplate>
                <HeaderStyle Font-Bold="True"></HeaderStyle>
            </asp:TemplateColumn>
            <asp:TemplateColumn HeaderText="Edad" HeaderStyle-Font-Bold="true">
                <EditItemTemplate>
                    <asp:TextBox ID="txtaddage_e" runat="server" Text='<%# DataBinder.Eval(Container, "DataItem.age") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="lbladdage" runat="server" Text='<%# DataBinder.Eval(Container, "DataItem.age") %>'></asp:Label>
                </ItemTemplate>
                <FooterTemplate>
                    <asp:TextBox ID="txtage_f" runat="server"></asp:TextBox>
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
