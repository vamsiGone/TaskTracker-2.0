using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TaskTracker_2._0
{
    public partial class ViewEvents : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                DateTime currentDate = DateTime.Now;
                string defaultMonthYear = currentDate.ToString("MMM yyyy");
                MonthPicker.Text = defaultMonthYear;
            }
        }
    }
}