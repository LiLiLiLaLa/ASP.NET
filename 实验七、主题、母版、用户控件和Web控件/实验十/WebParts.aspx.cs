using System;
using System.Web.UI.WebControls.WebParts;
public partial class WebParts : System.Web.UI.Page
{
  protected void Page_Load(object sender, EventArgs e)
  {
    if (!IsPostBack)
    {
      //给每个WebPart控件设置标题
      int i = 1;
      foreach (WebPart webPart in WebPartManager1.WebParts)
      {
        if (webPart is GenericWebPart)
        {
          webPart.Title = string.Format("WebPart控件 N0. {0}", i);
          i++;
        }
      }
    }
  }
  protected void ddlMode_SelectedIndexChanged(object sender, EventArgs e)
  {
    //根据ddlMode列表框中选择的模式修改WebPartManager1.DisplayMode，改变页面模式
    WebPartManager1.DisplayMode = WebPartManager1.DisplayModes[ddlMode.
        SelectedValue];
  }
}