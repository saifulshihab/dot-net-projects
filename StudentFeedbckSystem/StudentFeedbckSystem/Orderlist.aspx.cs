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
    public partial class Orderlist : System.Web.UI.Page
    {
        DataOperation d = new DataOperation();
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection(d.connectionString);
            if (conn.State == ConnectionState.Closed)
            {
                conn.Open();
            }
            string query = @"SELECT [oid]
                          ,[bid]
                          ,[bname]
                          ,[author]
                          ,[catagory]
                          ,[price]
                          ,[quantity]
                          ,[address]
                          ,[date]
                          ,[username]
                      FROM [dbo].[Orders]";
            if (d.executeQuery(query) == 1)
            {
                GridView1.DataSource = d.GetData(query);
                GridView1.DataBind();
            }
        }

    }
}