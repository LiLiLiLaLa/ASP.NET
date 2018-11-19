<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ChangePwd.aspx.cs" Inherits="ChangePwd" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
  <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
  <title>修改密码页</title>
</head>
<body>
  <form id="form1" runat="server">
    <div>
      <asp:LoginView ID="logvChangePwd" runat="server">
        <AnonymousTemplate>
          <asp:ChangePassword ID="cpwdAnony" runat="server" 
                ContinueDestinationPageUrl="~/Login.aspx" DisplayUserName="True" Height="226px" 
                Width="510px">
            <TextBoxStyle Width="120px" />
          </asp:ChangePassword>
        </AnonymousTemplate>
        <LoggedInTemplate>
          <asp:ChangePassword ID="cpwdLogged" runat="server" ContinueDestinationPageUrl="~/Default.aspx">
            <TextBoxStyle Width="120px" />
          </asp:ChangePassword>
        </LoggedInTemplate>
      </asp:LoginView>
    </div>
  </form>
</body>
</html>
