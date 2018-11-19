using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;

public partial class LinqXml : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnQueryAll_Click(object sender, EventArgs e)
    {
        Response.Write("<script>window.open('Category.xml','_blank')</script>");
    }

    protected void btnQuery_Click(object sender, EventArgs e)
    {
        string xmlFilePath = Server.MapPath("~/experiment7/Category.xml");
        XElement els = XElement.Load(xmlFilePath);
        var elements = from el in els.Elements("Category")
                       where (string)el.Element("Name") == txtName.Text
                       select el;
        if(elements.Count() == 0)
        {
            lblMsg.Text = "没有满足条件的数据";
        }
        else
        {
            foreach(XElement el in elements)
            {
                lblMsg.Text = "CategoryId:" + el.Element("CategoryId").Value + "<br/>" +
                    "Name: " + el.Element("Name").Value + "<br/>" + "Descn:" + el.Element("" +
                    "Descn").Value;
            }
        }
    }

    protected void btnInsert_Click(object sender, EventArgs e)
    {
        Response.Redirect("LinqXmlInsert.aspx");
    }
}