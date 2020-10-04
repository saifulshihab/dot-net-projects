using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HospitalManagementSystem
{
    public partial class Doctor : System.Web.UI.Page
    {
        DataOperation d = new DataOperation();
        protected void Page_Load(object sender, EventArgs e)
        {
            load_grid();
        }

        public void load_grid() {
            string query = @"SELECT [Doctor_id]
                              ,[Doctor_name]
                              ,[Specialist]
                          FROM[dbo].[Doctor]";

            DoctorDataGridView.DataSource = d.Getdata(query);
            DoctorDataGridView.DataBind();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string query = @"INSERT INTO [dbo].[Doctor]
                                   ([Doctor_id]
                                    ,[Doctor_name]
                                   ,[Specialist])
                             VALUES
                                   ('"+IDtxt.Text+"','" + nametxt.Text+ "','" + sptxt.Text + "')";
            if(d.executeQuery(query) == 1)
            {
                load_grid();
            }

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            IDtxt.Text = "";
            nametxt.Text = "";
            sptxt.Text = "";
        }

        protected void DoctorDataGridView_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            Label lblID = (Label)DoctorDataGridView.Rows[e.RowIndex].FindControl("Label1");
            string query = @"DELETE FROM [dbo].[Doctor]
                             WHERE Doctor_id=" + lblID.Text;
             
            if (d.executeQuery(query) == 1)
            {
                load_grid();
            }

        }
    }
}