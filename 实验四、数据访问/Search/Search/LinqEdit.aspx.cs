using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class LinqEdit : System.Web.UI.Page
{
    MyPetShopDataContext db = new MyPetShopDataContext();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            var categories = from c in db.Category
                             where c.CategoryId == int.Parse(Request.QueryString["CategoryId"])
                             select c;
            if(categories != null)
            {
                foreach(Category category in categories)
                {
                    txtCategoryId.Text = category.CategoryId.ToString();
                    txtName.Text = category.Name;
                    txtDescn.Text = category.Descn;
                }
            }
        }
    }

    protected void btnUpdate_Click(object sender, EventArgs e)
    {
        var categories = from c in db.Category
                         where c.CategoryId == int.Parse(txtCategoryId.Text)
                         select c;
        if(categories != null)
        {
            foreach(Category category in categories)
            {
                category.Name = txtName.Text;
                category.Descn = txtDescn.Text;
            }
            db.SubmitChanges();
        }
    }

    protected void btnReturn_Click(object sender, EventArgs e)
    {
        Response.Redirect("DataManage.aspx");
    }
    protected void sdsCategory_Click(object sender, EventArgs e)
    {
        Response.Redirect("DataManage.aspx");
    }
}