using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.Adapters;

namespace NeuroVerse
{
    public partial class Site1 : System.Web.UI.MasterPage
    {
        public string hide = "hidden=\"hidden\"";
        public string login = "Login";
        public string loginUrl = "Signin.aspx";
        protected void Page_Load(object sender, EventArgs e)
        {
            if ((bool)Session["LoggedIn"])
            {
                hide = "";
                login = "Logout";
                loginUrl = "Signout.aspx";
            }

        }
    }
}