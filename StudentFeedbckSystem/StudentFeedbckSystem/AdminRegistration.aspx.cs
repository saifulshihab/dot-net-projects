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
    public partial class AdminRegistration : System.Web.UI.Page
    {
        DataOperation d = new DataOperation();
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
            string query = @"INSERT INTO [dbo].[Admin]
                           ([name]
                           ,[username]
                           ,[password]
                           ,[confirmpassword]
                           ,[age]
                           ,[gender]
                           ,[email]
                           ,[phone])
                     VALUES
                           ('"+nametxtbox.Text+ "','" + usernametxtbox.Text + "','" + passtxtbox.Text + "','" + confirmpasstxtbox.Text + "','" + agetxtbox.Text + "','" + genderdd.SelectedItem + "','" + emailtxtbox.Text + "','" + phntxtbox.Text + "')";

            string query1 = "select * from Admin where username='"+ usernametxtbox.Text + "'";
            SqlCommand cmd = new SqlCommand(query1,conn);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            da.Fill(ds);
            int i = ds.Tables[0].Rows.Count;
            if (i > 0)
            {
                Label1.Text = "Registration Unsuccessful. This Username is already exist!";
                
            }
            else
            {
                if (passtxtbox.Text == confirmpasstxtbox.Text)
                {
                    if (d.executeQuery(query) == 1)
                    {
                        Response.Redirect("AdminDashboard.aspx", true);
                        
                    }
                    else
                    {
                        Label1.Text = "Registration unsuccess.";
                    }
                }
                    
                else
                {
                    Label1.Text = "Password does not match.";
                }
            }

           

        }
    }
}