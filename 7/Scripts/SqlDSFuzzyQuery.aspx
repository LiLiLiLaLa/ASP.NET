<%@ Page Language="C#" AutoEventWireup="true" CodeFile="SqlDSFuzzyQuery.aspx.cs" Inherits="Scripts_SqlDSFuzzyQuery" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        分类名：<asp:TextBox ID="txtSearch" runat="server"></asp:TextBox>
        <asp:Button ID="btnSearch" runat="server" Text="搜索" onclick="btnSearch_Click" />
        <asp:Button ID="btnReturn" runat="server" Text="返回" onclick="btnReturn_Click" />
        <asp:GridView ID="gvCategory" runat="server" DataSourceID="sdsCategory" 
            EnableModelValidation="True" 
            onselectedindexchanged="gvCategory_SelectedIndexChanged" 
            AutoGenerateColumns="False" DataKeyNames="Category">
            <Columns>
                <asp:BoundField DataField="Category" HeaderText="Category" ReadOnly="True" 
                    SortExpression="Category" />
                <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                <asp:BoundField DataField="Descn" HeaderText="Descn" SortExpression="Descn" />
            </Columns>
        </asp:GridView>
        <asp:Label ID="lblMsg" runat="server" Text="Label"></asp:Label>
        <asp:SqlDataSource ID="sdsCategory" runat="server" 
            onselecting="sdsCategory_Selecting" 
            ConnectionString="<%$ ConnectionStrings:DatabaseConnectionString2 %>" 
            SelectCommand="SELECT * FROM [Table2] WHERE ([Name] LIKE '%' + @Name + '%')">
            <SelectParameters>
                <asp:ControlParameter ControlID="txtSearch" Name="Name" PropertyName="Text" 
                    Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
        <br />
    
    </div>
    </form>
</body>
</html>
