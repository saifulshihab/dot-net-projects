using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace Inpatient
{
    public partial class Inpatient : System.Web.UI.Page
    {
        DataOperation d = new DataOperation();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Calendar1.Visible = false;
                Calendar2.Visible = false;
            }
        
        }
        public void loadGrid()
        {
            SqlConnection conn = new SqlConnection(d.connectionString);
            if (conn.State == ConnectionState.Closed)
            {
                conn.Open();
            }
            string query = @"SELECT [mrdno]
                                          ,[name]
                                          ,[age]
                                          ,[addr]
                                          ,[dob]
                                          ,[gender]
                                          ,[state]
                                          ,[district]
                                          ,[dateofadmit]
                                      FROM [dbo].[Inpatient]";
            GridView1.DataSource = d.GetData(query);
            GridView1.DataBind();

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection(d.connectionString);
            if (conn.State == ConnectionState.Closed)
            {
                conn.Open();
            }
            string query = @"INSERT INTO [dbo].[Inpatient]
           ([mrdno]
           ,[name]
           ,[age]
           ,[addr]
           ,[dob]
           ,[gender]
           ,[state]
           ,[district]
           ,[dateofadmit])
               VALUES('"+mrdtxt.Text+ "','" +nametxt.Text+ "','" +agetxt.Text+ "','" +adrtxt.Text+ "','" +Calendar1.SelectedDate.ToString()+ "','" +gndrDropDown.SelectedItem+ "','" +statetxt.Text+ "','" +distxt.Text+ "','"+Calendar2.SelectedDate.ToString()+"')";
            if (d.executeQuery(query)==1)
            {
                lbl.Text = "Data Insert Successfully";
                Console.BackgroundColor = ConsoleColor.Green;
               
            }
            else
            {
                lbl.Text = "Data Insert Failed";
                Console.BackgroundColor = ConsoleColor.Red;
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            loadGrid();
        }

        protected void Button3_Click(object sender, EventArgs e)
        {

            string query = "delete from inpatient";
            if (d.executeQuery(query) == 1)
            {
                lbl.Text = "Data Delete Successfully";
                Console.ForegroundColor = ConsoleColor.Green;

            }
            else
            {
                lbl.Text = "Data Delete Failed";
                Console.BackgroundColor = ConsoleColor.Red;
            }
        }

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            if (Calendar1.Visible) {
                Calendar1.Visible = false;
            }
            else
            {
                Calendar1.Visible = true;
            }
            
        }

        protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
        {
            if (Calendar2.Visible)
            {
                Calendar2.Visible = false;
            }
            else
            {
                Calendar2.Visible = true;
            }
        }

        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            Label lblid = (Label)GridView1.Rows[e.RowIndex].FindControl("Label1");
            string q = @"
                        DELETE FROM [dbo].[Inpatient]
                              WHERE mrdno="+ lblid.Text;
            if (d.executeQuery(q) == 1)
            {
                loadGrid();
            }
            else
            {
                Response.Write("Error");
            }
        }
    }
}