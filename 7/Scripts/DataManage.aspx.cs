using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Scripts_DataManage : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button5_Click(object sender, EventArgs e)
    {

    }
    protected void btnQueryAll_Click(object sender, EventArgs e)
    {
        gvCategory.DataSourceID = "sasCategory";
        gvCategory.DataBind();
    }
    protected void btnFuzzy_Click(object sender, EventArgs e)
    {
        Response.Redirect("SqlDSFuzzyQuery.aspx");
    }
    protected void btnInsert_Click(object sender, EventArgs e)
    {
        Response.Redirect("SqlDSFuzzyQuery.aspx");
    }
    protected void btnEdit_Click(object sender, EventArgs e)
    {
        Response.Redirect("SqlDSEdit.aspx?CategoryId=" + txtCategoryId.Text);
    }
    protected void btnEditLing_Click(object sender, EventArgs e)
    {
        Response.Redirect("LingqEdit.aspx?CategoryId=" + txtCategoryId.Text);
    }
    protected void tbnDelete_Click(object sender, EventArgs e)
    {
        sdsCategory.Delete();
    }
    protected void txtCategoryId_TextChanged(object sender, EventArgs e)
    {

    }
}