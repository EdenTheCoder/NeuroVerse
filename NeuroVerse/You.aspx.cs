using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace NeuroVerse
{
    public partial class You : System.Web.UI.Page
    {   
        public string username = "";
        public string email = "";
        public string firstName = "";
        public string lastName = "";
        public string phone = "";
        public string password = "";


        public string dog = "";
        public string cat = "";
        public string fish = "";
        public string bird = "";
        public string lizard = "";

        protected void Page_Load(object sender, EventArgs e)
        {
            
            if (!(bool)Session["LoggedIn"])
            {
                Response.Redirect("Signin.aspx");
            }


            string sql = "SELECT * FROM USERS WHERE USERNAME = '" + Session["Username"] + "'";

            DataTable thisguy = Helper.ExecuteDataTable("USERS.mdf", sql);
            username = thisguy.Rows[0]["Username"].ToString();
            email = thisguy.Rows[0]["Email"].ToString();
            firstName = thisguy.Rows[0]["Firstname"].ToString();
            lastName = thisguy.Rows[0]["Lastname"].ToString();
            phone = thisguy.Rows[0]["Phone"].ToString();
            password = thisguy.Rows[0]["Password"].ToString();
            string pfp = thisguy.Rows[0]["profilePic"].ToString();

            if (pfp == "dog") dog = "selected";
            if (pfp == "cat") cat = "selected";
            if (pfp == "fish") fish = "selected";
            if (pfp == "bird") bird = "selected";
            if (pfp == "lizard") lizard = "selected";


            Response.Write("a");
            if (Request.Form["submit"] != null)
            {
                Response.Write("g");

                string newUsername = (string)Session["Username"];
                string newPassword = Request.Form["password"];
                string newEmail = Request.Form["email"];
                string newFirstName = Request.Form["firstName"];
                string newLastName = Request.Form["lastName"];
                string newPhone = Request.Form["phone"];
                Response.Write(Request.Form["lightMode"]);
                bool lightMode = Request.Form["lightMode"] == "on";
                int lightModeValue = lightMode ? 1 : 0;
                Session["light"] = lightModeValue;
                string difficulty = Request.Form["difficulty"];



                string sqladd = $"UPDATE Users SET Username='{newUsername}', Password='{newPassword}', Email='{newEmail}', Firstname=N'{newFirstName}', Lastname=N'{newLastName}', Phone='{newPhone}',lightMode={lightModeValue},Difficulty = '{difficulty}' WHERE Username='{Session["Username"]}'";
                Helper.DoQuery("USERS.mdf", sqladd);
                Session["Username"] = newUsername;
                Response.Redirect("You.aspx");

            }




        }
    }
}