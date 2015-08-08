using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using PMSApp.DAL;
using PMSApp.MODEL;

namespace PMSApp.BLL
{
    public class AppointmentManager
    {
        AppointmentGateway appointmentGateway = new AppointmentGateway();
        public string Save(Appointment appointment)
        {
            if (appointmentGateway.Save(appointment) > 0)
            {
                return "Added Successfully";
            }
            else
            {
                return "Could Not Added!";
            }
        }

        public List<Patient> GetAllPatientByDropDownList()
        {
            return appointmentGateway.GetAllPatientByDropDownList();
        }

        public List<Doctor> GetAllDoctorByDropDownList()
        {
            return appointmentGateway.GetAllDoctorByDropDownList();
        }

        public List<Appointment> GetAllAppointmentByRepeater()
        {
            return appointmentGateway.GetAllAppointmentByRepeater();
        }
    }
}