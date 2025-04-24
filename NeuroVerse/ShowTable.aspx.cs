using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace NeuroVerse
{
    public partial class ShowTable : System.Web.UI.Page
    {   
        public string table = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!(bool)Session["admin"])
            {
                Response.Redirect("discover.aspx");
            }
            else
            {
                if (Request.Form["submit"] != null) { 
                    
                    string filter = Request.Form["filter"];
                    string filterText = Request.Form["filterText"];
                    string filteradd = "";
                    if (filterText != "")
                    {
                        filteradd = " WHERE " + filter + " LIKE '%" + filterText + "%'";
                    }

                    DataTable dt = Helper.ExecuteDataTable("USERS.mdf",$"SELECT * FROM Users {filteradd}");
                    for (int row = 0; row < dt.Rows.Count; row++)
                    {
                        table += "<tr>";
                        for (int col = 0; col < dt.Columns.Count; col++)
                        {
                            table += "<td>" + dt.Rows[row][col].ToString() + "</td>";
                        }
                        table += "<td>" + $"<a href=\"removeuser.aspx?user={dt.Rows[row][0].ToString()}\">remove</a>" + "</td>";

                        table += "</tr>";
                    }
                }
            }
        }
    }
}