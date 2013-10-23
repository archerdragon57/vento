<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="InstagramFeeds.aspx.cs" Inherits="Vento.CMS.InstagramFeeds" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    
 <form id="form1" runat="server">
    <div>
    <asp:Button ID="btnLogout" CssClass="logoutRight btn btn-info" runat="server" Text="log out" OnClick="btnLogout_Click1" />
    <asp:DataGrid ID="GridView1" CssClass="table table-striped table-bordered" runat="server" AutoGenerateColumns="False" AllowPaging="true" OnPageIndexChanged="GridView1_PageIndexChanged" DataKeyField="id" OnDeleteCommand="GridView1_DeleteCommand" OnEditCommand="GridView1_EditCommand" OnUpdateCommand="GridView1_UpdateCommand" OnCancelCommand="GridView1_CancelCommand" OnItemCommand="GridView1_ItemCommand">
        <Columns>

            <asp:TemplateColumn HeaderText="Id" HeaderStyle-Font-Bold="true">
                <EditItemTemplate>
                    <asp:Label ID="lblId_e" runat="server" Text='<%# DataBinder.Eval(Container, "DataItem.id") %>'></asp:Label>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="lblId" runat="server" Text='<%# DataBinder.Eval(Container, "DataItem.id") %>'></asp:Label>
                </ItemTemplate>
                <FooterTemplate>
                    <asp:Button ID="btnaddid_f" runat="server" CommandName="AddNew" Text="Insert" />
                </FooterTemplate>
                <HeaderStyle Font-Bold="True"></HeaderStyle>
            </asp:TemplateColumn>

            <asp:TemplateColumn HeaderText="Caption Text" HeaderStyle-Font-Bold="true">
                <EditItemTemplate>
                    <asp:TextBox ID="txtCaptionText_e" runat="server" Text='<%# DataBinder.Eval(Container, "DataItem.captiontext") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="lblCaptionText" runat="server" Text='<%# DataBinder.Eval(Container, "DataItem.captiontext") %>'></asp:Label>
                </ItemTemplate>
                <FooterTemplate>
                    <asp:TextBox ID="txtcontent_f" runat="server"></asp:TextBox>
                </FooterTemplate>
                <HeaderStyle Font-Bold="True"></HeaderStyle>
            </asp:TemplateColumn>

            <asp:TemplateColumn HeaderText="Filter" HeaderStyle-Font-Bold="true">
                <EditItemTemplate>
                    <asp:TextBox ID="txtFilter_e" runat="server" Text='<%# DataBinder.Eval(Container, "DataItem.filter") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="lblFilter" runat="server" Text='<%# DataBinder.Eval(Container, "DataItem.filter") %>'></asp:Label>
                </ItemTemplate>
                <FooterTemplate>
                    <asp:TextBox ID="txtiduser_f" runat="server"></asp:TextBox>
                </FooterTemplate>
                <HeaderStyle Font-Bold="True"></HeaderStyle>
            </asp:TemplateColumn>

            <asp:TemplateColumn HeaderText="Dato Id usuario" HeaderStyle-Font-Bold="true">
                <EditItemTemplate>
                    <asp:TextBox ID="txtDatoId_e" runat="server" Text='<%# DataBinder.Eval(Container, "DataItem.dato_id") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="lblDatoId" runat="server" Text='<%# DataBinder.Eval(Container, "DataItem.dato_id") %>'></asp:Label>
                </ItemTemplate>
                <FooterTemplate>
                    <asp:TextBox ID="txtnombre_f" runat="server"></asp:TextBox>
                </FooterTemplate>
                <HeaderStyle Font-Bold="True"></HeaderStyle>
            </asp:TemplateColumn>

            <asp:TemplateColumn HeaderText="Like Count" HeaderStyle-Font-Bold="true">
                <EditItemTemplate>
                    <asp:TextBox ID="txtLikeCount_e" runat="server" Text='<%# DataBinder.Eval(Container, "DataItem.like_count") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="lblLikeCount" runat="server" Text='<%# DataBinder.Eval(Container, "DataItem.like_count") %>'></asp:Label>
                </ItemTemplate>
                <FooterTemplate>
                    <asp:TextBox ID="txtscreen_f" runat="server"></asp:TextBox>
                </FooterTemplate>
                <HeaderStyle Font-Bold="True"></HeaderStyle>
            </asp:TemplateColumn>

            <asp:TemplateColumn HeaderText="Link" HeaderStyle-Font-Bold="true">
                <EditItemTemplate>
                    <asp:TextBox ID="txtLink_e" runat="server" Text='<%# DataBinder.Eval(Container, "DataItem.link") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="lblLink" runat="server" Text='<%# DataBinder.Eval(Container, "DataItem.link") %>'></asp:Label>
                </ItemTemplate>
                <FooterTemplate>
                    <asp:TextBox ID="txtlocation_f" runat="server"></asp:TextBox>
                </FooterTemplate>
                <HeaderStyle Font-Bold="True"></HeaderStyle>
            </asp:TemplateColumn>

            <asp:TemplateColumn HeaderText="Location" HeaderStyle-Font-Bold="true">
                <EditItemTemplate>
                    <asp:TextBox ID="txtLocation_e" runat="server" Text='<%# DataBinder.Eval(Container, "DataItem.location") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="lblLocation" runat="server" Text='<%# DataBinder.Eval(Container, "DataItem.location") %>'></asp:Label>
                </ItemTemplate>
                <FooterTemplate>
                    <asp:TextBox ID="txtphoto_f" runat="server"></asp:TextBox>
                </FooterTemplate>
                <HeaderStyle Font-Bold="True"></HeaderStyle>
            </asp:TemplateColumn>

            <asp:TemplateColumn HeaderText="Lowres" HeaderStyle-Font-Bold="true">
                <EditItemTemplate>
                    <asp:TextBox ID="txtLowres_e" runat="server" Text='<%# DataBinder.Eval(Container, "DataItem.lowres") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="lblLowres" runat="server" Text='<%# DataBinder.Eval(Container, "DataItem.lowres") %>'></asp:Label>
                </ItemTemplate>
                <FooterTemplate>
                    <asp:CheckBox  ID="checkbox_f" runat="server"></asp:CheckBox>
                </FooterTemplate>
                <HeaderStyle Font-Bold="True"></HeaderStyle>
            </asp:TemplateColumn>

            <asp:TemplateColumn HeaderText="Normal" HeaderStyle-Font-Bold="true">
                <EditItemTemplate>
                    <asp:TextBox ID="txtNormal_e" runat="server" Text='<%# DataBinder.Eval(Container, "DataItem.normal") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="lblNormal" runat="server" Text='<%# DataBinder.Eval(Container, "DataItem.normal") %>'></asp:Label>
                </ItemTemplate>
                <FooterTemplate>
                    <asp:CheckBox  ID="checkbox_f1" runat="server"></asp:CheckBox>
                </FooterTemplate>
                <HeaderStyle Font-Bold="True"></HeaderStyle>
            </asp:TemplateColumn>

            <asp:TemplateColumn HeaderText="Thumbnail" HeaderStyle-Font-Bold="true">
                <EditItemTemplate>
                    <asp:TextBox ID="txtThumbnail_e" runat="server" Text='<%# DataBinder.Eval(Container, "DataItem.thumbnail") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="lblThumbnail" runat="server" Text='<%# DataBinder.Eval(Container, "DataItem.thumbnail") %>'></asp:Label>
                </ItemTemplate>
                <FooterTemplate>
                    <asp:CheckBox  ID="checkbox_f2" runat="server"></asp:CheckBox>
                </FooterTemplate>
                <HeaderStyle Font-Bold="True"></HeaderStyle>
            </asp:TemplateColumn>

            <asp:TemplateColumn HeaderText="Data Type" HeaderStyle-Font-Bold="true">
                <EditItemTemplate>
                    <asp:TextBox ID="txtDataType_e" runat="server" Text='<%# DataBinder.Eval(Container, "DataItem.data_type") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="lblDataType" runat="server" Text='<%# DataBinder.Eval(Container, "DataItem.data_type") %>'></asp:Label>
                </ItemTemplate>
                <FooterTemplate>
                    <asp:CheckBox  ID="checkbox_f3" runat="server"></asp:CheckBox>
                </FooterTemplate>
                <HeaderStyle Font-Bold="True"></HeaderStyle>
            </asp:TemplateColumn>

            <asp:TemplateColumn HeaderText="Dia Id" HeaderStyle-Font-Bold="true">
                <EditItemTemplate>
                    <asp:TextBox ID="txtDia_e" runat="server" Text='<%# DataBinder.Eval(Container, "DataItem.dia_id") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="lblDia" runat="server" Text='<%# DataBinder.Eval(Container, "DataItem.dia_id") %>'></asp:Label>
                </ItemTemplate>
                <FooterTemplate>
                    <asp:CheckBox  ID="checkbox_f4" runat="server"></asp:CheckBox>
                </FooterTemplate>
                <HeaderStyle Font-Bold="True"></HeaderStyle>
            </asp:TemplateColumn>

            <asp:TemplateColumn HeaderText="Visible" HeaderStyle-Font-Bold="true">
                <EditItemTemplate>
                    <asp:TextBox ID="txtVisible_e" runat="server" Text='<%# DataBinder.Eval(Container, "DataItem.visible") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="lblVisible" runat="server" Text='<%# DataBinder.Eval(Container, "DataItem.visible") %>'></asp:Label>
                </ItemTemplate>
                <FooterTemplate>
                    <asp:CheckBox  ID="checkbox_f5" runat="server"></asp:CheckBox>
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