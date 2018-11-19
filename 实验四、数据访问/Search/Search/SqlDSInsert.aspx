<%@ Page Language="C#" AutoEventWireup="true" CodeFile="SqlDSInsert.aspx.cs" Inherits="SqlDSInsert" %>

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
            分类名：<asp:TextBox ID="txtName" runat="server"></asp:TextBox>
        </p>
        <p>
            描述：&nbsp; 
            <asp:TextBox ID="txtDescn" runat="server"></asp:TextBox>
        </p>
        <p>
            <asp:Button ID="btnInsert" runat="server" Height="34px" Text="插入" Width="94px" OnClick="btnInsert_Click" />
            <asp:Button ID="btnReturn" runat="server" Height="34px" Text="返回" Width="94px" OnClick="btnReturn_Click" />
        </p>
        <asp:SqlDataSource ID="sdsCategory" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [Category] WHERE [CategoryId] = @CategoryId" InsertCommand="INSERT INTO [Category] ([Name], [Descn]) VALUES (@Name, @Descn)" SelectCommand="SELECT * FROM [Category]" UpdateCommand="UPDATE [Category] SET [Name] = @Name, [Descn] = @Descn WHERE [CategoryId] = @CategoryId" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>">
            <DeleteParameters>
                <asp:Parameter Name="CategoryId" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:ControlParameter ControlID="txtName" Name="Name" PropertyName="Text" Type="String" />
                <asp:ControlParameter ControlID="txtDescn" Name="Descn" PropertyName="Text" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="Name" Type="String" />
                <asp:Parameter Name="Descn" Type="String" />
                <asp:Parameter Name="CategoryId" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </form>
</body>
</html>
