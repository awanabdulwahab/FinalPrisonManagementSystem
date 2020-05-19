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
    public partial class UpdateJailor : System.Web.UI.Page
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

        protected void btnShow_Click(object sender, EventArgs e)
        {
            SqlCommand cmd1 = new SqlCommand("select jailorID as jailorID from JailorTable where jailorID='" + txtJailorId.Text + "'", conn);
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
                lblError.Text = "Jailor Exits ";
                showinformation();
            }
            else
            {
                lblError.Text = "Jailor Not Found";
            }
        }
        protected void showinformation()
        {
            string query = "select * from JailorTable where jailorID = @id";
            SqlCommand cmd = new SqlCommand(query, conn);
            cmd.Parameters.AddWithValue("@id", txtJailorId.Text);
            SqlDataReader dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                txtFirstName.Text = dr.GetString(1);
                txtFatherName.Text = dr.GetString(2);
                txtEmail.Text = dr.GetString(3);
                txtAddress.Text = dr.GetString(5);
                txt_age.Text = dr.GetString(6);
                if (dr.GetString(4) == "Male")
                {
                    RadioButtonList1.SelectedIndex = 0;
                }
                else if (dr.GetString(4) == "Female")
                {
                    RadioButtonList1.SelectedIndex = 1;
                }
                else
                {
                    RadioButtonList1.SelectedIndex = 2;
                }
            }
        }

        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            string query = "UPDATE JailorTable SET firstName = @firstName, fathername = @fathername, email = @email, gender = @gender,address = @address, age= @age  WHERE jailorID=@id";
            SqlCommand cmd = new SqlCommand(query, conn);
            cmd.Parameters.Add("@firstName", SqlDbType.VarChar).Value = txtFirstName.Text;
            cmd.Parameters.Add("@fathername", SqlDbType.VarChar).Value = txtFatherName.Text;
            cmd.Parameters.Add("@email", SqlDbType.VarChar).Value = txtEmail.Text;
            cmd.Parameters.Add("@address", SqlDbType.VarChar).Value = txtAddress.Text;
            cmd.Parameters.Add("@age", SqlDbType.VarChar).Value = txt_age.Text;
            cmd.Parameters.Add("@id", SqlDbType.VarChar).Value = txtJailorId.Text;
            cmd.Parameters.Add("@gender", SqlDbType.VarChar).Value = RadioButtonList1.SelectedItem.Text;
            cmd.ExecuteNonQuery();
            lblMsg.Text = "Jailor Updated Successfully;";
        }
    }
}