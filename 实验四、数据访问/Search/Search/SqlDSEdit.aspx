<%@ Page Language="C#" AutoEventWireup="true" CodeFile="SqlDSEdit.aspx.cs" Inherits="SqlDSEdit" %>

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
            分类ID：<asp:TextBox ID="txtCategoryId" runat="server" ReadOnly="True"></asp:TextBox>
        </p>
        <p>
            分类名：<asp:TextBox ID="txtName" runat="server"></asp:TextBox>
        </p>
        <p>
            描述：&nbsp; 
            <asp:TextBox ID="txtDescn" runat="server"></asp:TextBox>
        </p>
        <p>
            <asp:Button ID="btnUpdate" runat="server" Height="35px" Text="修改" Width="88px" OnClick="btnUpdate_Click" />
            <asp:Button ID="btnReturn" runat="server" Height="35px" Text="返回" Width="88px" OnClick="btnReturn_Click" />
        </p>
        <p>
            <asp:SqlDataSource ID="sdsCategory" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [Category] WHERE [CategoryId] = @CategoryId" InsertCommand="INSERT INTO [Category] ([Name], [Descn]) VALUES (@Name, @Descn)" SelectCommand="SELECT * FROM [Category]" UpdateCommand="UPDATE [Category] SET [Name] = @Name, [Descn] = @Descn WHERE [CategoryId] = @CategoryId">
                <DeleteParameters>
                    <asp:Parameter Name="CategoryId" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="Name" Type="String" />
                    <asp:Parameter Name="Descn" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:ControlParameter ControlID="txtName" Name="Name" PropertyName="Text" Type="String" />
                    <asp:ControlParameter ControlID="txtDescn" Name="Descn" PropertyName="Text" Type="String" />
                    <asp:ControlParameter ControlID="txtCategoryId" Name="CategoryId" PropertyName="Text" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </p>
    </form>
</body>
</html>
