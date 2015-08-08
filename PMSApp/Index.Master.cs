using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using PMSApp.MODEL;

namespace PMSApp
{
    public partial class Index : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //LoginInfo login = (LoginInfo)Session["user"];
            //message.InnerHtml = login.UserName;
        }
    }
}