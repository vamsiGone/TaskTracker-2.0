using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace NavSideBarControl
{
    public partial class Navsidebar : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Session["checkmode"] = Request.Form["Theme"];

        }
    }
}