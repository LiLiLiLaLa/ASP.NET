<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ProductShow.aspx.cs" Inherits="ProductShow" %>

<%@ Register assembly="System.Web.Entity, Version=3.5.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089" namespace="System.Web.UI.WebControls" tagprefix="asp" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 102px;
        }
        .auto-style5 {
            width: 151px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        </div>
        <p>
            分类名：<asp:DropDownList ID="ddlCategory" runat="server" AutoPostBack="True" Height="35px" Width="111px" OnSelectedIndexChanged="ddlCategory_SelectedIndexChanged" DataSourceID="SqlDataSource1" DataTextField="Name" DataValueField="CategoryId">
            </asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [Category] WHERE [CategoryId] = @CategoryId" InsertCommand="INSERT INTO [Category] ([Name], [Descn]) VALUES (@Name, @Descn)" SelectCommand="SELECT * FROM [Category]" UpdateCommand="UPDATE [Category] SET [Name] = @Name, [Descn] = @Descn WHERE [CategoryId] = @CategoryId">
                <DeleteParameters>
                    <asp:Parameter Name="CategoryId" Type="Int32" />
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
        </p>
        <asp:GridView ID="gvProduct" runat="server" Height="154px" Width="541px" AllowPaging="True" AutoGenerateColumns="False" EnableModelValidation="True" OnSelectedIndexChanged="gvProduct_SelectedIndexChanged" PageSize="1" CellPadding="4" ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <Columns>
                <asp:TemplateField>
                    <ItemTemplate>
                        <table style="width: 100%; height: 192px;">
                            <tr>
                                <td class="auto-style1" rowspan="4">
                                    <asp:Image ID="imgImage" runat="server" Height="55px" ImageUrl='<%# Bind("Image") %>' Width="71px" />
                                </td>
                                <td class="auto-style5">产品名称：</td>
                                <td>
                                    <asp:Label ID="lblName" runat="server" Text='<%# Bind("Name") %>'></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style5">产品价格：</td>
                                <td>
                                    <asp:Label ID="lblListPrice" runat="server" Text='<%# Bind("ListPrice") %>'></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style5">产品描述：</td>
                                <td>
                                    <asp:Label ID="lblDescn" runat="server" Text='<%# Bind("Descn") %>'></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style5">库存：</td>
                                <td>
                                    <asp:Label ID="lblQty" runat="server" Text='<%# Bind("Qty") %>'></asp:Label>
                                </td>
                            </tr>
                        </table>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:HyperLinkField DataNavigateUrlFields="ProductId" DataNavigateUrlFormatString="~/ShopCart.aspx?ProductId={0}" HeaderText="放入购物车" Text="购买" DataTextFormatString="{0:c}" />
            </Columns>
            <EditRowStyle BackColor="#999999" />
            <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
            <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Profile]"></asp:SqlDataSource>
    </form>
</body>
</html>
