<%@ Page Language="C#" AutoEventWireup="true" CodeFile="SubmitCart.aspx.cs" Inherits="SubmitCart" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 43%;
            height: 195px;
        }
        .style1
        {
            height: 29px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        </div>
        <table class="auto-style1">
            <tr>
                <td colspan="2"><b>填写发货地址</td>
            </tr>
            <tr>
                <td>送货地址</td>
                <td>
                    <asp:TextBox ID="txtGoodsAddress" runat="server" Height="35px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>邮编</td>
                <td>
                    <asp:TextBox ID="txtZip" runat="server" Height="35px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>联系电话</td>
                <td>
                    <asp:TextBox ID="txtPhone" runat="server" Height="35px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>
                    <asp:Button ID="btnContinue" runat="server" OnClick="btnContinue_Click" 
                        Text="继续购物" Width="93px" />
                    <asp:Button ID="btnSubmit" runat="server" OnClick="btnSubmit_Click" Text="提交" 
                        Width="93px" />
                </td>
            </tr>
            <tr>
                <td colspan="2" class="style1">
                    <asp:Label ID="lblMsg" runat="server"></asp:Label>
                </td>
            </tr>
        </table>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [Order] WHERE [OrderId] = @OrderId" InsertCommand="INSERT INTO [Order] ([UserName], [OrderDate], [Addr1], [Zip], [Phone], [Status], [OrderId]) VALUES (@UserName, @OrderDate, @Addr1, @Zip, @Phone, @Status, @OrderId)" SelectCommand="SELECT * FROM [Order]" UpdateCommand="UPDATE [Order] SET [UserName] = @UserName, [OrderDate] = @OrderDate, [Addr1] = @Addr1, [Zip] = @Zip, [Phone] = @Phone, [Status] = @Status WHERE [OrderId] = @OrderId">
            <DeleteParameters>
                <asp:Parameter Name="OrderId" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="UserName" Type="String" />
                <asp:Parameter Name="OrderDate" Type="DateTime" />
                <asp:Parameter Name="Addr1" Type="String" />
                <asp:Parameter Name="Zip" Type="String" />
                <asp:Parameter Name="Phone" Type="String" />
                <asp:Parameter Name="Status" Type="String" />
                <asp:Parameter Name="OrderId" Type="Int32" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="UserName" Type="String" />
                <asp:Parameter Name="OrderDate" Type="DateTime" />
                <asp:Parameter Name="Addr1" Type="String" />
                <asp:Parameter Name="Zip" Type="String" />
                <asp:Parameter Name="Phone" Type="String" />
                <asp:Parameter Name="Status" Type="String" />
                <asp:Parameter Name="OrderId" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </form>
</body>
</html>
