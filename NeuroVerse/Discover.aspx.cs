using Microsoft.Ajax.Utilities;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Security.Cryptography.X509Certificates;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace NeuroVerse
{
   
    public partial class Discover : System.Web.UI.Page
    {   

        public string hide = "hidden";
        public string p = "";
        public string d = "";
        public string s = "";
        public string creator = "";
        public string Pfp = "Img";
        protected void Page_Load(object sender, EventArgs e)
        {
            int current = 1;

            if ((bool)Session["loggedIn"])
            {
                current = (int)Helper.ExecuteDataTable("USERS.mdf", $"select * from Users where Username = '{Session["Username"]}'").Rows[0][6]; //Gets the users Currnt
                hide = "";
            }
            int max = (int)Helper.ExecuteDataTable("PUZZLES.mdf", "SELECT TOP 1 *  FROM Puzzles ORDER BY Id DESC;").Rows[0][0]; //Gets the max id 

            string getsql = $"select * from Puzzles where Id = '{current}'";

            if (current <= max)
            {
                DataTable dt = Helper.ExecuteDataTable("PUZZLES.mdf", getsql);
                if (dt.Rows.Count > 0)
                {
                    p = dt.Rows[0][3].ToString();
                    d = dt.Rows[0][4].ToString();
                    s = dt.Rows[0][2].ToString();
                }
            }

            if (Request.Form["inc"] != null)
            {
                


                if (!(bool)Session["loggedIn"]) Response.Redirect("Signin.aspx");


                string addsql = $"update Users set Solved = Solved + 1 where Username = '{Session["Username"]}'";
                string sql = $"update Puzzles set Difficulty = Difficulty + 1 where Id = '{current}'";

                if (current <= max)
                {
                    Helper.DoQuery("USERS.mdf", addsql);
                    Helper.DoQuery("PUZZLES.mdf", sql);
                    Response.Redirect("Discover.aspx");
                }
                else
                {
                    Response.Write("You Finished all The Puzzles Go make some More");
                }
                



            }

            if (Request.Form["solved"] != null)
            {
                if (!(bool)Session["loggedIn"]) Response.Redirect("Signin.aspx");


                string addsql = $"update Users set Solved = Solved + 1 where Username = '{Session["Username"]}'";
                if (current <= max)
                    Helper.DoQuery("USERS.mdf", addsql);
                    Response.Redirect("Discover.aspx");


            }
        }
    }
}