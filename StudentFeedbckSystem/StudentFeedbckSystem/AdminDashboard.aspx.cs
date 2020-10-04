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
    public partial class AdminDashboard : System.Web.UI.Page
    {
        DataOperation d = new DataOperation();
        string lbl;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void submitbtn_Click(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection(d.connectionString);
            if (conn.State == ConnectionState.Closed)
            {
                conn.Open();
            }
            string query = @"INSERT INTO [dbo].[Book]
                               ([bookid]
                               ,[bookname]
                               ,[author]
                               ,[catagory]
                               ,[price]
                               ,[availability])
                         VALUES
                               ('"+bidtxtbox.Text+ "','" + bnametxtbox.Text + "','" + authortxtbox.Text + "','" + ctgrydd.SelectedItem + "','" + pricetxtbox.Text + "','" + availtxtbox.Text + "')";
            string query1 = "select * from Book where bookid='"+bidtxtbox.Text+"'";
            SqlCommand cmd = new SqlCommand(query1, conn);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            da.Fill(ds);
            int i = ds.Tables[0].Rows.Count;
            if (i > 0)
            {
               lbl = "Submission Failed. Book ID already exist!";
                ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + lbl + "');", true);
            }
            else
            {
                if (d.executeQuery(query)==1)
                {
                    lbl = "Submission Success.";
                    ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + lbl + "');", true);
                }
                else
                {
                    lbl = "Submission Failed.";
                    ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + lbl + "');", true);
                }
                
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {

        }
    }
}