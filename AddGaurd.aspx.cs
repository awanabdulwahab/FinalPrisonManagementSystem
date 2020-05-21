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
    public partial class AddGaurd : System.Web.UI.Page
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
            string command = "INSERT INTO gaurdTable(gaurdID,gaurdFirstName,gaurdFatherName,gaurdEmail,Gender,gaurdAddress,Age) VALUES(@gaurdID,@gaurdFirstName,@gaurdFatherName,@gaurdEmail,@Gender,@gaurdAddress,@Age)";
            SqlCommand cmd = new SqlCommand(command, conn);
            cmd.Parameters.AddWithValue("@gaurdID", txtGaurdId.Text);
            cmd.Parameters.AddWithValue("@gaurdFirstName", txtFirstName.Text);
            cmd.Parameters.AddWithValue("@gaurdFatherName", txtFatherName.Text);
            cmd.Parameters.AddWithValue("@gaurdEmail", txtEmail.Text);
            cmd.Parameters.AddWithValue("@gaurdAddress", txtAddress.Text);
            cmd.Parameters.AddWithValue("@Age", txt_age.Text);
            cmd.Parameters.AddWithValue("Gender", RadioButtonList1.SelectedItem.Text);
            SqlCommand cmd1 = new SqlCommand("select gaurdID as gaurdID from gaurdTable where gaurdID='" + txtGaurdId.Text + "'", conn);
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
                lblMsg.Text = "Gaurd Already Exits ";
            }
            else
            {
                cmd.ExecuteNonQuery();
                lblMsg.Text = "Gaurd Added Successfully ";
            }
            txtFirstName.Text = " ";
            txt_age.Text = " ";
            txtGaurdId.Text = " ";
            txtAddress.Text = " ";
            txtFatherName.Text = " ";
            txtEmail.Text = " ";
            grid_Gaurd.DataBind();
        }
    }
}