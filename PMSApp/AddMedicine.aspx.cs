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
    public partial class AddMedicine : System.Web.UI.Page
    {
        MedicineManager medicineManager = new MedicineManager();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                List<Category> categoryList = medicineManager.GetAllCategoryByDropDownList();

                categoryNameDropDownList.DataSource = categoryList;
                categoryNameDropDownList.DataValueField = "Id";
                categoryNameDropDownList.DataTextField = "CategoryName";
                categoryNameDropDownList.DataBind();

                List<Company> companyList = medicineManager.GetAllCompanyByDropDownList();

                companyNameDropDownList.DataSource = companyList;
                companyNameDropDownList.DataValueField = "Id";
                companyNameDropDownList.DataTextField = "CompanyName";
                companyNameDropDownList.DataBind(); 
            }
        }

        protected void addMedicineButton_Click(object sender, EventArgs e)
        {
            Medicine medicine = new Medicine();
            medicine.MedicineCode = medicineCodeTextBox.Text;
            medicine.MedicineName = medicineNameTextBox.Text;
            medicine.Description = descriptionTextBox.Text;
            medicine.CategoryId = int.Parse(categoryNameDropDownList.SelectedValue);
            medicine.CompanyId = int.Parse(companyNameDropDownList.SelectedValue);
            medicine.Price = int.Parse(priceTextBox.Text);

            message.InnerHtml = medicineManager.Save(medicine);

        }
    }
}