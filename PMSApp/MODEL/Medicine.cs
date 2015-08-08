using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace PMSApp.MODEL
{
    public class Medicine
    {
        public int Id { get; set; }
        public int SerialNo { get; set; }
        public string MedicineCode { get; set; }
        public string MedicineName { get; set; }
        public string Description { get; set; }
        public int CategoryId { get; set; }
        public string CategoryName { get; set; }
        public int  CompanyId { get; set; }
        public string CompanyName { get; set; }
        public double Price { get; set; }
    }
}