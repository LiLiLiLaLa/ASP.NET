using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class SqlDSEdit : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            DataView dv = (DataView)sdsCategory.Select(new DataSourceSelectArguments());
            DataTable dt = dv.ToTable();
            txtCategoryId.Text = dt.Rows[0]["CategoryId"].ToString();
            txtName.Text = dt.Rows[0]["Name"].ToString();
            txtDescn.Text = dt.Rows[0]["Descn"].ToString();
        }
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