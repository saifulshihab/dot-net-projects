using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace Inpatient
{
    public class DataOperation
    {
        public string connectionString = "Data Source=DESKTOP-IAOQFSJ;Initial Catalog=Patient;Integrated Security=True";

        public DataTable GetData(string query)
        {
            SqlConnection conn = new SqlConnection(connectionString);
            if (conn.State == ConnectionState.Closed)
            {
                conn.Open();
            }
            SqlDataAdapter da = new SqlDataAdapter(query,conn);
            DataTable dt = new DataTable();
            da.Fill(dt);
            return dt;
        }

        public int executeQuery(string query)
        {
            SqlConnection conn = new SqlConnection(connectionString);
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