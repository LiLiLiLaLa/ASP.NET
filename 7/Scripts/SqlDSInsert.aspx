<%@ Page Language="C#" AutoEventWireup="true" CodeFile="SqlDSInsert.aspx.cs" Inherits="Scripts_SqlDSInsert" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    分类名：<asp:TextBox ID="txtName" runat="server"></asp:TextBox>
    <br />
    描述：<asp:TextBox ID="txtDescn" runat="server"></asp:TextBox>
    <br />
    <asp:Button ID="btnInsert" runat="server" Text="插入" onclick="btnInsert_Click" />
    <asp:Button ID="btnReturn" runat="server" Text="返回" onclick="btnReturn_Click" />
    <br />
    <asp:SqlDataSource ID="sdsCategory" runat="server" 
        ConnectionString="<%$ ConnectionStrings:DatabaseConnectionString3 %>" 
        DeleteCommand="DELETE FROM [Table2] WHERE [Category] = @Category" 
        InsertCommand="INSERT INTO [Table2] ([Category], [Name], [Descn]) VALUES (@Category, @Name, @Descn)" 
        SelectCommand="SELECT * FROM [Table2]" 
        UpdateCommand="UPDATE [Table2] SET [Name] = @Name, [Descn] = @Descn WHERE [Category] = @Category">
        <DeleteParameters>
            <asp:Parameter Name="Category" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="Category" Type="String" />
            <asp:ControlParameter ControlID="txtName" Name="Name" PropertyName="Text" 
                Type="String" />
            <asp:ControlParameter ControlID="txtDescn" Name="Descn" PropertyName="Text" 
                Type="String" />
            <asp:Parameter Name="newparameter" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="Name" Type="String" />
            <asp:Parameter Name="Descn" Type="String" />
            <asp:Parameter Name="Category" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>
    </form>
</body>
</html>
