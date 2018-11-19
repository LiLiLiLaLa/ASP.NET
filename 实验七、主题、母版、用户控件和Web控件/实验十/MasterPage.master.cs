using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class MasterPage : System.Web.UI.MasterPage
{
    MyPetShopDataContext db = new MyPetShopDataContext(); 
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Request.QueryString.Count != 0) { 
            Bind(); // 调用自定义方法Bind()绑定商品信息到gvProduct
        }
    }
    private void Bind() { 
        //获取选择的分类Id 
        if (Request.QueryString["CategoryId"] != null) { 
            int categoryId = int.Parse(Request.QueryString["CategoryId"]);
            //在Products表中查找满足条件的产品 
            var products = from p in db.Product 
                           where p.CategoryId == categoryId 
                           select p;
            //将查找到的产品绑定到
            gvProduct gvProduct.DataSource = products; 
            gvProduct.DataBind(); 
        }
    }
}
