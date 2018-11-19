<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ChatLogin.aspx.cs" Inherits="ChatLogin" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
    </div>
    <asp:Panel ID="Panel1" runat="server" Height="33px" Width="298px">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 我的聊天室<br /> 
        <br />
    </asp:Panel>
    用户名：<asp:TextBox ID="txtName" runat="server" Height="30px" Width="200px"></asp:TextBox>
    <asp:RequiredFieldValidator ID="rfvName" runat="server" 
        ControlToValidate="txtName" ErrorMessage="RequiredFieldValidator">*</asp:RequiredFieldValidator>
    <br />
    密码：&nbsp;&nbsp;&nbsp; 
    <asp:TextBox ID="txtPassword" runat="server" Height="30px" Width="200px"></asp:TextBox>
    <asp:RequiredFieldValidator ID="rfvPassword" runat="server" 
        ControlToValidate="txtName" ErrorMessage="RequiredFieldValidator">*</asp:RequiredFieldValidator>
    <br />
&nbsp;&nbsp;&nbsp;
    <asp:Button ID="btnLogin" runat="server" Height="43px" onclick="btnLogin_Click" 
        Text="登录" Width="84px" />
    </form>
</body>
</html>
