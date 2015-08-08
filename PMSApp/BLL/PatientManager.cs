using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using PMSApp.DAL;
using PMSApp.MODEL;

namespace PMSApp.BLL
{
    
    public class PatientManager
    {
        PatientGateway patientGateway = new PatientGateway();
        public string Save(Patient patient)
        {
            if (patientGateway.Save(patient) > 0)
            {
                return "Added Successfully!";
            }
            else
            {
                return "Could Not Added!";
            }
        }

        public List<Patient> GetAllPatientByRepeater()
        {
            return patientGateway.GetAllPatientByRepeater();
        }
    }
}