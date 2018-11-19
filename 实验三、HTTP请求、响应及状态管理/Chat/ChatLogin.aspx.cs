using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ChatLogin : System.Web.UI.Page
{
    string[,] user = {{"张三","111111"},{"王五","111111"},{"李四","111111"}};
    protected void btnLogin_Click(object sender, EventArgs e)
    {
        for(int i = 0;i <= 2;i++)
        {
            if(txtName.Text == user[i,0]&&txtPassword.Text == user[i,1])
            {
                Session["user"] = user[i,0];
                Response.Redirect("Chat.htm");
            }
        }
        Response.Write("<script type = 'text/javascript'>alter('用户名或密码错误！');</script>");
    }
    protected void Page_Load(object sender, EventArgs e)
    {
         txtName.Focus();
    }
    protected void TextBox1_TextChanged(object sender, EventArgs e)
    {

    }
}