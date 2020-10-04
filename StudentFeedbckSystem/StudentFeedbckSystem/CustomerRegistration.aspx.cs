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
    public partial class CustomerRegistration : System.Web.UI.Page
    {
        DataOperation d = new DataOperation();
        string lbl;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void registerbtn_Click(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection(d.connectionString);
            if (conn.State == ConnectionState.Closed)
            {
                conn.Open();
            }
            string query = @"INSERT INTO [dbo].[Customer]
                           ([name]
                           ,[username]
                           ,[password]
                           ,[confirmpassword]
                           ,[age]
                           ,[gender]
                           ,[email]
                           ,[phone])
                     VALUES
                           ('" + nametxtbox.Text + "','" + usernametxtbox.Text + "','" + passtxtbox.Text + "','" + confirmpasstxtbox.Text + "','" + agetxtbox.Text + "','" + genderdd.SelectedItem + "','" + emailtxtbox.Text + "','" + phntxtbox.Text + "')";

            string query1 = "select * from Customer where username='" + usernametxtbox.Text + "'";
            SqlCommand cmd = new SqlCommand(query1, conn);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            da.Fill(ds);
            int i = ds.Tables[0].Rows.Count;
            if (i > 0)
            {
                Label1.Text = "Registration Unsuccessful. This Username is already exist!";
                Console.ForegroundColor = ConsoleColor.Red;
            }
            else
            {
                if (passtxtbox.Text == confirmpasstxtbox.Text)
                {
                    if (d.executeQuery(query) == 1)
                    {
                        Response.Redirect("OrderBook.aspx",true);
                    }
                    else
                    {
                        lbl = "Registration unsuccess.";
                        ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + lbl + "');", true);
                    }
                }

                else
                {
                    string lbl = "Password does not match.";
                    ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + lbl + "');", true);
                }
            }

        }

        protected void resetbtn_Click(object sender, EventArgs e)
        {
            
        }
    }
}