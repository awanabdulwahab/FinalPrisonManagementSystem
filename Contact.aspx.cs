using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net;
using System.Net.Mail;

namespace PrisonManagementSystem
{
    public partial class Contact : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSend_Click(object sender, EventArgs e)
        {
            try
            {
                SmtpClient client = new SmtpClient("smtp.gmail.com", 587);
                client.EnableSsl = true;
                client.DeliveryMethod = SmtpDeliveryMethod.Network;
                client.UseDefaultCredentials = false;
                client.Credentials = new NetworkCredential("awanabdulwahab7@gmail.com", "13Air143#");
                MailMessage msgobj = new MailMessage();
                msgobj.To.Add("awanabdulwahab7@gmail.com");
                msgobj.From = new MailAddress(txtTo.Text);
                msgobj.Subject = txtSubject.Text;
                msgobj.Body = txtbody.Text;
                client.Send(msgobj);
                lblMsg.Text = "Your Response Have be sent ";
            }
            catch (Exception )
            {
                lblMsg.Text = "Could Not send the Mail";
            }
        }
    }
}