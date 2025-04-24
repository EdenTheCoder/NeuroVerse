using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace NeuroVerse
{
    public partial class Signin : System.Web.UI.Page
    {
        public string message = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.Form["submit"] != null)
            {
                string username = Request.Form["username"];
                string password = Request.Form["password"];
                string sqlcheck = $"SELECT * FROM Users WHERE Username = '{username}' AND Password = '{password}'";
                if (Helper.IsExist("USERS.mdf", sqlcheck))
                {
                    Session["LoggedIn"] = true;
                    Session["Username"] = username;
                    Session["light"] = Helper.ExecuteDataTable("USERS.mdf", $"SELECT lightMode FROM Users WHERE Username = '{username}'").Rows[0][0];
                    Response.Redirect("Discover.aspx");
                }
                else
                {
                    message = "Invalid username or password. Please try again.";
                }
            }
        }
    }
}