<%@ Page Language="C#" AutoEventWireup="true" CodeFile="LinqEdit.aspx.cs" Inherits="LinqEdit" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        </div>
        <p>
            分类Id：<asp:TextBox ID="txtCategoryId" runat="server" ReadOnly="True"></asp:TextBox>
        </p>
        <p>
            分类名：<asp:TextBox ID="txtName" runat="server" ReadOnly="True"></asp:TextBox>
        </p>
        <p>
            描述：&nbsp; 
            <asp:TextBox ID="txtDescn" runat="server" ReadOnly="True"></asp:TextBox>
        </p>
        <p>
            <asp:Button ID="btnUpdate" runat="server" Height="34px" Text="修改" Width="81px" OnClick="btnUpdate_Click" />
            <asp:Button ID="btnReturn" runat="server" Height="34px" Text="返回" Width="81px" OnClick="sdsCategory_Click" />
        </p>
    </form>
</body>
</html>
