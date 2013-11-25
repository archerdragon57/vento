<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="Vento.CMS.login"%>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script src="../Scripts/jquery-1.7.1.js"></script>
    <script src="../Scripts/jquery-ui-1.8.20.js"></script>
</head>
<body>
    <div style="text-align: center; color: red">
        <h6><asp:Label ID="lblErrorMessage" runat="server" Text=""></asp:Label></h6>
    </div>
    <form id="form1" runat="server" class="form-signin">
        <asp:TextBox ID="txtUsername" Text="Username" class="input-block-level" runat="server"></asp:TextBox>
        <asp:TextBox ID="txtPassword" TextMode="Password" class="input-block-level" runat="server"></asp:TextBox>
        <asp:Button ID="btnLogin" class="btn btn-primary" runat="server" Text="Sign in" OnClick="btnLogin_Click" />
      </form>
    <script>
        $("#txtUsername").live('click', function () {
            if ($("#txtUsername").val() == "Username") {
                $("#txtUsername").text('');
                $("#txtUsername").val('');
            }
        });
      </script>
</body>
</html>
