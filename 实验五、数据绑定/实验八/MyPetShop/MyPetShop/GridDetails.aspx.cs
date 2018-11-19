using System.Web.UI.WebControls;
public partial class Chap8_GridDelete : System.Web.UI.Page
{
  protected void gvCategory_RowDataBound(object sender, GridViewRowEventArgs e)
  {
    if (e.Row.RowType == DataControlRowType.DataRow)
    {
      try
      {
   
        LinkButton lnkbtnDelete = (LinkButton)e.Row.Cells[4].Controls[0];
       
        lnkbtnDelete.OnClientClick = "return confirm('您真要删除分类名为" +
 e.Row.Cells[1].Text + "的记录吗?');";
      }
      catch
      {
        
      }
    }
  }
}