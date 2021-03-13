using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace krushi1._1
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Sign_in_Click(object sender, EventArgs e)
        {
            if (mob.Text != "" && Password.Text != "")
            {
                SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=G:\krushi1.1\krushi1.1\App_Data\Database1.mdf;Integrated Security=True");
                con.Open();
                string str = "select * from registration where mob='" + mob.Text + "'and password='" + Password.Text + "'";
                SqlCommand cmd = new SqlCommand(str, con);
                SqlDataReader sdr = cmd.ExecuteReader();
                if (sdr.Read())
                {
//                    Application["mobile"] = mob.Text;
                    Response.Redirect("home.aspx?mob="+mob.Text);
                    
              

                }
                else
                    Response.Write("Incorrect Username and password");
                sdr.Close();
                con.Close();
            }
            else
            Response.Write("Fill the Fields");
            
        }
    }
}