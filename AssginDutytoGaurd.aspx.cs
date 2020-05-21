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
    public partial class AssginDutytoGaurd : System.Web.UI.Page
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

        protected void btn_Assign_Click(object sender, EventArgs e)
        {
            SqlCommand cmd1 = new SqlCommand("select gaurdID as gaurdID from AssignDutyToGaurd where gaurdID= @id", conn);
            cmd1.Parameters.AddWithValue("@id", txt_id.Text);
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
                lblPassRec.Text = "Gaurd  Already has assigned a duty ";
            }
            else
            {
                checkJailorAndAssign();
                grid_Gaurd.DataBind();
            }
        }
        public void checkJailorAndAssign()
        {
            string command = "INSERT INTO AssignDutyToGaurd(gaurdID,jailName,startDate,endDate) VALUES(@gaurdID,@jailName,@startDate,@endDate)";
            SqlCommand cmd = new SqlCommand(command, conn);
            cmd.Parameters.AddWithValue("@gaurdID", txt_id.Text);
            cmd.Parameters.AddWithValue("@jailName", txtJail.Text);
            cmd.Parameters.AddWithValue("@startDate", Calendar1.SelectedDate.ToShortDateString());
            cmd.Parameters.AddWithValue("@endDate", Calendar2.SelectedDate.ToShortDateString());              
            SqlCommand cmd1 = new SqlCommand("select gaurdID as gaurdID from gaurdTable where gaurdID= @id", conn);
            cmd1.Parameters.AddWithValue("@id", txt_id.Text);
            SqlDataReader dr;
            dr = cmd1.ExecuteReader();
            int count = 0;
            while (dr.Read())
            {
                count += 1;
            }
            dr.Close();
            if (count > 0)
            {

                cmd.ExecuteNonQuery();
                lblPassRec.Text = "Duty Assigned to Gaurd Successfully ";
            }
            else
            {
                lblPassRec.Text = "Gaurd Not Found ";
            }
        }
    }
}