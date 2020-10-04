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
    public partial class CustomerLogin : System.Web.UI.Page
    {
        DataOperation d = new DataOperation();
        public string lbl,username;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void signbtn_Click(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection(d.connectionString);
            conn.Open();
            string query = "select count(*) from Customer where username='" + usernametxtBox.Text + "'";
            SqlCommand cmd = new SqlCommand(query, conn);
            int temp = Convert.ToInt32(cmd.ExecuteScalar().ToString());
            conn.Close();
            if (temp == 1)
            {
                conn.Open();
                string chckPassQuery = "select password from Customer where username='" + usernametxtBox.Text + "'";
                SqlCommand passCmd = new SqlCommand(chckPassQuery, conn);
                string pass = passCmd.ExecuteScalar().ToString().Replace(" ", "");
                if (pass == passtxtbox.Text)
                {
                   Session["New"] = usernametxtBox.Text;                    
                    Response.Redirect("OrderBook.aspx", true);
                   
                }
                else
                {
                    lbl="Password Not Correct";
                    ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + lbl + "');", true);
                }
            }
            else
            {
                lbl="Username Not Correct";
                ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + lbl + "');", true);
            }
        }

        protected void resetbtn_Click(object sender, EventArgs e)
        {
            usernametxtBox.Text = "";
            passtxtbox.Text = "";
        }
    }
}