using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace NeuroVerse
{
    public partial class AdminLogin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.Form["submit"] != null)
            {
                string u = Request.Form["username"];

                string p = Request.Form["password"];
                if (u == "admin" && p == "password")
                {

                    Session["admin"] = true;
                    Session["LoggedIn"] = true;
                    Session["Username"] = "Admin";

                    Response.Redirect("ShowTable.aspx");
                }
                else
                {
                    Response.Redirect("discover.aspx");

                }
            }
        }
    }
}