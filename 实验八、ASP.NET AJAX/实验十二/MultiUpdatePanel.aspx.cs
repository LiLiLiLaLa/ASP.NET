using System;
public partial class Chap12_MultiUpdatePanel : System.Web.UI.Page
{
  protected void btnUp1_Click(object sender, EventArgs e)
  {
    lblUp1.Text = "刷新时间：" + DateTime.Now.ToLongTimeString();
  }
  protected void btnUp2_Click(object sender, EventArgs e)
  {
    lblUp2.Text = "刷新时间：" + DateTime.Now.ToLongTimeString();
  }
}