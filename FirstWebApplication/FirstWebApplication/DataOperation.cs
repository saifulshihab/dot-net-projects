using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace FirstWebApplication
{
    public class DataOperation
    {
        public string connectionStrting = "Data Source=DESKTOP-LPIRUA5;Initial Catalog=HospitalManagement;Integrated Security=True";

        public DataTable GetData(string query) {

            SqlConnection conn = new SqlConnection(connectionStrting);

            if (conn.State == ConnectionState.Closed) {

                conn.Open();
            }
            SqlDataAdapter da = new SqlDataAdapter(query, conn);
            DataTable dt = new DataTable();
            da.Fill(dt);
            return dt;


        }
    }

}