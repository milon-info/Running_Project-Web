using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace PMSApp.MODEL
{
    public class Doctor
    {
        public int Id { get; set; }
        public int SerialNo { get; set; }
        public int DoctorCode { get; set; }
        public string DoctorName { get; set; }
        public string DoctorDegree { get; set; }
        public string Specialist { get; set; }
        public string DoctorPosition { get; set; }
        public string Email { get; set; }
        public string ContactNumber { get; set; }
        
    }
}