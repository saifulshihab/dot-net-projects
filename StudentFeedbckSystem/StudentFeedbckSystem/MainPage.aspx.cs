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
    public partial class MainPage : System.Web.UI.Page
    {
        DataOperation d = new DataOperation();
        protected void Page_Load(object sender, EventArgs e)
        {
            string query = @"SELECT [bookid]
                              ,[bookname]
                              ,[author]
                              ,[catagory]
                              ,[price]
                              ,[availability]
                          FROM [dbo].[Book]";
            if (d.executeQuery(query) == 1)
            {
                mainpage_gridview.DataSource = d.GetData(query);
                mainpage_gridview.DataBind();

            }

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection(d.connectionString);
            if (conn.State == ConnectionState.Closed)
            {
                conn.Open();
            }
            string query = @"select * from Book where catagory='"+ctgrydropdown.SelectedItem+"'";
            SqlCommand cmd = new SqlCommand(query, conn);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            da.Fill(ds);
            int i = ds.Tables[0].Rows.Count;
            if (i > 0)
            {
                mainpage_gridview.DataSource=d.GetData(query);
                mainpage_gridview.DataBind();

            }
            else
            {
                string lbl = "There are no book in this catagory";
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
            string query = "select * from Book where bookname='"+srcboxtxt.Text+"'";
            if (d.executeQuery(query) == 1)
            {
                mainpage_gridview.DataSource = d.GetData(query);
                mainpage_gridview.DataBind();
            }
        }
    }
}