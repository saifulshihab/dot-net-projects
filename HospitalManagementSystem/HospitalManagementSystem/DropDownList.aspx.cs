using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Configuration;
using System.Data.SqlClient;

namespace HospitalManagementSystem
{
    public partial class DropDownList : System.Web.UI.Page
    {
        DataOperation d = new DataOperation();
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection(d.connctionString);
            SqlCommand sc = new SqlCommand("select * from Patient",conn);
            conn.Open();
            DropDownList1.DataSource=sc.ExecuteReader();
            DropDownList1.DataTextField = "Patient_id";
            //DropDownList1.DataValueField = "Patient_name";
            DropDownList1.DataBind();
           

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (DropDownList1.SelectedValue == "-1")
            {
                Response.Write("Please select a Number");
            }
            else
            {
                Response.Write(DropDownList1.SelectedItem.Text + "<br/>");
                Response.Write(DropDownList1.SelectedItem.Value + "<br/>");
                Response.Write(DropDownList1.SelectedIndex + "<br/>");
            }
        }
    }
}