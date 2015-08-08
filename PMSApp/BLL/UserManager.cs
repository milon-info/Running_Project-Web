using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using PMSApp.DAL;
using PMSApp.MODEL;

namespace PMSApp.BLL
{
    public class UserManager
    {
        UserGateway userGateway = new UserGateway();
        public string Create(User user)
        {
            if (userGateway.Create(user) > 0)
            {
                return "Created Successfully!";
            }
            else
            {
                return "Could Not Created!";
            }
        }

        public User GetUserInformation(string loginUserName, string loginPassword)
        {
            return userGateway.GetUserInformation(loginUserName, loginPassword);
        }
    }
}