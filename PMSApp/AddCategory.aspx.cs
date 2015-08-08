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
    public partial class AddCategory : System.Web.UI.Page
    {
        CategoryManager categoryManager = new CategoryManager();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void addCategoryButton_Click(object sender, EventArgs e)
        {
            Category category = new Category();
            category.CategoryCode = categoryCodeTextBox.Text;
            category.CategoryName = categoryNameTextBox.Text;

            message.InnerHtml = categoryManager.Save(category);
        }
    }
}