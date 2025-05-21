using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace NeuroVerse
{
    public partial class Signup : System.Web.UI.Page
    {
        public string message = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.Form["submit"] != null)
            {
                string username = Request.Form["username"];
                string password = Request.Form["password"];
                string email = Request.Form["email"];
                string firstName = Request.Form["firstName"];
                string lastName = Request.Form["lastName"];
                string phone = Request.Form["phone"];
                bool lightMode = Request.Form["lightMode"] == "on" ? true : false;
                int lightModeValue = lightMode ? 1 : 0;
                string difficulty = Request.Form["difficulty"];
                string pfp = Request.Form["pfp"];
                string sqlcheck = $"SELECT * FROM Users WHERE Username = '{username}'";

                if (Helper.IsExist("USERS.mdf",sqlcheck))
                {
                    message = "Username already exists. Please choose a different username.";

                } else
                {
                    string sqladd = $"INSERT INTO Users (Username, Password, Email, Firstname, Lastname, Phone,Solved,lightMode,Difficulty,profilePic) " +
                           $"VALUES ('{username}', '{password}', '{email}', N'{firstName}', N'{lastName}', '{phone}',1,{lightModeValue},'{difficulty}','{pfp}')";
                    Helper.DoQuery("USERS.mdf", sqladd);
                    Response.Redirect("Signin.aspx");
                }

              


            }
        }
    }
}