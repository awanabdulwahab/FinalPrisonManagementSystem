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
    public partial class SignUp : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection(@"Data Source=ABDULWAHAB;Initial Catalog=PrisonManagementSystem;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {
            if(conn.State == ConnectionState.Open)
            {
                conn.Close();
                
            }
            conn.Open();
        }

        protected void btSignup_Click(object sender, EventArgs e)
        {
            string command = "INSERT INTO UsersTable(username,password,CNIC,Email) VALUES(@username,@password,@CNIC,@Email)";
            SqlCommand cmd = new SqlCommand(command, conn);
            cmd.Parameters.AddWithValue("@username", txt_Username.Text);
            cmd.Parameters.AddWithValue("@password", txt_password.Text);
            cmd.Parameters.AddWithValue("@CNIC", txt_CNIC.Text);
            cmd.Parameters.AddWithValue("@Email", txt_email.Text);
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
                lblMsg.Text = "User Already Exits ";
            }
            else
            {
                cmd.ExecuteNonQuery();
                lblMsg.Text = "User Added Successfully ";
            }
            txt_Username.Text = " ";
            txt_password.Text = " ";
            txt_CNIC.Text = " ";
            txt_email.Text = " ";
        }
    }
}