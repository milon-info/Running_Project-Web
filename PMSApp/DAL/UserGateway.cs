using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using PMSApp.MODEL;

namespace PMSApp.DAL
{
    public class UserGateway
    {
        public string databaseConString = ConfigurationManager.ConnectionStrings["conString"].ConnectionString;
        public int Create(User user)
        {
            SqlConnection connection = new SqlConnection(databaseConString);
            string query = "INSERT INTO tbl_user VALUES('" + user.FullName + "','" + user.EmailAddress + "','" +
                           user.ContactNumber + "','" + user.UserName + "','" + user.Password + "')";
            SqlCommand command = new SqlCommand(query, connection);

            connection.Open();
            int rowAffected = command.ExecuteNonQuery();
            connection.Close();
            return rowAffected;
        }

        public User GetUserInformation(string loginUserName, string loginPassword)
        {
            SqlConnection connection = new SqlConnection(databaseConString);
            string query = "SELECT * FROM tbl_user";
            SqlCommand command = new SqlCommand(query, connection);
            connection.Open();

            SqlDataReader reader = command.ExecuteReader();

            User user = new User();

            while (reader.Read())
            {
                user.UserName = reader["username"].ToString();
                user.Password = reader["password"].ToString();
            }
            reader.Close();
            connection.Close();

            return user;
        }
    }
}