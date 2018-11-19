<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
  <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
  <title>首页</title>
</head>
<body>
  <form id="form1" runat="server">
    <div>
      <asp:LoginView ID="logvHeader" runat="server">
        <AnonymousTemplate>
          您还未登录！<asp:LoginStatus ID="logsAnony" runat="server" />
        </AnonymousTemplate>
        <RoleGroups>
          <asp:RoleGroup Roles="Admin">
            <ContentTemplate>
              <asp:LoginName ID="lognAdmin" runat="server" FormatString="您好，{0}" />
              <asp:LinkButton ID="lnkbtnPwd" runat="server" PostBackUrl="~/ChangePwd.aspx">密码修改</asp:LinkButton>
              <asp:LinkButton ID="lnkbtnManage" runat="server">系统管理</asp:LinkButton>
              <asp:LoginStatus ID="logsAdmin" runat="server" />
            </ContentTemplate>
          </asp:RoleGroup>
          <asp:RoleGroup Roles="Member">
            <ContentTemplate>
              <asp:LoginName ID="lognMember" runat="server" FormatString="您好，{0}" />
              <asp:LinkButton ID="lnkbtnPwd" runat="server" PostBackUrl="~/ChangePwd.aspx">密码修改</asp:LinkButton>
              <asp:LinkButton ID="lnkbtnCart" runat="server">购物记录</asp:LinkButton>
              <asp:LoginStatus ID="logsMember" runat="server" />
            </ContentTemplate>
          </asp:RoleGroup>
        </RoleGroups>
      </asp:LoginView>
    </div>
  </form>
</body>
</html>
