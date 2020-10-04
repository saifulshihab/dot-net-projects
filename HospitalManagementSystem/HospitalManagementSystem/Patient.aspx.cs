using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HospitalManagementSystem
{
    public partial class Patient : System.Web.UI.Page
    {
        DataOperation d = new DataOperation();
        protected void Page_Load(object sender, EventArgs e)
        {
            string query = @"SELECT [Patient_id]
                              ,[Patient_name]
                              ,[Patient_phone]
                              ,[Doctor_id]
                          FROM[dbo].[Patient]
                         ";

            PatientDataGridView.DataSource = d.Getdata(query);
            PatientDataGridView.DataBind();
        }
    }
}