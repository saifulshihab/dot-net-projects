using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.IO;
using System.Text;
using System.Drawing;
using System.ComponentModel;
using System.Security;
 


namespace CRUD
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        string connectionString = "Data Source=DESKTOP-IAOQFSJ;Initial Catalog=CRUD;Integrated Security=True";
        DB d = new DB();
        protected void Page_Load(object sender, EventArgs e)
        {

            

            dataShow();
            




        }
        public DataTable dbShow(string query)
        {
            SqlConnection conn = new SqlConnection(connectionString);
            if (conn.State == ConnectionState.Closed)
            {
                conn.Open();
            }

            SqlDataAdapter da = new SqlDataAdapter(query, conn);
            DataTable dt = new DataTable();
            da.Fill(dt);
            return dt;
            
        }
        public void dataShow() {

            string query = @"SELECT [s_id]
                              ,[s_name]
                              ,[address]
                          FROM [dbo].[Student]";


            GridView1.DataSource=(dbShow(query));
            GridView1.DataBind();

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection(connectionString);
            string query= @"INSERT INTO [dbo].[Student]
                               ([s_id]
                               ,[s_name]
                               ,[address]
                                ,[simg])
                         VALUES
                               ('" + TextBox4.Text + "','" + TextBox5.Text + "','" + TextBox6.Text + "')";
            if (conn.State == ConnectionState.Closed)
            {
                conn.Open();
            }
            if (d.exe(query) == 1)
            {
                dataShow();
            }
             

        }

        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            Label lbl = (Label)GridView1.Rows[e.RowIndex].FindControl("Label2");
            string query = @"DELETE FROM [dbo].[Student]
                                WHERE s_id="+lbl.Text;
            if (d.exe(query) == 1)
            {
                dataShow();
            }
        }

        protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
        {

        }
        

        protected void Browse_Click(object sender, EventArgs e)
        {
            
           
        }
    }
}