using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using PMSApp.DAL;
using PMSApp.MODEL;

namespace PMSApp.BLL
{
    public class MedicineManager
    {
        MedicineGateway medicineGateway = new MedicineGateway();
        public List<Category> GetAllCategoryByDropDownList()
        {
            return medicineGateway.GetAllCategoryByDropDownList();
        }

        public List<Company> GetAllCompanyByDropDownList()
        {
            return medicineGateway.GetAllCompanyByDropDownList();
        }

        public string Save(Medicine medicine)
        {
            if (medicineGateway.Save(medicine) > 0)
            {
                return "Added Successfully!";
            }
            else
            {
                return "Could Not Added!";
            }
        }

        public List<Medicine> GetAllMedicineByRepeater()
        {
            return medicineGateway.GetAllMedicineByRepeater();
        }
    }
}