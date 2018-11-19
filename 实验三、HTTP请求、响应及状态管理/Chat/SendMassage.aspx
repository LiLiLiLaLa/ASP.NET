<%@ Page Language="C#" AutoEventWireup="true" CodeFile="SendMassage.aspx.cs" Inherits="SendMassage" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
    </div>
    <asp:Label ID="lblName" runat="server" Text="Label"></asp:Label>
    <br />
    <asp:TextBox ID="txtMassage" runat="server" TextMode="MultiLine"></asp:TextBox>
    <br />
    <asp:Button ID="btnSend" runat="server" onclick="btnSend_Click" Text="发送" />
    </form>
</body>
</html>
