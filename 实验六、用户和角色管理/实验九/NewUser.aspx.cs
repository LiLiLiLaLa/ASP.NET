using System;
using System.Web.Security;
public partial class NewUser : System.Web.UI.Page
{
  protected void CreateUserWizard1_CreatedUser(object sender, EventArgs e)
  {

    Roles.AddUserToRole(CreateUserWizard1.UserName, "Member");
  }
  protected void Page_Load(object sender, EventArgs e)
  {

  }
}