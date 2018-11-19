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
    <asp:Label ID="Label1" runat="server" Text="学年"></asp:Label>
    <asp:DropDownList ID="ddlYear" runat="server" AutoPostBack="True" Height="80px" 
        onselectedindexchanged="DropDownList1_SelectedIndexChanged" Width="140px">
    </asp:DropDownList>
    <asp:Label ID="Label2" runat="server" Text="学期"></asp:Label>
    <asp:DropDownList ID="ddlTerm" runat="server" AutoPostBack="True" Height="80px" 
        onselectedindexchanged="ddlTerm_SelectedIndexChanged" Width="140px">
    </asp:DropDownList>
    <asp:Label ID="Label3" runat="server" Text="分院"></asp:Label>
    <asp:DropDownList ID="ddlCollege" runat="server" AutoPostBack="True" 
        Height="79px" onselectedindexchanged="ddlCollege_SelectedIndexChanged" 
        Width="190px">
    </asp:DropDownList>
    <asp:Label ID="Label4" runat="server" Text="教师"></asp:Label>
    <asp:DropDownList ID="ddlTeacher" runat="server" AutoPostBack="True" 
        Height="77px" onselectedindexchanged="ddlTeacher_SelectedIndexChanged" 
        Width="130px">
    </asp:DropDownList>
    </form>
</body>
</html>
