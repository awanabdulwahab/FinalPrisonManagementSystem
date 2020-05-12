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
    public partial class DeleteGaurd : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection(@"Data Source=ABDULWAHAB;Initial Catalog=PrisonManagementSystem;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {
            if(conn.State== ConnectionState.Open)
            {
                conn.Close();
            }
            conn.Open();

        }

        protected void btn_delete_Click(object sender, EventArgs e)
        {
            SqlCommand cmd1 = new SqlCommand("select gaurdID as gaurdID from gaurdTable where gaurdID='" + txt_id.Text + "'", conn);
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
                string qury = "delete from gaurdTable where gaurdID = @id ";
                SqlCommand cmd = new SqlCommand(qury, conn);
                cmd.Parameters.AddWithValue("@id", txt_id.Text);
                cmd.ExecuteNonQuery();
                lblPassRec.Text = "Gaurd Deleted Sucessfully ";
            }
            else
            {
                lblPassRec.Text = "Gaurd Not Found ";
            }

            
            
        }
    }
}