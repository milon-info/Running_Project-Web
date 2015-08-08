using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using PMSApp.MODEL;

namespace PMSApp.DAL
{
    
    public class PatientGateway
    {
        public string databaseConString = ConfigurationManager.ConnectionStrings["conString"].ConnectionString;  
        public int Save(Patient patient)
        {
            SqlConnection connection = new SqlConnection(databaseConString);
            string query = "INSERT INTO tbl_patient VALUES('" + patient.PatientName + "','" + patient.Address + "','" +
                           patient.Email + "','" + patient.ContactNo + "','" + patient.Age +
                           "')";
            SqlCommand command = new SqlCommand(query, connection);

            connection.Open();
            int rowAffected = command.ExecuteNonQuery();
            connection.Close();
            return rowAffected;
        }

        public List<Patient> GetAllPatientByRepeater()
        {
            SqlConnection connection = new SqlConnection(databaseConString);
            string query = "SELECT * FROM tbl_patient";
            SqlCommand command = new SqlCommand(query, connection);
            connection.Open();

            SqlDataReader reader = command.ExecuteReader();

            List<Patient> patientList = new List<Patient>();

            int serialNo = 1;
            while (reader.Read())
            {
                Patient patient = new Patient();
                patient.SerialNo = serialNo++;
                patient.PatientName = reader["patient_name"].ToString();
                patient.Address = reader["address"].ToString();
                patient.Email = reader["email"].ToString();
                patient.ContactNo = reader["contact_number"].ToString();
                patient.Age = int.Parse(reader["age"].ToString());

                patientList.Add(patient);
            }
            reader.Close();
            connection.Close();

            return patientList;
        }
    }
}