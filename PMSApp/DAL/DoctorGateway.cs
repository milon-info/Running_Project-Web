using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using PMSApp.MODEL;

namespace PMSApp.DAL
{
    public class DoctorGateway
    {
        public string databaseConString = ConfigurationManager.ConnectionStrings["conString"].ConnectionString;
        public int Save(Doctor doctor)
        {
            SqlConnection connection = new SqlConnection(databaseConString);
            string query = "INSERT INTO tbl_doctor VALUES('" + doctor.DoctorCode + "','" + doctor.DoctorName + "','" +
                           doctor.DoctorDegree + "','" + doctor.Specialist + "','" + doctor.DoctorPosition + "','" +
                           doctor.Email + "','" + doctor.ContactNumber + "')";
            SqlCommand command = new SqlCommand(query,connection);
            connection.Open();
            int rowAffected = command.ExecuteNonQuery();
            connection.Close();
            return rowAffected;

        }

        public List<Doctor> GetAllDoctorByRepeater()
        {
            SqlConnection connection = new SqlConnection(databaseConString);
            string query = "SELECT * FROM tbl_doctor";
            SqlCommand command = new SqlCommand(query, connection);
            connection.Open();

            SqlDataReader reader = command.ExecuteReader();

            List<Doctor> doctorList = new List<Doctor>();

            int serialNo = 1;
            while (reader.Read())
            {
                Doctor doctor = new Doctor();
                doctor.SerialNo = serialNo++;
                doctor.DoctorCode = int.Parse(reader["doctor_code"].ToString());
                doctor.DoctorName = reader["doctor_name"].ToString();
                doctor.DoctorDegree = reader["doctor_degree"].ToString();
                doctor.Specialist = reader["Specialist"].ToString();
                doctor.DoctorPosition = reader["doctor_position"].ToString();
                doctor.Email = reader["email"].ToString();
                doctor.ContactNumber = reader["contact_number"].ToString();
                
                doctorList.Add(doctor);
            }
            reader.Close();
            connection.Close();

            return doctorList;
        }
    }
}