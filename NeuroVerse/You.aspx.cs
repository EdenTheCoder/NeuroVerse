using System;
using System.Collections.Generic;
using System.Data;
using System.Globalization;
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


        public string Easy = "";
        public string Medium = "";
        public string Hard = "";


        public string dog = "";
        public string cat = "";
        public string fish = "";
        public string bird = "";
        public string lizard = "";
        public string light = "";
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
            light =  thisguy.Rows[0]["lightMode"].ToString() == "1" ? "checked" : "";
            string pfp = thisguy.Rows[0]["profilePic"].ToString();
            string difficulty = thisguy.Rows[0]["Difficulty"].ToString();
            
            switch (difficulty)
            {
                case "Easy":
                    Easy = "checked";
                    break;
                case "Medium":
                    Medium = "checked";
                    break;
                case "Hard":
                    Hard = "checked";
                    break;
            }
            Response.Write("aaaq");
            Response.Write(pfp);
            switch (pfp)
            {
                case "dog":
                    dog = "selected";
                    break;
                case "cat":
                    Response.Write("cat");
                    cat = "selected";
                    break;
                case "fish":
                    fish = "selected";
                    break;
                case "bird":
                    bird = "selected";
                    break;
                case "lizard":
                    lizard = "selected";
                    break;
            }

            
            if (Request.Form["submit"] != null)
            {


                string newUsername = (string)Session["Username"];
                string newPassword = thisguy.Rows[0]["Password"].ToString();
                string newEmail = Request.Form["email"];
                string newFirstName = Request.Form["firstName"];
                string newLastName = Request.Form["lastName"];
                string newPhone = Request.Form["phone"];
                string newPfp = Request.Form["pfp"];
                Response.Write(Request.Form["lightMode"]);
                bool lightMode = Request.Form["lightMode"] == "on";
                int lightModeValue = lightMode ? 1 : 0;
                Session["light"] = lightModeValue;
                string newDifficulty = Request.Form["difficulty"];



                string sqladd = $"UPDATE Users SET Username='{newUsername}', Password='{newPassword}', Email='{newEmail}', Firstname=N'{newFirstName}', Lastname=N'{newLastName}', Phone='{newPhone}',lightMode={lightModeValue},Difficulty = '{newDifficulty}',profilePic = '{newPfp}' WHERE Username='{Session["Username"]}'";
                Helper.DoQuery("USERS.mdf", sqladd);
                Session["Username"] = newUsername;
                Response.Redirect("You.aspx");

            }




        }
    }
}