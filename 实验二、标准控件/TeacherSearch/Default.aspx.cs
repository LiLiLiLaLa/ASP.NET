using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            BindYear();
            BindTerm();
            BindCollege();
            BindTeacher();
        }
    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void ddlCollege_SelectedIndexChanged(object sender, EventArgs e)
    {
        BindTeacher();
    }

    protected void ddlTerm_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void ddlTeacher_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void BindYear()
    {
        ddlYear.Items.Clear();
        int startYear = DateTime.Now.Year - 10;
        int currentYear = DateTime.Now.Year;
        for(int i = startYear;i <= currentYear;i++)
        {
            ddlYear.Items.Add(new ListItem((i - 1).ToString() + "-" + currentYear.ToString()));
        }
        ddlYear.SelectedValue = (currentYear - 1).ToString() + "-" + currentYear.ToString();
    }
    protected void BindTerm()
    {
        ddlTerm.Items.Clear();
        for (int i = 1; i <= 2; i++)
        {
            ddlTerm.Items.Add(i.ToString());
        }
    }
    protected void BindCollege()
    {
        ddlCollege.Items.Clear();
        ddlCollege.Items.Add(new ListItem("数学与信息工程学院"));
        ddlCollege.Items.Add(new ListItem("计算机科学学院"));
        ddlCollege.Items.Add(new ListItem("机电学院"));
    }
    protected void BindTeacher()
    {
        ddlTeacher.Items.Clear();
        switch (ddlCollege.SelectedValue)
        {
            case "数学与信息工程学院":
                ddlTeacher.Items.Add(new ListItem("张大明"));
                ddlTeacher.Items.Add(new ListItem("张二明"));
                ddlTeacher.Items.Add(new ListItem("张三明"));
                break;
            case "计算机科学学院":
                ddlTeacher.Items.Add(new ListItem("牛大明"));
                ddlTeacher.Items.Add(new ListItem("牛二明"));
                break;
            case "j机电学院":
                ddlTeacher.Items.Add(new ListItem("李大明"));
                ddlTeacher.Items.Add(new ListItem("李二明"));
                break;
        }
    }
}