<%@ Page Language="C#" AutoEventWireup="true" CodeFile="GetPwd.aspx.cs" Inherits="GetPwd" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
  <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
  <title>重置密码页</title>
</head>
<body>
  <form id="form1" runat="server">
    <div>
      <asp:PasswordRecovery ID="PasswordRecovery1" runat="server">
        <MailDefinition BodyFileName="GetPwd.txt" From="ssgwcyxxd@126.com" IsBodyHtml="True" Subject="您的新密码">
        </MailDefinition>
      </asp:PasswordRecovery>
    </div>
  </form>
</body>
</html>
