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
    public partial class AddAppointment : System.Web.UI.Page
    {
        AppointmentManager appointmentManager = new AppointmentManager();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                List<Patient> patientList = appointmentManager.GetAllPatientByDropDownList();

                patientNameDropDownList.DataSource = patientList;
                patientNameDropDownList.DataValueField = "Id";
                patientNameDropDownList.DataTextField = "PatientName";
                patientNameDropDownList.DataBind();

                List<Doctor> doctorList = appointmentManager.GetAllDoctorByDropDownList();

                doctorNameDropDownList.DataSource = doctorList;
                doctorNameDropDownList.DataValueField = "Id";
                doctorNameDropDownList.DataTextField = "DoctorName";
                doctorNameDropDownList.DataBind();
            }

        }

        protected void addAppointmentButton_Click(object sender, EventArgs e)
        {
            Appointment appointment = new Appointment();
            appointment.AppointmentDate = appointmentDateTextBox.Text;
            appointment.AppointmentSerial = int.Parse(appointmentSerialTextBox.Text);
            appointment.PatientId = int.Parse(patientNameDropDownList.SelectedValue);
            appointment.DoctorId = int.Parse(doctorNameDropDownList.SelectedValue);

            message.InnerHtml = appointmentManager.Save(appointment);
        }

    }
}