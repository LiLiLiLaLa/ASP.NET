<%@ Page Language="C#" AutoEventWireup="true" CodeFile="WebParts.aspx.cs" Inherits="WebParts" %>

<%@ Register Src="SearchUserControl.ascx" TagName="SearchUserControl" TagPrefix="uc" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
  <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
  <title>运用Web部件</title>
</head>
<body>
  <form id="form1" runat="server">
    <div>
      <asp:WebPartManager ID="WebPartManager1" runat="server"></asp:WebPartManager>
      <asp:LoginStatus ID="logsWebParts" runat="server" LoginText="用户登录" LogoutText="用户注销" />
      <table>
        <tr style="background: #00ccff">
          <td colspan="2">Web部件应用
          </td>
          <td>
            <asp:DropDownList ID="ddlMode" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ddlMode_SelectedIndexChanged">
              <asp:ListItem>Browse</asp:ListItem>
              <asp:ListItem>Design</asp:ListItem>
              <asp:ListItem>Catalog</asp:ListItem>
              <asp:ListItem>Edit</asp:ListItem>
            </asp:DropDownList>
          </td>
        </tr>
        <tr style="vertical-align: top">
          <td style="width: 20%">
            <asp:CatalogZone ID="CatalogZone1" runat="server">
              <ZoneTemplate>
                <asp:PageCatalogPart ID="PageCatalogPart1" runat="server" />
              </ZoneTemplate>
            </asp:CatalogZone>
            <asp:EditorZone ID="EditorZone1" runat="server">
              <ZoneTemplate>
                <asp:AppearanceEditorPart ID="AppearanceEditorPart1" runat="server" />
              </ZoneTemplate>
            </asp:EditorZone>
          </td>
          <td style="width: 60%">
            <asp:WebPartZone ID="zwpMain" runat="server" WebPartVerbRenderMode="TitleBar">
              <ZoneTemplate>
                <asp:Label ID="Label1" runat="server">Web部件中的Label</asp:Label>
                <uc:SearchUserControl ID="SearchUserControl1" runat="server" Text="查找" />
                <asp:FileUpload ID="FileUpload1" runat="server" />
              </ZoneTemplate>
            </asp:WebPartZone>
          </td>
          <td style="width: 20%">
            <asp:WebPartZone ID="zwpOther" runat="server">
              <ZoneTemplate>
                <asp:Calendar ID="Calendar1" runat="server" ShowTitle="True" />

              </ZoneTemplate>
            </asp:WebPartZone>
          </td>
        </tr>
      </table>
    </div>
  </form>
</body>
</html>
