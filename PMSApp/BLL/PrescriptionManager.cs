using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using PMSApp.DAL;
using PMSApp.MODEL;

namespace PMSApp.BLL
{
    public class PrescriptionManager
    {
        PrescriptionGateway prescriptionGateway = new PrescriptionGateway();
        public string Save(Prescription prescription)
        {
            if (prescriptionGateway.Save(prescription) > 0)
            {
                return "Added Successfully";
            }
            else
            {
                return "Could Not Added";
            }
        }

        public List<Patient> GetAllPatientByDropDownList()
        {
            return prescriptionGateway.GetAllPatientByDropDownList();
        }

        public List<Doctor> GetAllDoctorByDropDownList()
        {
            return prescriptionGateway.GetAllDoctorByDropDownList();
        }
    }
}