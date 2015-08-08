using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using PMSApp.BLL;
using PMSApp.MODEL;

namespace PMSApp
{
    public partial class Login : System.Web.UI.Page
    {
        UserManager userManager = new UserManager();
        protected void Page_Load(object sender, EventArgs e)
        {
            
           
        }
        protected void loginButton_Click(object sender, EventArgs e)
        {
            string loginUserName = loginUserNameTextBox.Text;
            string loginPassword = loginPasswordTextBox.Text;

            User users = userManager.GetUserInformation(loginUserName, loginPassword);

            if (loginUserName == users.UserName && loginPassword == users.Password)
            {
                Session["user"] = users;
                Response.Redirect("Home.aspx");
            }
            else
            {
                message.InnerHtml = "Login Failed!";
            }


        }
    }
}