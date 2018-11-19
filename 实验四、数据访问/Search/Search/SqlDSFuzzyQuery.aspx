<%@ Page Language="C#" AutoEventWireup="true" CodeFile="SqlDSFuzzyQuery.aspx.cs" Inherits="SqlDSFuzzyQuery" %>

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
            分类名：<asp:TextBox ID="txtSearch" runat="server" Height="33px" Width="167px"></asp:TextBox>
            <asp:Button ID="btnSearch" runat="server" Text="搜索" Height="29px" OnClick="btnSearch_Click" Width="48px" />
            <asp:Button ID="btnReturn" runat="server" Text="返回" Height="29px" OnClick="btnReturn_Click" Width="50px" />
        </p>
        <p>
            <asp:GridView ID="gvCategory" runat="server" AutoGenerateColumns="False" DataKeyNames="CategoryId" DataSourceID="sdsCategory" EnableModelValidation="True" Height="167px" Width="289px">
                <Columns>
                    <asp:BoundField DataField="CategoryId" HeaderText="CategoryId" ReadOnly="True" SortExpression="CategoryId" />
                    <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                    <asp:BoundField DataField="Descn" HeaderText="Descn" SortExpression="Descn" />
                </Columns>
            </asp:GridView>
        </p>
        <p>
            <asp:Label ID="lblMsg" runat="server"></asp:Label>
        </p>
        <asp:SqlDataSource ID="sdsCategory" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Category] WHERE ([Name] LIKE '%' + @Name + '%')" OnSelecting="sdsCategory_Selecting" DeleteCommand="DELETE FROM [Category] WHERE [CategoryId] = @CategoryId" InsertCommand="INSERT INTO [Category] ([Name], [Descn]) VALUES (@Name, @Descn)" UpdateCommand="UPDATE [Category] SET [Name] = @Name, [Descn] = @Descn WHERE [CategoryId] = @CategoryId" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>">
            <DeleteParameters>
                <asp:Parameter Name="CategoryId" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Name" Type="String" />
                <asp:Parameter Name="Descn" Type="String" />
            </InsertParameters>
            <SelectParameters>
                <asp:ControlParameter ControlID="txtSearch" Name="Name" PropertyName="Text" Type="String" />
            </SelectParameters>
            <UpdateParameters>
                <asp:Parameter Name="Name" Type="String" />
                <asp:Parameter Name="Descn" Type="String" />
                <asp:Parameter Name="CategoryId" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </form>
</body>
</html>
