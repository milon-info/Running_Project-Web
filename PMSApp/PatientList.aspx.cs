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
    public partial class PatientList : System.Web.UI.Page
    {
        PatientManager patientManager = new PatientManager();
        protected void Page_Load(object sender, EventArgs e)
        {
            LoadAllPatientByRepeater();
        }

        public void LoadAllPatientByRepeater()
        {
            List<Patient> patientList = patientManager.GetAllPatientByRepeater();

            showPatientList.DataSource = patientList;
            showPatientList.DataBind();
        }
    }
}