<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="admin.aspx.cs" Inherits="Vento.CMS.admin" %>

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
    <div>
    <asp:DataGrid ID="GridView1" CssClass="table table-striped table-bordered" runat="server" AutoGenerateColumns="False" DataKeyField="id" OnDeleteCommand="GridView1_DeleteCommand" OnEditCommand="GridView1_EditCommand1" OnUpdateCommand="GridView1_UpdateCommand1" OnCancelCommand="GridView1_CancelCommand" OnItemCommand="GridView1_ItemCommand1">
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
            </asp:TemplateColumn>
            <asp:TemplateColumn HeaderText="User name" HeaderStyle-Font-Bold="true">
                <EditItemTemplate>
                    <asp:TextBox ID="txtuname_e" runat="server" Text='<%# DataBinder.Eval(Container, "DataItem.uname") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="lbluname" runat="server" Text='<%# DataBinder.Eval(Container, "DataItem.uname") %>'></asp:Label>
                </ItemTemplate>
                <FooterTemplate>
                    <asp:TextBox ID="txtuname_f" runat="server"></asp:TextBox>
                </FooterTemplate>
            </asp:TemplateColumn>
            <asp:TemplateColumn HeaderText="First name" HeaderStyle-Font-Bold="true">
                <EditItemTemplate>
                    <asp:TextBox ID="txtaddfname_e" runat="server" Text='<%# DataBinder.Eval(Container, "DataItem.fname") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="lbladdfname" runat="server" Text='<%# DataBinder.Eval(Container, "DataItem.fname") %>'></asp:Label>
                </ItemTemplate>
                <FooterTemplate>
                    <asp:TextBox ID="txtaddfname_f" runat="server"></asp:TextBox>
                </FooterTemplate>
            </asp:TemplateColumn>
            <asp:TemplateColumn HeaderText="Middle name" HeaderStyle-Font-Bold="true">
                <EditItemTemplate>
                    <asp:TextBox ID="txtaddmname_e" runat="server" Text='<%# DataBinder.Eval(Container, "DataItem.mname") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="lbladdmname" runat="server" Text='<%# DataBinder.Eval(Container, "DataItem.mname") %>'></asp:Label>
                </ItemTemplate>
                <FooterTemplate>
                    <asp:TextBox ID="txtaddmname_f" runat="server"></asp:TextBox>
                </FooterTemplate>
            </asp:TemplateColumn>
            <asp:TemplateColumn HeaderText="Last name" HeaderStyle-Font-Bold="true">
                <EditItemTemplate>
                    <asp:TextBox ID="txtaddlname_e" runat="server" Text='<%# DataBinder.Eval(Container, "DataItem.lname") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="lbladdlname" runat="server" Text='<%# DataBinder.Eval(Container, "DataItem.lname") %>'></asp:Label>
                </ItemTemplate>
                <FooterTemplate>
                    <asp:TextBox ID="txtaddlname_f" runat="server"></asp:TextBox>
                </FooterTemplate>
            </asp:TemplateColumn>
            <asp:TemplateColumn HeaderText="Password" HeaderStyle-Font-Bold="true">
                <EditItemTemplate>
                    <asp:TextBox ID="txtaddpass_e" runat="server" Text='<%# DataBinder.Eval(Container, "DataItem.password") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="lbladdpass" runat="server" Text='*****'></asp:Label>
                </ItemTemplate>
                <FooterTemplate>
                    <asp:TextBox ID="txtaddpass_f" runat="server"></asp:TextBox>
                </FooterTemplate>
            </asp:TemplateColumn>
            <asp:EditCommandColumn CancelText="Cancel" EditText="Edit" HeaderText="" UpdateText="Update"></asp:EditCommandColumn>
            <asp:ButtonColumn CommandName="Delete" HeaderText="" Text="Delete"></asp:ButtonColumn>
        </Columns>
    </asp:DataGrid></div>
    <asp:Button ID="btnAddNew" CssClass="btn btn-primary" runat="server" OnClick="btnAddNew_Click" Text="New user" /><br /><br />
    <asp:Label ID="lblMessage" runat="server"></asp:Label>
    <a href="TwitterFeeds.aspx">Listados Twitter</a>
    <a href="FacebookFeeds.aspx">Listados Facebook</a>
    <a href="InstagramFeeds.aspx">Listados Instagram</a>
    </div>
    </form>
</body>
</html>