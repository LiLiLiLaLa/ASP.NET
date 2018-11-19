<%@ Page Language="C#" AutoEventWireup="true" CodeFile="LinqXml.aspx.cs" Inherits="LinqXml" %>

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
            分类名：<asp:TextBox ID="txtName" runat="server">只用于显示“查询”</asp:TextBox>
        </p>
        <asp:Button ID="btnQueryAll" runat="server" Height="40px" OnClick="btnQueryAll_Click" Text="显示全部" Width="103px" />
        <asp:Button ID="btnQuery" runat="server" Height="40px" OnClick="btnQuery_Click" Text="查询" Width="103px" />
        <asp:Button ID="btnInsert" runat="server" Height="40px" OnClick="btnInsert_Click" Text="插入" Width="103px" />
        <br />
        <asp:Label ID="lblMsg" runat="server"></asp:Label>
    </form>
</body>
</html>
