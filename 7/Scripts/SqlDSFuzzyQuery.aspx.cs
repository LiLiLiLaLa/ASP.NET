﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Scripts_SqlDSFuzzyQuery : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void gvCategory_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void btnSearch_Click(object sender, EventArgs e)
    {

    }
    protected void sdsCategory_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
    {
        if (e.AffectedRows == 0)
        {
            lblMsg.Text = "没有满足条件的数据！";
        }
        else
        {
            lblMsg.Text = "";
        }
    }
    protected void btnReturn_Click(object sender, EventArgs e)
    {
        Response.Redirect("DataManage.aspx");
    }
}