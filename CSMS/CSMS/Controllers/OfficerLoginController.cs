
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using CSMS.Models;
using System.Data.SqlClient;
namespace CSMS.Controllers
{
    public class OfficerLoginController : Controller
    {
        SqlConnection con = new SqlConnection();
        SqlCommand cmd = new SqlCommand();
        SqlDataReader adr;
        [HttpGet]
        public IActionResult Login()
        {
            return View();
        }
        void connectionString()
        {
            con.ConnectionString = "Data source=Z390-M-GAMING; database=CSMS; integrated security=true";

        }
        [HttpPost]
        public ActionResult Verify(OfficerLogin off)
        {
            return View();
            connectionString();
            con.Open();
            cmd.Connection = con;
            cmd.CommandText = "select * from Officer where officer_emp_id='" + off.empid + "' and officer_password='" + off.pass + "'";
            adr = cmd.ExecuteReader();
            if (adr.Read())
            {
                con.Close();
                return View("loginSuccess");
            }
            else
            {
                con.Close();
                return View("loginError");
            }



        }
    }
}