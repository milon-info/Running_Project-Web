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
    public partial class AddDoctor : System.Web.UI.Page
    {
        DoctorManager doctorManager  = new DoctorManager();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void addDoctorButton_Click(object sender, EventArgs e)
        {
            Doctor doctor = new Doctor();
            doctor.DoctorCode = int.Parse(doctorCodeTextBox.Text);
            doctor.DoctorName = doctorNameTextBox.Text;
            doctor.DoctorDegree = doctorDegreeTextBox.Text;
            doctor.Specialist = specialistTextBox.Text;
            doctor.DoctorPosition = doctorPositionTextBox.Text;
            doctor.Email = emailTextBox.Text;
            doctor.ContactNumber = contactNumberTextBox.Text;

            message.InnerHtml = doctorManager.Save(doctor);

        }
    }
}