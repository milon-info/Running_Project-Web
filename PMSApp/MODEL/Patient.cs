using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace PMSApp.MODEL
{
    public class Patient
    {
        public int Id { get; set; }
        public int SerialNo { get; set; }
        public string PatientName { get; set; }
        public string Address { get; set; }
        public string Email { get; set; }
        public string ContactNo { get; set; }
        public int Age { get; set; }
    }
}