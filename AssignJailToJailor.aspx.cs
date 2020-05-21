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
    public partial class AssignJailToJailor : System.Web.UI.Page
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
            SqlCommand cmd1 = new SqlCommand("select jailorID as jailorID from AssignJailor where jailorID= @id", conn);
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
                lblPassRec.Text = "Jailor Already has assigned A jail";
            }
            else
            {
                checkJailorAndAssign();
 
            }
        }
        public void checkJailorAndAssign()
        {
            string command = "INSERT INTO AssignJailor(jailorID,JoiningDate,JailName) VALUES(@jailorID,@JoiningDate,@JailName)";
            SqlCommand cmd = new SqlCommand(command, conn);
            cmd.Parameters.AddWithValue("@jailorID", txt_id.Text);
            cmd.Parameters.AddWithValue("@JailName", txtJail.Text);
            DateTime a = DateTime.Now;
            DateTime b = a.Date;
            cmd.Parameters.AddWithValue("@JoiningDate", b);
            SqlCommand cmd1 = new SqlCommand("select jailorID as jailorID from JailorTable where jailorID= @id", conn);
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
                lblPassRec.Text = "Jail Assigned jailor Successfully";
                GridView1.DataBind();
            }
            else
            {
                lblPassRec.Text = "Jailor Not Found ";
            }
        }

        protected void SqlDataSource1_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
        {

        }
    }
}