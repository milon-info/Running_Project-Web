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
    public partial class AddPatient : System.Web.UI.Page
    {
        PatientManager patientManager = new PatientManager();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void addPatientButton_Click(object sender, EventArgs e)
        {
            Patient patient = new Patient();
            patient.PatientName = patientNameTextBox.Text;
            patient.Address = addressTextBox.Text;
            patient.Email = emailTextBox.Text;
            patient.ContactNo = contactNumberTextBox.Text;
            patient.Age = int.Parse(ageTextBox.Text);

            message.InnerHtml = patientManager.Save(patient);
        }
    }
}