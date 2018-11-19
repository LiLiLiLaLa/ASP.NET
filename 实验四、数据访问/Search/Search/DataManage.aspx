<%@ Page Language="C#" AutoEventWireup="true" CodeFile="DataManage.aspx.cs" Inherits="DataManage" %>

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
            分类：<asp:TextBox ID="txtCategoryId" runat="server" Height="43px" Width="311px">只用于“编辑”和”删除“</asp:TextBox>
        </p>
        <p>
            <asp:Button ID="btnQueryAll" runat="server" Height="36px" Text="显示全部" OnClick="btnQueryAll_Click" />
            <asp:Button ID="btnFuzzy" runat="server" Height="36px" Text="模糊查找" OnClick="btnFuzzy_Click" />
            <asp:Button ID="btnInsert" runat="server" Height="36px" Text="插入" OnClick="btnInsert_Click" />
            <asp:Button ID="btnEdit" runat="server" Height="36px" Text="编辑" OnClick="btnEdit_Click" />
            <asp:Button ID="btnEditLinq" runat="server" Height="36px" Text="编辑LINQ" OnClick="btnEditLinq_Click" />
            <asp:Button ID="btnDelete" runat="server" Height="36px" Text="删除" OnClick="btnDelete_Click" />
        </p>
        <asp:GridView ID="gvCategory" runat="server" Height="160px" Width="370px">
        </asp:GridView>
        <asp:SqlDataSource ID="sdsCategory" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [Category] WHERE [CategoryId] = @CategoryId" InsertCommand="INSERT INTO [Category] ([Name], [Descn]) VALUES (@Name, @Descn)" SelectCommand="SELECT * FROM [Category]" UpdateCommand="UPDATE [Category] SET [Name] = @Name, [Descn] = @Descn WHERE [CategoryId] = @CategoryId" OnSelecting="sdsCategory_Selecting" ProviderName="System.Data.SqlClient">
            <DeleteParameters>
                <asp:ControlParameter ControlID="txtCategoryId" Name="CategoryId" PropertyName="Text" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Name" Type="String" />
                <asp:Parameter Name="Descn" Type="String" />
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
