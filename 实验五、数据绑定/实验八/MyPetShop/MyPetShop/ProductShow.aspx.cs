using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ProductShow : System.Web.UI.Page
{

    MyPetShopDataContext db = new MyPetShopDataContext();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            var categories = from c in db.Category
                             select new
                             {
                                 c.CategoryId,
                                 c.Name
                             };
            foreach (var category in categories) {
                ddlCategory.Items.Add(new ListItem(category.Name.ToString(), category.CategoryId.ToString()));
            }
        }
    }

    protected void gvProduct_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void gvProduct_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        gvProduct.PageIndex = e.NewPageIndex;
        Bind();
    }

    protected void ddlCategory_SelectedIndexChanged(object sender, EventArgs e)
    {
        Bind();
    }

    private void Bind() {
        int categoryId = int.Parse(ddlCategory.SelectedValue);
        var products = from p in db.Product
                       where p.CategoryId == categoryId
                       select p;
        gvProduct.DataSource = products;
        gvProduct.DataBind();
    }
}