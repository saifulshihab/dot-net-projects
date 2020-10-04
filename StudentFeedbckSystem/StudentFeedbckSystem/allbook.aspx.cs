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
    public partial class allbook : System.Web.UI.Page
    {
        DataOperation d = new DataOperation();
        protected void Page_Load(object sender, EventArgs e)
        {
          
            load_grid();
        }
        public void load_grid() {
            SqlConnection conn = new SqlConnection(d.connectionString);
            if (conn.State == ConnectionState.Closed)
            {
                conn.Open();
            }
            string query = @"SELECT [bookid]
                          ,[bookname]
                          ,[author]
                          ,[catagory]
                          ,[price]
                          ,[availability]
                      FROM [dbo].[Book]";
            if (d.executeQuery(query) == 1)
            {
                allbookgv.DataSource = d.GetData(query);
                allbookgv.DataBind();
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {

           
            string query = "DELETE FROM [dbo].[Book]";
            if (d.executeQuery(query) == 1)
            {
                Label7.Text = "All Records Deleted.";
            }
        }

       

        protected void allbookgv_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            Label lblID = (Label)allbookgv.Rows[e.RowIndex].FindControl("dl");
            string query = @"DELETE FROM [dbo].[Book]
                                    WHERE bookid="+lblID.Text;
            if (d.executeQuery(query) == 1)
            {
                load_grid();
            }
        }
        protected void allbookgv_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}