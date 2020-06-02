using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PrisonManagementSystem
{
    public partial class EvnetLog : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnEventLog_Click(object sender, EventArgs e)
        {
            if(txtLogName.Text != string.Empty && txtLogSoucre.Text != string.Empty) 
            {
                lblPrompt.Text = "Event Log and Source Created";
                System.Diagnostics.EventLog.CreateEventSource(txtLogName.Text, txtLogSoucre.Text);

            }
            else
            {
                lblPrompt.Text = "Please Enter Event Log Name and Source Data";
            }

        }
    }
}