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
    public partial class UpdateGaurd : System.Web.UI.Page
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
                lblError.Text = "Gaurd Exits ";
                showinformation();
            }
            else
            {
                lblError.Text = "Gaurd Not Found ";
            }
        }

        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            string query = "UPDATE gaurdTable SET gaurdFirstName = @gaurdFirstName, gaurdFatherName = @gaurdFatherName, gaurdEmail = @gaurdEmail, Gender = @Gender,gaurdAddress = @gaurdAddress, Age= @Age  WHERE gaurdID=@id";
            SqlCommand cmd = new SqlCommand(query, conn);
            cmd.Parameters.Add("@gaurdFirstName", SqlDbType.VarChar).Value = txtFirstName.Text;
            cmd.Parameters.Add("@gaurdFatherName", SqlDbType.VarChar).Value = txtFatherName.Text;
            cmd.Parameters.Add("@gaurdEmail", SqlDbType.VarChar).Value = txtEmail.Text;
            cmd.Parameters.Add("@gaurdAddress", SqlDbType.VarChar).Value = txtAddress.Text;
            cmd.Parameters.Add("@Age", SqlDbType.VarChar).Value = txt_age.Text;    
            cmd.Parameters.Add("@id", SqlDbType.VarChar).Value = txtGaurdId.Text;    
            cmd.Parameters.Add("@Gender", SqlDbType.VarChar).Value = RadioButtonList1.SelectedItem.Text;    
            cmd.ExecuteNonQuery();
            lblMsg.Text = "Gaurd Updated Successfully;";
        }

        protected void showinformation()
        {
            string query = "select * from gaurdTable where gaurdID = @id";
            SqlCommand cmd = new SqlCommand(query, conn);
            cmd.Parameters.AddWithValue("@id", txtGaurdId.Text);
            SqlDataReader dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                txtFirstName.Text = dr.GetString(1);
                txtFatherName.Text = dr.GetString(2);
                txtEmail.Text = dr.GetString(3);
                txtAddress.Text = dr.GetString(5);
                int a = dr.GetInt32(6);
                txt_age.Text = a.ToString();
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
    }
}