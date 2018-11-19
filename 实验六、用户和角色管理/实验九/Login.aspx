<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
  <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
  <title>登录页</title>
</head>
<body>
  <form id="form1" runat="server">
    <div>
      <asp:Login ID="Login1" runat="server" CreateUserText="我还没注册！" 
            CreateUserUrl="~/NewUser.aspx" DestinationPageUrl="~/Default.aspx" 
            PasswordRecoveryText="忘记密码了?" PasswordRecoveryUrl="~/GetPwd.aspx" 
            TextBoxStyle-Width="120" Height="224px" Width="398px">
      </asp:Login>
    </div>
  </form>
</body>
</html>
