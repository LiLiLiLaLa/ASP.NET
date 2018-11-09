<%@ Page Language="C#" AutoEventWireup="true" CodeFile="LingEdit.aspx.cs" Inherits="Scripts_LingEdit" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    
    <div>
    
        分类ID:<asp:TextBox ID="txtCategoryId" 
            runat="server" Width="188px" ReadOnly="True"></asp:TextBox>
        <br />
        分类名：<asp:TextBox ID="txtName" runat="server"></asp:TextBox>
        <br />
        描述：<asp:TextBox ID="txtDescn" runat="server"></asp:TextBox>
    
    </div>
    <p>
        <asp:Button ID="btnUpdate" runat="server" Text="修改" onclick="btnUpdate_Click" />
        <asp:Button ID="btnReturn" runat="server" Text="返回" onclick="btnReturn_Click" />
    </p>
    </form>
</body>
</html>
