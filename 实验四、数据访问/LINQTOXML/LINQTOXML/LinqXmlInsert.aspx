<%@ Page Language="C#" AutoEventWireup="true" CodeFile="LinqXmlInsert.aspx.cs" Inherits="LinqXmlInsert" %>

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
            分类Id：<asp:TextBox ID="txtCategoryId" runat="server"></asp:TextBox>
        </p>
        <p>
            分类名：<asp:TextBox ID="txtName" runat="server"></asp:TextBox>
        </p>
        <p>
            描述：&nbsp; 
            <asp:TextBox ID="txtDescn" runat="server"></asp:TextBox>
        </p>
        <asp:Button ID="btnInsert" runat="server" Height="33px" OnClick="btnInsert_Click" Text="插入" Width="80px" />
        <asp:Button ID="btnReturn" runat="server" Height="33px" OnClick="btnReturn_Click" Text="返回" Width="80px" />
    </form>
</body>
</html>
