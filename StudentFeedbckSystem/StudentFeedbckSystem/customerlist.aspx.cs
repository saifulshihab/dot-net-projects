using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
namespace OnlineBookstore
{
    public partial class customerlist : System.Web.UI.Page
    {
        DataOperation d = new DataOperation();
        protected void Page_Load(object sender, EventArgs e)
        {

            SqlConnection conn = new SqlConnection(d.connectionString);
            if (conn.State == ConnectionState.Closed)
            {
                conn.Open();
            }
            string query = @"SELECT [name]
                              ,[username]
                              ,[password]
                              ,[confirmpassword]
                              ,[age]
                              ,[gender]
                              ,[email]
                              ,[phone]
                          FROM [dbo].[Customer]";
            if (d.executeQuery(query) == 1)
            {
                GridView1.DataSource = d.GetData(query);
                GridView1.DataBind();
            }
        }

    }
}