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
    public partial class DoctorInformation : System.Web.UI.Page
    {
        DoctorManager doctorManager  = new DoctorManager();
        protected void Page_Load(object sender, EventArgs e)
        {
            LoadAllDoctorByRepeater();
        }

        public void LoadAllDoctorByRepeater()
        {
            List<Doctor> patientList = doctorManager.GetAllDoctorByRepeater();

            showDoctorInformation.DataSource = patientList;
            showDoctorInformation.DataBind();
        }
    }
}