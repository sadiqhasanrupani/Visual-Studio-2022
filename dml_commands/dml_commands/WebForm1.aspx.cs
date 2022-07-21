using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace dml_commands
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        string cs = @"Data Source=(LocalDB)\MSSQLLocalDB;Integrated Security=True";
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection(cs);
            conn.Open();

            SqlCommand cmd = new SqlCommand("insert into student(stu_name, stu_rollno, stu_number) values(@stu_name, @stu_rollno, @stu_number) ",conn);
            cmd.Parameters.AddWithValue("@stu_name", TextBox1.Text);
            cmd.Parameters.AddWithValue("@stu_rollno", TextBox2.Text);
            cmd.Parameters.AddWithValue("@stu_number", TextBox3.Text);

            cmd.ExecuteNonQuery();
            cmd.Dispose();
            conn.Close();

            Server.Transfer("WebForm1.aspx");

        }
    }
}