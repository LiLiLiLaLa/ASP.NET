<%@ Page Language="C#" AutoEventWireup="true"  CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        &nbsp;&nbsp;&nbsp; 简易计算器<br />
        <asp:TextBox ID="txtDisplay" runat="server" Height="35px" 
            ontextchanged="TextBox1_TextChanged" ReadOnly="True" Width="245px"></asp:TextBox>
        <br />
        <asp:Button ID="btnOne" runat="server" onclick="btnOne_Click" Text="1" 
            Width="82px" />
        <asp:Button ID="btnTwo" runat="server" Height="27px" onclick="btnTwo_Click" 
            Text="2" Width="82px" />
        <asp:Button ID="btnThree" runat="server" Height="27px" onclick="btnThree_Click" 
            Text="3" Width="82px" />
        <br />
        <asp:Button ID="btnAdd" runat="server" onclick="btnAdd_Click" Text="+" 
            Width="82px" />
        <asp:Button ID="Subtract" runat="server" onclick="Subtract_Click" Text="-" 
            Width="82px" />
        <asp:Button ID="Equal" runat="server" onclick="Equal_Click" Text="=" 
            Width="82px" />
        <br />
    
    </div>
    </form>
</body>
</html>
