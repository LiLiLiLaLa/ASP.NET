<%@ Page Language="C#" AutoEventWireup="true" CodeFile="DataManage.aspx.cs" Inherits="Scripts_DataManage" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <p>
        分类ID:<asp:TextBox 
            ID="txtCategoryId" runat="server" Height="30px" 
            style="margin-bottom: 0px" Width="260px" 
            ontextchanged="txtCategoryId_TextChanged">只用于“编辑”和“删除”</asp:TextBox>
    </p>
    <p>
        <asp:Button ID="btnQueryAll" runat="server" Text="显示全部" 
            onclick="btnQueryAll_Click" />
        <asp:Button ID="btnFuzzy" runat="server" Text="模糊查找" onclick="btnFuzzy_Click" />
        <asp:Button ID="btnInsert" runat="server" Text="插入" onclick="btnInsert_Click" />
        <asp:Button ID="btnEdit" runat="server" Text="编辑" onclick="btnEdit_Click" />
        <asp:Button ID="btnEditLing" runat="server" Text="编辑LINQ" 
            onclick="btnEditLing_Click" />
        <asp:Button ID="tbnDelete" runat="server" Text="删除" onclick="tbnDelete_Click" />
        <asp:GridView ID="gvCategory" runat="server">
        </asp:GridView>
        <asp:SqlDataSource ID="sdsCategory" runat="server" 
            ConnectionString="<%$ ConnectionStrings:DatabaseConnectionString %>" 
            DeleteCommand="DELETE FROM [Table2] WHERE [Category] = @Category" 
            InsertCommand="INSERT INTO [Table2] ([Category], [Name], [Descn]) VALUES (@Category, @Name, @Descn)" 
            SelectCommand="SELECT * FROM [Table2]" 
            UpdateCommand="UPDATE [Table2] SET [Name] = @Name, [Descn] = @Descn WHERE [Category] = @Category">
            <DeleteParameters>
                <asp:Parameter Name="Category" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Category" Type="String" />
                <asp:Parameter Name="Name" Type="String" />
                <asp:Parameter Name="Descn" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="Name" Type="String" />
                <asp:Parameter Name="Descn" Type="String" />
                <asp:Parameter Name="Category" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    </form>
</body>
</html>
