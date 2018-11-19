<%@ Page Language="C#" AutoEventWireup="true" CodeFile="DelUser.aspx.cs" Inherits="Admin_DelUser" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
  <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
  <title>显示用户列表和删除用户</title>
</head>
<body>
  <form id="form1" runat="server">
    <div>
      <asp:GridView ID="gvUser" runat="server" AutoGenerateColumns="False" OnRowDeleting="gvUser_RowDeleting">
        <Columns>
          <asp:BoundField DataField="UserName" HeaderText="用户名" />
          <asp:BoundField DataField="CreationDate" HeaderText="注册时间" />
          <asp:BoundField DataField="LastLoginDate" HeaderText="最后登录时间" />
          <asp:CommandField ShowDeleteButton="True" />
        </Columns>
      </asp:GridView>
    </div>
  </form>
</body>
</html>
