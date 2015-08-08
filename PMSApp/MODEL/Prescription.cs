using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace PMSApp.MODEL
{
    public class Prescription
    {
        public int Id { get; set; }
        public string PrescriptionDate { get; set; }
        public int PatientId { get; set; }
        public string PatientName { get; set; }
        public int DoctorId { get; set; }
        public string DoctorName { get; set; }
        public string PrescriptionDetails { get; set; }
    }
}