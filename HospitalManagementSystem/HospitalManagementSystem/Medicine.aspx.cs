using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HospitalManagementSystem
{
    public partial class Medicine : System.Web.UI.Page
    {
        DataOperation d = new DataOperation();
        protected void Page_Load(object sender, EventArgs e)
        {
            string query = @"SELECT [Medicine_id]
                              ,[Medicine_name]
                              ,[Company]
                              ,[Patient_id]
                          FROM[dbo].[Medicine]";

            MedicineDataGridView.DataSource = d.Getdata(query);
            MedicineDataGridView.DataBind();
        }
    }
}