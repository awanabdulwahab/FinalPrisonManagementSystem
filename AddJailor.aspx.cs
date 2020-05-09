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
    public partial class AddJailor : System.Web.UI.Page
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
            string command = "INSERT INTO jailorTable(jailorID,firstName,fathername,email,gender,address,age) VALUES(@jailorID,@firstName,@fathername,@email,@gender,@address,@age)";
            SqlCommand cmd = new SqlCommand(command, conn);
            cmd.Parameters.AddWithValue("@jailorID", txtJailorId.Text);
            cmd.Parameters.AddWithValue("@firstname", txtFirstName.Text);
            cmd.Parameters.AddWithValue("@fatherName", txtFatherName.Text);
            cmd.Parameters.AddWithValue("@email", txtEmail.Text);
            cmd.Parameters.AddWithValue("@address", txtAddress.Text);
            cmd.Parameters.AddWithValue("@age", txt_age.Text);
            cmd.Parameters.AddWithValue("gender", RadioButtonList1.SelectedItem.Text);
            SqlCommand cmd1 = new SqlCommand("select jailorID as jailorID from jailorTable where jailorID='" + txtJailorId.Text + "'", conn);
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
                lblMsg.Text = "Jailor Already Exits ";
            }
            else
            {
                cmd.ExecuteNonQuery();
                lblMsg.Text = "Jailor Added Successfully ";
            }
            txtFirstName.Text = " ";
            txt_age.Text = " ";
            txtJailorId.Text = " ";
            txtAddress.Text = " ";
            txtFatherName.Text = " ";
            txtEmail.Text = " ";
        }
    }
}