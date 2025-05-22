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

            if (current <= max) //Stops Refresh loop at max
            {

                DataTable dt = Helper.ExecuteDataTable("PUZZLES.mdf", getsql);
                if ((bool)Session["loggedIn"]) //refresh loop adds 1 to current every time The puzzle doesnt match difficulty 
                {


                    string rating = Helper.ExecuteDataTable("USERS.mdf", $"select * from Users where Username = '{Session["Username"]}'").Rows[0][8].ToString();
                    string addsql = $"update Users set Solved = Solved + 1 where Username = '{Session["Username"]}'";

                    if (rating == "Easy")
                    {
                        if ((int)dt.Rows[0][4] > 5)
                        {
                            Helper.DoQuery("USERS.mdf", addsql);
                            Response.Redirect("Discover.aspx");
                        }
                    }
                    else if (rating == "Medium")
                    {
                        if ((int)dt.Rows[0][4] > 30)
                        {
                            Helper.DoQuery("USERS.mdf", addsql);
                            Response.Redirect("Discover.aspx");
                        }
                    }
                    else if (rating == "Hard")
                    {
                        if ((int)dt.Rows[0][4] < 15)
                        {
                            Helper.DoQuery("USERS.mdf", addsql);
                            Response.Redirect("Discover.aspx");
                        }
                    }

                }// refresh loop end
                if (dt.Rows.Count > 0)//Display
                {
                    p = dt.Rows[0][3].ToString();
                    d = dt.Rows[0][4].ToString();
                    s = dt.Rows[0][2].ToString();
                    creator = dt.Rows[0][1].ToString();
                    string sqlGetPfp = $"select ProfilePic from Users where Username = '{creator}'";
                    Pfp = Helper.ExecuteDataTable("USERS.mdf", sqlGetPfp).Rows[0][0].ToString();
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
                {
                    Helper.DoQuery("USERS.mdf", addsql);
                    Response.Redirect("Discover.aspx");
                }
                    


            }
        }
    }
}