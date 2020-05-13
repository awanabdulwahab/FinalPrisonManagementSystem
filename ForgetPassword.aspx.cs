using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.IO;

namespace PrisonManagementSystem
{
    public partial class ForgetPassword : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection(@"Data Source=ABDULWAHAB;Initial Catalog=PrisonManagementSystem;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {
            if (conn.State == ConnectionState.Open)
            {
                conn.Close();
            }
            conn.Open();
        }

        protected void btPassRec_Click(object sender, EventArgs e)
        {
            SqlCommand cmd1 = new SqlCommand("select CNIC as CNIC from UsersTable where CNIC='" + txt_CNIC.Text + "'", conn);
            SqlDataReader dr;
            dr = cmd1.ExecuteReader();
            int count = 0;
            while (dr.Read())
            {
                count += 1;
            }
            dr.Close();
            if (count >= 1)
            {
                string qury = "select password from UsersTable where CNIC = @cnic ";
                SqlCommand cmd = new SqlCommand(qury, conn);
                cmd.Parameters.AddWithValue("@cnic", txt_CNIC.Text);
                Label1.Text = "Your Password : ";
                lblPassRec.Text = ((string)cmd.ExecuteScalar());
            }
            else
            {
                Label1.Text = " ";
                lblPassRec.Text = "User Not Found ";
            }
        }
    }
}