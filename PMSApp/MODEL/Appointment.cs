using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace PMSApp.MODEL
{
    public class Appointment
    {
        public int Id { get; set; }
        public int SerialNo { get; set; }
        public string AppointmentDate { get; set; }
        public int AppointmentSerial { get; set; }
        public int PatientId { get; set; }
        public string PatientName { get; set; }
        public string PatientContactNo { get; set; }
        public int DoctorId { get; set; }
        public string DoctorName { get; set; }

    }
}