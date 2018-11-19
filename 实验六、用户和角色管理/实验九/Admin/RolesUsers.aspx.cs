using System;
using System.Web.Security;
using System.Web.UI.WebControls;
public partial class Admin_RolesUsers : System.Web.UI.Page
{
  protected void Page_Load(object sender, EventArgs e)
  {
    if (!IsPostBack)
    {
      //绑定所有角色到lstRoles
      string[] roles = Roles.GetAllRoles();
      lstRoles.DataSource = roles;
      lstRoles.DataBind();
      //绑定所有用户到lstUsers
      MembershipUserCollection users = Membership.GetAllUsers();
      lstUsers.DataSource = users;
      lstUsers.DataBind();
    }
    if (lstRoles.SelectedItem != null)
    {
      GetUsersInRole();  //调用自定义方法显示归属于选中角色的所有用户
    }
  }
  private void GetUsersInRole()
  {
    string[] usersInRole = Roles.GetUsersInRole(lstRoles.SelectedValue);
    gvUsers.DataSource = usersInRole;
    gvUsers.DataBind();
  }
  protected void btnToRole_Click(object sender, EventArgs e)
  {
    if (lstRoles.SelectedItem == null)  //判断是否已选择角色
    {
      lblMsg.Text = "请选择角色！";
      return;
    }
    if (lstUsers.SelectedItem == null)  //判断是否已选择用户
    {
      lblMsg.Text = "请选择用户！";
      return;
    }
    //创建选择的用户列表
    string[] newUsers = new string[lstUsers.GetSelectedIndices().Length];
    for (int i = 0; i < newUsers.Length; i++)
    {
      newUsers[i] = lstUsers.Items[lstUsers.GetSelectedIndices()[i]].Value;
    }
    try
    {
      //添加用户列表到选择的角色中
      Roles.AddUsersToRole(newUsers, lstRoles.SelectedValue);
      GetUsersInRole();  //调用自定义方法显示归属于选中角色的所有用户
    }
    catch (Exception ee)
    {
      lblMsg.Text = ee.Message;
    }
  }
  protected void gvUsers_RowDeleting(object sender, GridViewDeleteEventArgs e)
  {
    //获取要删除的用户名
    GridViewRow gridViewRow = gvUsers.Rows[e.RowIndex];
    Label lblName = (Label)gridViewRow.Cells[0].FindControl("lblName");
    string username = lblName.Text;
    try
    {
      //从选中的角色中删除用户
      Roles.RemoveUserFromRole(username, lstRoles.SelectedValue);
    }
    catch (Exception ee)
    {
      lblMsg.Text = "从角色中删除用户时的错误： " + ee.GetType().ToString();
    }
    GetUsersInRole();  //调用自定义方法显示归属于选中角色的所有用户
  }
}