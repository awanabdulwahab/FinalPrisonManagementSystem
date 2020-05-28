using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace PrisonManagementSystem
{
    public partial class AddAdmin : System.Web.UI.Page
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

        protected void btnAdd_Click(object sender, EventArgs e)
        {
            string command = "INSERT INTO AdminTable(adminID,firstname,fathername,email,Gender,Address,Age,password) VALUES(@ID,@FirstName,@FatherName,@Email,@Gender,@Address,@Age,@password)";
            SqlCommand cmd = new SqlCommand(command, conn);
            cmd.Parameters.AddWithValue("@ID", txtAdminID.Text);
            cmd.Parameters.AddWithValue("@FirstName", txtFirstName.Text);
            cmd.Parameters.AddWithValue("@FatherName", txtFatherName.Text);
            cmd.Parameters.AddWithValue("@Email", txtEmail.Text);
            cmd.Parameters.AddWithValue("@Address", txtAddress.Text);
            cmd.Parameters.AddWithValue("@Age", txt_age.Text);
            cmd.Parameters.AddWithValue("@password", txtpassword.Text);
            cmd.Parameters.AddWithValue("Gender", RadioButtonList1.SelectedItem.Text);
            SqlCommand cmd1 = new SqlCommand("select adminID from AdminTable where adminID='" + txtAdminID.Text + "'", conn);
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
                lblMsg.Text = "Admin Already Exits ";
            }
            else
            {
                cmd.ExecuteNonQuery();
                lblMsg.Text = "Admin Added Successfully ";
            }
            txtFirstName.Text = " ";
            txt_age.Text = " ";
            txtAdminID.Text = " ";
            txtAddress.Text = " ";
            txtFatherName.Text = " ";
            txtEmail.Text = " ";
            grid_Gaurd.DataBind();
        }
    }
}