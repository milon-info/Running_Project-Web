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
    public partial class CreateUser : System.Web.UI.Page
    {
        UserManager userManager = new UserManager();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void addUserButton_Click(object sender, EventArgs e)
        {
            User user = new User();
            user.FullName = fullNameTextBox.Text;
            user.EmailAddress = emailAddressTextBox.Text;
            user.ContactNumber = contactNumberTextBox.Text;
            user.UserName = userNameTextBox.Text;
            user.Password = passwordTextBox.Text;

            message.InnerHtml = userManager.Create(user);
        }
    }
}