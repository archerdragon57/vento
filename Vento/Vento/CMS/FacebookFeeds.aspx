<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FacebookFeeds.aspx.cs" Inherits="Vento.CMS.FacebookFeeds" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
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
            <asp:TemplateColumn HeaderText="Mensaje" HeaderStyle-Font-Bold="true">
                <EditItemTemplate>
                    <asp:TextBox ID="txtaddmsg_e" runat="server" Text='<%# DataBinder.Eval(Container, "DataItem.message") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="lbladdmsg" runat="server" Text='<%# DataBinder.Eval(Container, "DataItem.message") %>'></asp:Label>
                </ItemTemplate>
                <FooterTemplate>
                    <asp:TextBox ID="txtmsg_f" runat="server"></asp:TextBox>
                </FooterTemplate>
                <HeaderStyle Font-Bold="True"></HeaderStyle>
            </asp:TemplateColumn>
            <asp:TemplateColumn HeaderText="Tipo" HeaderStyle-Font-Bold="true">
                <EditItemTemplate>
                    <asp:TextBox ID="txtaddtype_e" runat="server" Text='<%# DataBinder.Eval(Container, "DataItem.type") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="lbladdtype" runat="server" Text='<%# DataBinder.Eval(Container, "DataItem.type") %>'></asp:Label>
                </ItemTemplate>
                <FooterTemplate>
                    <asp:TextBox ID="txttype_f" runat="server"></asp:TextBox>
                </FooterTemplate>
                <HeaderStyle Font-Bold="True"></HeaderStyle>
            </asp:TemplateColumn>
            <asp:TemplateColumn HeaderText="Foto" HeaderStyle-Font-Bold="true">
                <EditItemTemplate>
                    <asp:TextBox ID="txtaddpic_e" runat="server" Text='<%# DataBinder.Eval(Container, "DataItem.picture") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="lbladdpic" runat="server" Text='<%# DataBinder.Eval(Container, "DataItem.picture") %>'></asp:Label>
                </ItemTemplate>
                <FooterTemplate>
                    <asp:TextBox ID="txtpic_f" runat="server"></asp:TextBox>
                </FooterTemplate>
                <HeaderStyle Font-Bold="True"></HeaderStyle>
            </asp:TemplateColumn>
            <asp:TemplateColumn HeaderText="Link" HeaderStyle-Font-Bold="true">
                <EditItemTemplate>
                    <asp:TextBox ID="txtaddlink_e" runat="server" Text='<%# DataBinder.Eval(Container, "DataItem.link") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="lbladdlink" runat="server" Text='<%# DataBinder.Eval(Container, "DataItem.link") %>'></asp:Label>
                </ItemTemplate>
                <FooterTemplate>
                    <asp:TextBox ID="txtlink_f" runat="server"></asp:TextBox>
                </FooterTemplate>
                <HeaderStyle Font-Bold="True"></HeaderStyle>
            </asp:TemplateColumn>
            <asp:TemplateColumn HeaderText="Status" HeaderStyle-Font-Bold="true">
                <EditItemTemplate>
                    <asp:TextBox ID="txtaddstatus" runat="server" Text='<%# DataBinder.Eval(Container, "DataItem.status_type") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="lbladdstatus" runat="server" Text='<%# DataBinder.Eval(Container, "DataItem.status_type") %>'></asp:Label>
                </ItemTemplate>
                <FooterTemplate>
                    <asp:TextBox ID="txtstatus_f" runat="server"></asp:TextBox>
                </FooterTemplate>
                <HeaderStyle Font-Bold="True"></HeaderStyle>
            </asp:TemplateColumn>
            <asp:TemplateColumn HeaderText="Edad" HeaderStyle-Font-Bold="true">
                <EditItemTemplate>
                    <asp:TextBox ID="txtaddage_e" runat="server" Text='<%# DataBinder.Eval(Container, "DataItem.icon") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="lbladdage" runat="server" Text='<%# DataBinder.Eval(Container, "DataItem.icon") %>'></asp:Label>
                </ItemTemplate>
                <FooterTemplate>
                    <asp:TextBox ID="txtage_f" runat="server"></asp:TextBox>
                </FooterTemplate>
                <HeaderStyle Font-Bold="True"></HeaderStyle>
            </asp:TemplateColumn>
            <asp:TemplateColumn HeaderText="Foto" HeaderStyle-Font-Bold="true">
                <EditItemTemplate>
                    <asp:TextBox ID="txtaddphoto" runat="server" Text='<%# DataBinder.Eval(Container, "DataItem.created_time") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="lbladdphoto" runat="server" Text='<%# DataBinder.Eval(Container, "DataItem.created_time") %>'></asp:Label>
                </ItemTemplate>
                <FooterTemplate>
                    <asp:TextBox ID="txtphoto_f" runat="server"></asp:TextBox>
                </FooterTemplate>
                <HeaderStyle Font-Bold="True"></HeaderStyle>
            </asp:TemplateColumn>
            <asp:TemplateColumn HeaderText="Foto" HeaderStyle-Font-Bold="true">
                <EditItemTemplate>
                    <asp:TextBox ID="txtaddphoto" runat="server" Text='<%# DataBinder.Eval(Container, "DataItem.updated_time") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="lbladdphoto" runat="server" Text='<%# DataBinder.Eval(Container, "DataItem.updated_time") %>'></asp:Label>
                </ItemTemplate>
                <FooterTemplate>
                    <asp:TextBox ID="txtphoto_f" runat="server"></asp:TextBox>
                </FooterTemplate>
                <HeaderStyle Font-Bold="True"></HeaderStyle>
            </asp:TemplateColumn>
            <asp:TemplateColumn HeaderText="Foto" HeaderStyle-Font-Bold="true">
                <EditItemTemplate>
                    <asp:TextBox ID="txtaddphoto" runat="server" Text='<%# DataBinder.Eval(Container, "DataItem.visible") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="lbladdphoto" runat="server" Text='<%# DataBinder.Eval(Container, "DataItem.visible") %>'></asp:Label>
                </ItemTemplate>
                <FooterTemplate>
                    <asp:TextBox ID="txtphoto_f" runat="server"></asp:TextBox>
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
