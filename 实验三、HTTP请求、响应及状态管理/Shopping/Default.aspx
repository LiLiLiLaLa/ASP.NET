<%@ Page Language="C#" AutoEventWireup="true"  CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
    </div>
    <asp:CheckBoxList ID="chklsPet" runat="server" 
        onselectedindexchanged="chklsPet_SelectedIndexChanged">
        <asp:ListItem Value="5555">斑马</asp:ListItem>
        <asp:ListItem Value="18">小鸡</asp:ListItem>
        <asp:ListItem Value="500">绵羊</asp:ListItem>
    </asp:CheckBoxList>
    <asp:Button ID="btnBuy" runat="server" Height="37px" onclick="btnBuy_Click" 
        Text="放入购物车" Width="100px" />
    <asp:Button ID="btnView" runat="server" Height="37px" onclick="btnView_Click" 
        Text="查看购物车" Width="100px" />
    </form>
</body>
</html>
