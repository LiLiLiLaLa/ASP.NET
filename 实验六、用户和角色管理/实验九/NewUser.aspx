<%@ Page Language="C#" AutoEventWireup="true" CodeFile="NewUser.aspx.cs" Inherits="NewUser" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
  <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
  <title>新用户注册页</title>
</head>
<body>
<form id="form1" runat="server">
  <div>
    <asp:CreateUserWizard ID="CreateUserWizard1" runat="server" 
          AutoGeneratePassword="True" ContinueDestinationPageUrl="~/Login.aspx" 
          OnCreatedUser="CreateUserWizard1_CreatedUser" Height="272px" Width="511px">
      <MailDefinition BodyFileName="~/ThankEmail.txt" From="ssgwcyxxd@126.com" IsBodyHtml="True" Subject="感谢注册">
      </MailDefinition>
      <WizardSteps>
        <asp:CreateUserWizardStep runat="server" />
        <asp:CompleteWizardStep runat="server" />
      </WizardSteps>
    </asp:CreateUserWizard>
  </div>
</form>
</body>
</html>
