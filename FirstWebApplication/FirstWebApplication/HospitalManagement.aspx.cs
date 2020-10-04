using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;

namespace FirstWebApplication
{
    public partial class HospitalManagement : System.Web.UI.Page

        DataOperation d = new DataOperation();
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
           
            gvTable.DataSource = d.GetData("select * from Patient");
            gvTable.DataBind();

        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}