using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using PMSApp.DAL;
using PMSApp.MODEL;

namespace PMSApp.BLL
{
    public class CompanyManager
    {
        CompanyGateway companyGateway = new CompanyGateway();
        public string Save(Company company)
        {
            if (companyGateway.Save(company) > 0)
            {
                return "Added Successfully";
            }
            else
            {
                return "Could Not Found";
            }
        }
    }
}