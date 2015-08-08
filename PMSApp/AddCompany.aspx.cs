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
    public partial class AddCompany : System.Web.UI.Page
    {
        CompanyManager companyManager = new CompanyManager();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void addCompanyButton_Click(object sender, EventArgs e)
        {
            Company company = new Company();
            company.CompanyCode = companyCodeTextBox.Text;
            company.CompanyName = companyNameTextBox.Text;

            message.InnerHtml = companyManager.Save(company);
        }
    }
}