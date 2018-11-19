using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class SubmitCart : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnContinue_Click(object sender, EventArgs e)
    {
        Response.Redirect("ProductShow.aspx");
    }

    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        MyPetShopDataContext db = new MyPetShopDataContext();

        Order order = new Order();
        order.UserName = "张三";
        order.OrderDate = DateTime.Now;
        order.Addr1 = txtGoodsAddress.Text.Trim();
        order.Zip = txtZip.Text.Trim();
        order.Phone = txtPhone.Text.Trim();
        order.Status = "未审核";
        db.SubmitChanges();

        int orderId = order.OrderId;
        for(int i = 0;i < Profile.Cart.ProName.Count; i++)
        {
            OrderItem orderItem = new OrderItem();
            orderItem.OrderId = orderId;
            orderItem.ProName = (String)Profile.Cart.ProName[i];
            orderItem.ListPrice = (decimal)Profile.Cart.ListPrice[i];
            orderItem.Qty = (int)Profile.Cart.Qty[i];
            orderItem.TotalPrice = (int)Profile.Cart.Qty[i] * (int)Profile.Cart.ListPrice[i];
            db.OrderItem.InsertOnSubmit(orderItem);
            db.SubmitChanges();

            var product = (from c in db.Product
                           where c.ProductId == (int)Profile.Cart.ProId[i]
                           select c
                           ).First();
            product.Qty -= orderItem.Qty;
            db.SubmitChanges();
        }

        Profile.Cart.ProId.Clear();
        Profile.Cart.ProName.Clear();
        Profile.Cart.ListPrice.Clear();
        Profile.Cart.Qty.Clear();
        Profile.Cart.TotalPrice = "";
        lblMsg.Text = "已经成功结算，谢谢光临";
    }
}