﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="SqlDSEdit.aspx.cs" Inherits="Scripts_SqlDSEdit" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
    <div>
    
        分类ID:<asp:TextBox ID="txtCategoryId" 
            runat="server" Width="188px" ReadOnly="True"></asp:TextBox>
        <br />
        分类名：<asp:TextBox ID="txtName" runat="server"></asp:TextBox>
        <br />
        描述：<asp:TextBox ID="txtDescn" runat="server"></asp:TextBox>
    
    </div>
    <p>
        <asp:Button ID="btnUpdate" runat="server" Text="修改" onclick="btnUpdate_Click" />
        <asp:Button ID="btnReturn" runat="server" Text="返回" onclick="btnReturn_Click" />
    </p>
    <asp:SqlDataSource ID="sdsCategory" runat="server" 
            ConnectionString="<%$ ConnectionStrings:DatabaseConnectionString4 %>" 
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
            <asp:ControlParameter ControlID="txtName" Name="Name" PropertyName="Text" 
                Type="String" />
            <asp:ControlParameter ControlID="txtDescn" Name="Descn" PropertyName="Text" 
                Type="String" />
            <asp:ControlParameter ControlID="txtCategory" Name="Category" 
                PropertyName="Text" Type="String" />
        </UpdateParameters>
        </asp:SqlDataSource>
    
    </div>
    </form>
</body>
</html>
