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
    public partial class AssignJailToPrisoner : System.Web.UI.Page
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
            SqlCommand cmd1 = new SqlCommand("select prisonerID as prisonerID from AssignJailToPrisoner where prisonerID= @id", conn);
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
                lblPassRec.Text = "Prisoner Already has assigned A jail";
            }
            else
            {
                checkJailorAndAssign();
                GridView1.DataBind();

            }
        }
        public void checkJailorAndAssign()
        {
            string command = "INSERT INTO AssignJailToPrisoner(prisonerID,date,jailName) VALUES(@prisonerID,@date,@jailName)";
            SqlCommand cmd = new SqlCommand(command, conn);
            cmd.Parameters.AddWithValue("@prisonerID", txt_id.Text);
            cmd.Parameters.AddWithValue("@jailName", txtJail.Text);
            DateTime a = DateTime.Now;
            DateTime b = a.Date;
            cmd.Parameters.AddWithValue("@date", b);
            SqlCommand cmd1 = new SqlCommand("select PrisonerID as PrisonerID from PrisonerTable where PrisonerID= @id", conn);
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
                lblPassRec.Text = "Prisoner Assigned Successfully";
            }
            else
            {
                lblPassRec.Text = "Prisoner Not Found ";
            }
        }
    }
}