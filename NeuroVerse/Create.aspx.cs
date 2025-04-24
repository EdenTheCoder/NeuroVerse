using Microsoft.Ajax.Utilities;
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace NeuroVerse
{
    public partial class Create : System.Web.UI.Page
    {
        public string message = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!(bool)Session["LoggedIn"])
            {
                Response.Redirect("Signin.aspx");
            }

            if (Request.Form["submit"] != null)
            {
                
                string Problem = Request.Form["Problem"];
                string Solution = Request.Form["Solution"];
                int difficulty = 0;
                string Creator = (string)Session["Username"];
                int max = 0;
                try
                {
                    max = (int)Helper.ExecuteDataTable("PUZZLES.mdf", "SELECT TOP 1 *  FROM Puzzles ORDER BY Id DESC;").Rows[0][0]; //Gets the max id 
                }
                catch(Exception ex)
                {
                    max = 0;
                }


                string sqlcheck = $"SELECT * FROM Puzzles WHERE Id = '{max+1}'";

                if (Helper.IsExist("PUZZLES.mdf", sqlcheck))
                {
                    message = "Id already exists. My servers are broken.";

                }
                else
                {
                   string sqladd = "INSERT INTO Puzzles (Id, Problem, Solution, Difficulty, Creator) " +
                    $"VALUES ('{max+1}', N'{Problem}', N'{Solution}', {difficulty}, '{Creator}')";
                    Helper.DoQuery("PUZZLES.mdf", sqladd);
                    Response.Redirect("Discover.aspx");
                }



            }
        }
    }
}