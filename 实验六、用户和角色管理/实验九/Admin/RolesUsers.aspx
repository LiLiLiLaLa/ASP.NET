<%@ Page Language="C#" AutoEventWireup="true" CodeFile="RolesUsers.aspx.cs" Inherits="Admin_RolesUsers" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
  <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
  <title>添加用户到角色和从角色中删除用户</title>
</head>
<body>
  <form id="form1" runat="server">
    <div>
      <table>
        <tr>
          <td style="vertical-align: top">
            <asp:Label ID="lblRole" runat="server" Text="角色："></asp:Label>
          </td>
          <td>
            <asp:ListBox ID="lstRoles" runat="server" AutoPostBack="true" />
          </td>
          <td style="vertical-align: top">
            <asp:Label ID="lblUser" runat="server" Text="用户："></asp:Label>
          </td>
          <td>
            <asp:ListBox ID="lstUsers" runat="server" SelectionMode="Multiple" />
          </td>
          <td style="vertical-align: top">
            <asp:Button Text="添加到角色" ID="btnToRole" runat="server" OnClick="btnToRole_Click" /><br />
            <asp:Label ID="lblMsg" runat="server"></asp:Label>
          </td>
        </tr>
      </table>
      <asp:GridView ID="gvUsers" runat="server" AutoGenerateColumns="False" CellPadding="4" GridLines="None" OnRowDeleting="gvUsers_RowDeleting">
        <HeaderStyle BackColor="navy" ForeColor="white" />
        <Columns>
          <asp:TemplateField HeaderText="用户名">
            <ItemTemplate>
              <asp:Label ID="lblName" runat="server" Text="<%# Container.DataItem %>"></asp:Label>
            </ItemTemplate>
          </asp:TemplateField>
          <asp:CommandField DeleteText="从角色中删除" ShowDeleteButton="True" />
        </Columns>
      </asp:GridView>
    </div>
  </form>
</body>
</html>
