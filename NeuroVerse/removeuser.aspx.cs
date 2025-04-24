using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace NeuroVerse
{
    public partial class removeuser : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string user = Request.QueryString["user"];
            string sql = $"delete from Users where Username = '{user}'";
            Helper.DoQuery("USERS.mdf", sql);
            Response.Redirect("showtable.aspx");
        }
    }
}