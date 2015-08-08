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
    public partial class AddPrescription : System.Web.UI.Page
    {
        PrescriptionManager prescriptionManager = new PrescriptionManager();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                List<Patient> patientList = prescriptionManager.GetAllPatientByDropDownList();

                patientNameDropDownList.DataSource = patientList;
                patientNameDropDownList.DataValueField = "Id";
                patientNameDropDownList.DataTextField = "PatientName";
                patientNameDropDownList.DataBind();

                List<Doctor> doctorList = prescriptionManager.GetAllDoctorByDropDownList();

                doctorNameDropDownList.DataSource = doctorList;
                doctorNameDropDownList.DataValueField = "Id";
                doctorNameDropDownList.DataTextField = "DoctorName";
                doctorNameDropDownList.DataBind();
            }
        }

        protected void addPrescriptionButton_Click(object sender, EventArgs e)
        {
            Prescription prescription = new Prescription();
            prescription.PrescriptionDate = prescriptionDateTextBox.Text;
            prescription.PatientId = int.Parse(patientNameDropDownList.Text);
            prescription.DoctorId = int.Parse(doctorNameDropDownList.Text);
            prescription.PrescriptionDetails = prescriptionDetailsTextArea.InnerText;

            message.InnerHtml = prescriptionManager.Save(prescription);
        }
    }
}