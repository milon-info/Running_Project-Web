using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using PMSApp.MODEL;

namespace PMSApp.DAL
{
    public class MedicineGateway
    {
        public string databaseConString = ConfigurationManager.ConnectionStrings["conString"].ConnectionString;
        public List<Category> GetAllCategoryByDropDownList()
        {
            SqlConnection connection = new SqlConnection(databaseConString);
            string query = "SELECT * FROM tbl_category";
            SqlCommand command = new SqlCommand(query, connection);
            connection.Open();

            SqlDataReader reader = command.ExecuteReader();

            List<Category> categoryList = new List<Category>();

            while (reader.Read())
            {
                Category category = new Category();
                category.Id = int.Parse(reader["id"].ToString());
                category.CategoryName = reader["category_name"].ToString();

                categoryList.Add(category);
            }
            reader.Close();
            connection.Close();

            return categoryList;
        }

        public List<Company> GetAllCompanyByDropDownList()
        {
            SqlConnection connection = new SqlConnection(databaseConString);
            string query = "SELECT * FROM tbl_company";
            SqlCommand command = new SqlCommand(query, connection);
            connection.Open();

            SqlDataReader reader = command.ExecuteReader();

            List<Company> companyList = new List<Company>();

            while (reader.Read())
            {
                Company company = new Company();
                company.Id = int.Parse(reader["id"].ToString());
                company.CompanyName = reader["company_name"].ToString();

                companyList.Add(company);
            }
            reader.Close();
            connection.Close();

            return companyList;
        }

        public int Save(Medicine medicine)
        {
            SqlConnection connection = new SqlConnection(databaseConString);
            string query = "INSERT INTO tbl_medicine VALUES ('" + medicine.MedicineCode + "','" + medicine.MedicineName +
                           "','" + medicine.Description + "','" + medicine.CategoryId + "','" + medicine.CompanyId +
                           "','" + medicine.Price + "')";
            SqlCommand command = new SqlCommand(query, connection);

            connection.Open();
            int rowAffected = command.ExecuteNonQuery();
            connection.Close();
            return rowAffected;
        }

        public List<Medicine> GetAllMedicineByRepeater()
        {
            SqlConnection connection = new SqlConnection(databaseConString);
            string query = "SELECT * FROM view_medicineList";
            SqlCommand command = new SqlCommand(query, connection);
            connection.Open();

            SqlDataReader reader = command.ExecuteReader();

            List<Medicine> medicineList = new List<Medicine>();

            int serialNo = 1;
            while (reader.Read())
            {
                Medicine medicine = new Medicine();
                medicine.SerialNo = serialNo++;
                medicine.MedicineCode = reader["medicine_code"].ToString();
                medicine.MedicineName = reader["medicine_name"].ToString();
                medicine.Description = reader["description"].ToString();
                medicine.CategoryName = reader["category_name"].ToString();
                medicine.CompanyName = reader["company_name"].ToString();
                medicine.Price = double.Parse(reader["price"].ToString());

                medicineList.Add(medicine);
            }
            reader.Close();
            connection.Close();

            return medicineList;
        }
    }
}