using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using PMSApp.DAL;
using PMSApp.MODEL;

namespace PMSApp.BLL
{
    public class DoctorManager
    {
        DoctorGateway doctorGateway = new DoctorGateway();
        public string Save(Doctor doctor)
        {
            if (doctorGateway.Save(doctor) > 0)
            {
                return "Added Successfully";
            }
            else
            {
                return "Could Not Added!";
            }
        }

        public List<Doctor> GetAllDoctorByRepeater()
        {
            return doctorGateway.GetAllDoctorByRepeater();
        }
    }
}