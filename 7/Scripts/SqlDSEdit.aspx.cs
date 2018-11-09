using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class Scripts_SqlDSEdit : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            DataView dv = (DataView)sdsCategory.Select(new DataSourceSelectArguments());
            DataTable dt = dv.ToTable();
            txtCategoryId.Text = dt.Rows[0]["Category"].ToString();
            txtName.Text = dt.Rows[0]["Name"].ToString();
            txtDescn.Text = dt.Rows[0]["Descn"].ToString();

        }

    }
    protected void txtCategory_TextChanged(object sender, EventArgs e)
    {

    }
    protected void btnUpdate_Click(object sender, EventArgs e)
    {
        sdsCategory.Update();
    }
    protected void btnReturn_Click(object sender, EventArgs e)
    {
        Response.Redirect("DataManage.aspx");
    }
}