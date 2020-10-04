using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Configuration;
using System.Data.SqlClient;

namespace HospitalManagementSystem
{
    public class DataOperation
    {
       
            public String connctionString = "Data Source=DESKTOP-IAOQFSJ;Initial Catalog = HospitalManagement; Integrated Security = True";

            public DataTable Getdata(String query)
            {
                SqlConnection conn = new SqlConnection(connctionString);
                if (conn.State == ConnectionState.Closed) 
                {
                    conn.Open();
                }
                SqlDataAdapter da = new SqlDataAdapter(query, conn);
                DataTable dt = new DataTable();
                da.Fill(dt);
                return dt;
            }

        public int executeQuery(string query)
        {
            SqlConnection conn = new SqlConnection(connctionString);
            if (conn.State == ConnectionState.Closed)
            {
                conn.Open();
            }
            SqlCommand cmd = new SqlCommand(query,conn);
            try
            {
                cmd.ExecuteNonQuery();
                return 1;
            }
            catch
            {
                return 0;
            }



        }
      
    }
}