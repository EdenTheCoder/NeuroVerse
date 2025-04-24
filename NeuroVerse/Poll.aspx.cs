using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace NeuroVerse
{
    public partial class Poll : System.Web.UI.Page
    {
        public int dark = 0;
        public int light = 0;
        protected void Page_Load(object sender, EventArgs e)
        {
            dark = (int)Application["dark"];
            light = (int)Application["light"];

            if (Request.Form["dark"] != null)
            {
                Application["dark"] = (int)Application["dark"] + 1;
                dark = (int)Application["dark"];
                light = (int)Application["light"];
            }
            if (Request.Form["light"] != null)
            {
                Application["light"] = (int)Application["light"] + 1;
                dark = (int)Application["dark"];
                light = (int)Application["light"];
            }
            

        }
    }
}