using System;
using System.Web.Security;
using System.Web.UI.WebControls;
public partial class Admin_DelUser : System.Web.UI.Page
{
  protected void Page_Load(object sender, EventArgs e)
  {
    if (!IsPostBack)
    {
      GetAllUsers();  //调用自定义方法显示所有用户信息
    }
  }
  private void GetAllUsers()
  {
    MembershipUserCollection users = Membership.GetAllUsers();  //获取所有的用户信息集合
    gvUser.DataSource = users;
    gvUser.DataBind();
  }
  protected void gvUser_RowDeleting(object sender, GridViewDeleteEventArgs e)
  {
    GridViewRow gvRow = gvUser.Rows[e.RowIndex];
    string userName = gvRow.Cells[0].Text;
    Membership.DeleteUser(userName);  //删除用户
    GetAllUsers();  //调用自定义方法显示所有用户信息
  }
}