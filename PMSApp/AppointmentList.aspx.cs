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
    public partial class AppointmentLis : System.Web.UI.Page
    {
        AppointmentManager appointmentManager = new AppointmentManager();
        protected void Page_Load(object sender, EventArgs e)
        {
            LoadAllAppointmentByRepeater();
        }

        public void LoadAllAppointmentByRepeater()
        {
            List<Appointment> appointmentList = appointmentManager.GetAllAppointmentByRepeater();

            showAppointmentList.DataSource = appointmentList;
            showAppointmentList.DataBind();
        }
    }
}