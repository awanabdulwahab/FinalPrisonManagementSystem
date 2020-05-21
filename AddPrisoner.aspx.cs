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
    public partial class AddPrisoner : System.Web.UI.Page
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
            string command = "INSERT INTO PrisonerTable(PrisonerID,firstName,fatherName,Crime,Gender,Address,Age) VALUES(@prisonerID,@firstName,@fathername,@crime,@gender,@address,@age)";
            SqlCommand cmd = new SqlCommand(command, conn);
            cmd.Parameters.AddWithValue("@prisonerID", txtPrisonerId.Text);
            cmd.Parameters.AddWithValue("@firstname", txtFirstName.Text);
            cmd.Parameters.AddWithValue("@fatherName", txtFatherName.Text);
            cmd.Parameters.AddWithValue("@crime", txtCrime.Text);
            cmd.Parameters.AddWithValue("@address", txtAddress.Text);
            cmd.Parameters.AddWithValue("@age", txt_age.Text);
            cmd.Parameters.AddWithValue("gender", RadioButtonList1.SelectedItem.Text);
            SqlCommand cmd1 = new SqlCommand("select PrisonerID as PrisonerID from PrisonerTable where PrisonerID='" + txtPrisonerId.Text + "'", conn);
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
                lblMsg.Text = "Prisoner Already Exits ";
            }
            else
            {
                cmd.ExecuteNonQuery();
                lblMsg.Text = "Prisoner Added Successfully ";
            }
            txtFirstName.Text = " ";
            txt_age.Text = " ";
            txtCrime.Text = " ";
            txtAddress.Text = " ";
            txtFatherName.Text = " ";
            txtPrisonerId.Text = " ";
            GridView1.DataBind();
        }
    }
}