using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using PMSApp.MODEL;

namespace PMSApp.DAL
{
    public class AppointmentGateway
    {
        public string databaseConString = ConfigurationManager.ConnectionStrings["conString"].ConnectionString;
        public int Save(Appointment appointment)
        {
            SqlConnection connection = new SqlConnection(databaseConString);
            string query = "INSERT INTO tbl_appointment VALUES ('" + appointment.AppointmentDate + "','" +
                           appointment.AppointmentSerial + "','" + appointment.PatientId + "','" + appointment.DoctorId +
                           "')";
            SqlCommand command = new SqlCommand(query,connection);
            connection.Open();
            int rowAffected = command.ExecuteNonQuery();
            connection.Close();
            return rowAffected;
        }

        public List<Patient> GetAllPatientByDropDownList()
        {
            SqlConnection connection = new SqlConnection(databaseConString);
            string query = "SELECT * FROM tbl_patient";
            SqlCommand command = new SqlCommand(query, connection);
            connection.Open();

            SqlDataReader reader = command.ExecuteReader();

            List<Patient> patientList = new List<Patient>();

            while (reader.Read())
            {
                Patient patient = new Patient();
                patient.Id = int.Parse(reader["id"].ToString());
                patient.PatientName = reader["patient_name"].ToString();

                patientList.Add(patient);
            }
            reader.Close();
            connection.Close();

            return patientList;
        }

        public List<Doctor> GetAllDoctorByDropDownList()
        {
            SqlConnection connection = new SqlConnection(databaseConString);
            string query = "SELECT * FROM tbl_doctor";
            SqlCommand command = new SqlCommand(query, connection);
            connection.Open();

            SqlDataReader reader = command.ExecuteReader();

            List<Doctor> doctorList = new List<Doctor>();

            while (reader.Read())
            {
                Doctor doctor = new Doctor();
                doctor.Id = int.Parse(reader["id"].ToString());
                doctor.DoctorName = reader["doctor_name"].ToString();

                doctorList.Add(doctor);
            }
            reader.Close();
            connection.Close();

            return doctorList;
        }

        public List<Appointment> GetAllAppointmentByRepeater()
        {
            SqlConnection connection = new SqlConnection(databaseConString);
            string query = "SELECT * FROM view_appointmentList";
            SqlCommand command = new SqlCommand(query, connection);
            connection.Open();

            SqlDataReader reader = command.ExecuteReader();

            List<Appointment> appointmentList = new List<Appointment>();

            int serialNo = 1;
            while (reader.Read())
            {
                Appointment appointment = new Appointment();
                appointment.SerialNo = serialNo++;
                appointment.AppointmentDate = reader["appointment_date"].ToString();
                appointment.AppointmentSerial = int.Parse(reader["appointment_serial"].ToString());
                appointment.PatientName = reader["patient_name"].ToString();
                appointment.PatientContactNo = reader["contact_number"].ToString();
                appointment.DoctorName = reader["doctor_name"].ToString();

                appointmentList.Add(appointment);
            }
            reader.Close();
            connection.Close();

            return appointmentList;
        }
    }
}