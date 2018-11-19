<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Theme.aspx.cs" Inherits="Theme" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
  <title>动态切换主题</title>
</head>
<body>
<form id="form1" runat="server">
  <div>
    <asp:DropDownList ID="ddlThemes" runat="server" AutoPostBack="True" Height="45px" 
          Width="200px">
      <asp:ListItem Value="0">--请选择主题--</asp:ListItem>
      <asp:ListItem>Blue</asp:ListItem>
      <asp:ListItem>Green</asp:ListItem>
    </asp:DropDownList><br />    
    <asp:Label ID="lblName" runat="server" EnableTheming="True" Text="用户名："></asp:Label>
    <asp:TextBox ID="txtName" runat="server" EnableTheming="True" Height="26px" 
          Width="184px"></asp:TextBox><br />    
    <asp:Button ID="btnSubmit" runat="server" EnableTheming="False" Text="确定" 
          Height="43px" Width="89px" />
  </div>
</form>
</body>
</html>
