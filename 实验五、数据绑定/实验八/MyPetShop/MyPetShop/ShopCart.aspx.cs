using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ShopCart : System.Web.UI.Page
{
    
    protected decimal TotalPrice()
    {
        decimal sum = 0;
        for(int j = 0;j < Profile.Cart.ProName.Count;j++)
        {
            int qty = (int)Profile.Cart.Qty[j];
            decimal listPrice = (decimal)Profile.Cart.ListPrice[j];
            sum += qty * listPrice;
        }
        return sum;
    }
    protected void Bind()
    {
        Profile.Cart.TotalPrice = TotalPrice().ToString();
        lblTotalPrice.Text = Profile.Cart.TotalPrice;
        DataTable dt = new DataTable();
            dt.Columns.Add("ProId");
            dt.Columns.Add("ProName");
            dt.Columns.Add("ListPrice");
            dt.Columns.Add("Qty");
        for(int i = 0;i < Profile.Cart.ProName.Count; i++)
        {
            DataRow row = dt.NewRow();
            row[0] = Profile.Cart.ProId[i];
            row[1] = Profile.Cart.ProName[i];
            row[2] = Profile.Cart.ListPrice[i];
            row[3] = Profile.Cart.Qty[i];
            dt.Rows.Add(row);
        }
        gvCart.DataSource = dt;
        gvCart.DataBind();
    }
    protected void AddProduct(int id)
    {
        int isExit = 0;
        for (int j = 0; j < Profile.Cart.ProName.Count; j++) {
            if(id == (int)Profile.Cart.ProId[j])
            {
                int s = (int)Profile.Cart.Qty[j];
                s++;
                Profile.Cart.Qty[j] = s;
                Profile.Save();
                isExit = 1;
            }
        }
        if(isExit == 0)
        {
            MyPetShopDataContext db = new MyPetShopDataContext();
            var products = from p in db.Product
                           where p.ProductId == id
                           select p;
            foreach(var product in products)
            {
                Profile.Cart.ListPrice.Add(product.ListPrice);
                Profile.Cart.Qty.Add(1);
                Profile.Cart.ProId.Add(product.ProductId);
                Profile.Cart.ProName.Add(product.Name);
            }
            Profile.Save();
        }

    }
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack) {
            if(Request.QueryString["ProductId"] != null)
            {
                int productId = int.Parse(Request.QueryString["ProductId"]);
                AddProduct(productId);
            }
            Bind();
        }
    }

    protected void DeleteProduct(int productId)
    {
        int j = 0;
        for(int i = 0;i < Profile.Cart.ProName.Count; i++)
        {

            if(productId == (int)Profile.Cart.ProId[i])
            {
                j = i;
                break;
            }
        }

        Profile.Cart.ListPrice.RemoveAt(j);
        Profile.Cart.ProId.RemoveAt(j);
        Profile.Cart.ProName.RemoveAt(j);
        Profile.Cart.Qty.RemoveAt(j);
        Profile.Save();
    }

    protected void gvCart_SelectedIndexChanged(object sender, EventArgs e)
    {

    }

    protected void btnDelete_Click(object sender, EventArgs e)
    {
        int productId = 0;
        for(int i = 0;i < gvCart.Rows.Count; i++)
        {
            CheckBox chkProduct = new CheckBox();
            chkProduct = (CheckBox)gvCart.Rows[i].FindControl("chkProduct");
            if (chkProduct != null)
            {
                if (chkProduct.Checked)
                {
                    productId = int.Parse(gvCart.Rows[i].Cells[1].Text);
                    DeleteProduct(productId);
                }
            }
        }
        Bind();

    }

    protected void btnClear_Click(object sender, EventArgs e)
    {
        Profile.Cart.Qty.Clear();
        Profile.Cart.ProName.Clear();
        Profile.Cart.ProId.Clear();
        Profile.Cart.ListPrice.Clear();

        Profile.Save();
        Response.Redirect("ProductShow.aspx", true);
    }

    protected void btnComputeAgain_Click(object sender, EventArgs e)
    {
        lblError.Text = "";
        MyPetShopDataContext db = new MyPetShopDataContext();
        for (int i = 0; i < gvCart.Rows.Count; i++)
        {
            TextBox txtQty = new TextBox();
            txtQty = (TextBox)gvCart.Rows[i].FindControl("txtQty");
            if (txtQty != null)
            {
                var product = (from p in db.Product
                               where p.ProductId == int.Parse(gvCart.Rows[i].Cells[1].Text)
                               select p).First();

                if (int.Parse(txtQty.Text) > product.Qty)
                {
                    lblError.Text += "Error:库存不足，商品名为" + gvCart.Rows[i].Cells[2].Text +
                        "的库存量为" + product.Qty.ToString() + "<br />";
                }
                else
                {
                    ChangeQty(int.Parse(gvCart.Rows[i].Cells[1].Text), int.Parse(txtQty.Text));
                }
            }
        }
        Bind();

    }

    protected void ChangeQty(int productId,int qty)
    {
        for(int i = 0;i < Profile.Cart.ProName.Count; i++)
        {
            if(productId == (int)Profile.Cart.ProId[i])
            {
                Profile.Cart.Qty[i] = qty;
                Profile.Save();
            }
            
        }
    }
    protected void btnSettle_Click(object sender, EventArgs e)
    {
        Response.Redirect("SubmitCart.aspx", true);
    }

    protected void btnContinue_Click(object sender, EventArgs e)
    {
        Response.Redirect("ProductShow.aspx");
    }

    protected void gvCart_SelectedIndexChanged1(object sender, EventArgs e)
    {

    }
}