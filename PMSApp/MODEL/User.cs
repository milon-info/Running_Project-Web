using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace PMSApp.MODEL
{
    public class User
    {
        public int Id { get; set; }
        public string FullName { get; set; }
        public string EmailAddress { get; set; }
        public string ContactNumber { get; set; }
        public string UserName { get; set; }
        public string Password { get; set; }
    }
}