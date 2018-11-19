<%@ Page Language="C#" AutoEventWireup="true" CodeFile="viewCart.aspx.cs" Inherits="viewCart" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
    </div>
    <asp:Label ID="lblMsg" runat="server"></asp:Label>
    <asp:CheckBoxList ID="chklsPet" runat="server" Height="33px" 
        onselectedindexchanged="CheckBoxList1_SelectedIndexChanged" Width="100px">
    </asp:CheckBoxList>
    <br />
    <asp:Button ID="btnClear" runat="server" Height="30px" onclick="btnClear_Click" 
        Text="清空购物车" />
    <asp:Button ID="btnContinue" runat="server" Height="29px" 
        onclick="btnContinue_Click" Text="继续购物" Width="125px" />
    </form>
</body>
</html>
