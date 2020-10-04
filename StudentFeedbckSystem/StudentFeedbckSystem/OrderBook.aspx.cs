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
    public partial class OrderBook : System.Web.UI.Page
    {
        DataOperation d = new DataOperation();
        CustomerLogin ct = new CustomerLogin();
        string un,bn="shihab";
        protected void Page_Load(object sender, EventArgs e)
        {
           if(Session["New"] != null)
            {
               
                un = Session["New"].ToString();
               


            }
            else
            {
                string lbl = "You have to login first for enter this page.";
                ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + lbl + "');", true);
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            
            SqlConnection conn = new SqlConnection(d.connectionString);
            if (conn.State == ConnectionState.Closed)
            {
                conn.Open();
            }
            string query1 = "select * from Book where bookid='" + bidtxtbox.Text + "'";
            if (d.executeQuery(query1) == 1)
            {
                string query2 = "select bookname from Book where bookid='" + bidtxtbox.Text + "'";
                SqlCommand cmd = new SqlCommand(query2, conn);                
                string bn = (string)cmd.ExecuteScalar();

                string query3 = "select author from Book where bookid='" + bidtxtbox.Text + "'";
                SqlCommand cmd1 = new SqlCommand(query3, conn);
                string au = (string)cmd1.ExecuteScalar();

                string query4 = "select catagory from Book where bookid='" + bidtxtbox.Text + "'";
                SqlCommand cmd2 = new SqlCommand(query4, conn);
                string cg = (string)cmd2.ExecuteScalar();

                string query5 = "select price from Book where bookid='" + bidtxtbox.Text + "'";
                SqlCommand cmd3 = new SqlCommand(query5, conn);
                int pr = (int)cmd3.ExecuteScalar();

                string query6 = @"INSERT INTO [dbo].[Orders]
                               ([bid]
                               ,[bname]
                               ,[author]
                               ,[catagory]
                               ,[price]
                               ,[quantity]
                               ,[address]
                               ,[date]
                               ,[username])
                         
                         VALUES
                               ('" + bidtxtbox.Text + "','" + bn + "','" + au + "','" + cg + "','" + pr + "','" + qndd.Text + "','" + addrtxtbox.Text + "','" + Calendar1.SelectedDate.ToString() + "','"+un+"')";
                int n=0;
                Int32.TryParse(qndd.Text, out n);
                if (n >= 0)
                {
                    if (d.executeQuery(query6) == 1)
                    {
                        int x = 0;

                        Int32.TryParse(qndd.Text, out x);
                        int p = x * pr;
                        congomessage.Text = "Congratulations! You ordered " + qndd.Text + " book. You have to pay BDT " + p + "/=";
                        

                    }
                }
                else
                {
                    congomessage.Text = "Quantity can not be null.";
                }
               
            }
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection(d.connectionString);
            if (conn.State == ConnectionState.Closed)
            {
                conn.Open();
            }
            string query = @"DELETE FROM [dbo].[Orders]
                            WHERE username='" + un + "'";
            if (d.executeQuery(query) == 1)
            {
                ordrgv.DataSource = d.GetData(query);
                ordrgv.DataBind();
                string lbl = "You cancel your order.";
                ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + lbl + "');", true);
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection(d.connectionString);
            if (conn.State == ConnectionState.Closed)
            {
                conn.Open();
            }
            string query5 = @"SELECT [bid]
                              ,[bname]
                              ,[author]
                              ,[catagory]
                              ,[price]
                              ,[quantity]
                              ,[address]
                              ,[date]
                              ,[username]
                          FROM [dbo].[Orders] where username='" + un + "'";
            if (d.executeQuery(query5) == 1)
            {
                ordrgv.DataSource = d.GetData(query5);
                ordrgv.DataBind();
            }
            else
            {
               string lbl = "You do not order book yet.";
                ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + lbl + "');", true);
            }
        }

       
    }
}