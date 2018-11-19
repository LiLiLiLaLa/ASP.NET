<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ShopCart.aspx.cs" Inherits="ShopCart" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            margin-right: 0px;
            margin-bottom: 0px;
        }
        .auto-style2 {
            margin-bottom: 0px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server" class="auto-style2">
        <div>
        </div>
        <asp:GridView ID="gvCart" runat="server" Height="295px" Width="738px" 
            CssClass="auto-style1" EnableModelValidation="True" 
            OnSelectedIndexChanged="gvCart_SelectedIndexChanged" 
            AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" 
            GridLines="None">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <Columns>
                <asp:TemplateField>
                    <ItemTemplate>
                        <asp:CheckBox ID="chkProduct" runat="server" />
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:ButtonField DataTextField="ProId" HeaderText="商品ID" Text="按钮" />
                <asp:ButtonField DataTextField="ProName" HeaderText="商品名称" Text="按钮" />
                <asp:ButtonField DataTextField="ListPrice" HeaderText="商品价格" Text="按钮" />
                <asp:TemplateField HeaderText="购买数量">
                    <ItemTemplate>
                        <asp:TextBox ID="txtQty" runat="server" Text='<%# Bind("Qty") %>'></asp:TextBox>
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
            <EditRowStyle BackColor="#999999" />
            <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
            <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
        </asp:GridView>
        <br />
        <asp:Label ID="lblError" runat="server"></asp:Label>
        <br />
        温馨提示：更改购买数量后，请单击“重新计算”按钮进行更新！<br />
        总价：<asp:Label ID="lblTotalPrice" runat="server"></asp:Label>
        <asp:Button ID="btnDelete" runat="server" Height="31px" Text="删除商品" Width="83px" OnClick="btnDelete_Click" />
        <asp:Button ID="btnClear" runat="server" Height="31px" Text="清空购物车" Width="83px" OnClick="btnClear_Click" />
        <asp:Button ID="btnComputeAgain" runat="server" Height="31px" Text="重新计算" Width="83px" OnClick="btnComputeAgain_Click" />
        <asp:Button ID="btnSettle" runat="server" Height="31px" Text="结算" Width="83px" OnClick="btnSettle_Click" />
        <asp:Button ID="btnContinue" runat="server" Height="31px" Text="继续购物" Width="83px" OnClick="btnContinue_Click" />
    </form>
</body>
</html>
