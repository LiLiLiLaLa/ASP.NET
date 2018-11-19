using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class DataManage : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnQueryAll_Click(object sender, EventArgs e)
    {
        gvCategory.DataSourceID = "sdsCategory";
        gvCategory.DataBind();
    }

    protected void btnFuzzy_Click(object sender, EventArgs e)
    {
        Response.Redirect("SqlDSFuzzyQuery.aspx");
    }

    protected void btnInsert_Click(object sender, EventArgs e)
    {
        Response.Redirect("SqlDSInsert.aspx");
    }

    protected void btnEdit_Click(object sender, EventArgs e)
    {
        Response.Redirect("SqlDSEdit.aspx?CategoryId = " + txtCategoryId.Text);
    }

    protected void btnEditLinq_Click(object sender, EventArgs e)
    {
        Response.Redirect("LinqEdit.aspx?CategoryId= " + txtCategoryId.Text);
    }

    protected void btnDelete_Click(object sender, EventArgs e)
    {
        sdsCategory.Delete();
    }

    protected void sdsCategory_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
    {

    }
}