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
    public partial class MedicineList : System.Web.UI.Page
    {
        MedicineManager medicineManager = new MedicineManager();
        protected void Page_Load(object sender, EventArgs e)
        {
            LoadAllMedicineByRepeater();
        }
        public void LoadAllMedicineByRepeater()
        {
            List<Medicine> aMedicineList = medicineManager.GetAllMedicineByRepeater();

            showMedicineList.DataSource = aMedicineList;
            showMedicineList.DataBind();
        }
    }
}