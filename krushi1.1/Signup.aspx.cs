using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace krushi1._1
{
    public partial class Signup : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Sign_up_Click(object sender, EventArgs e)
        {
                SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=G:\krushi1.1\krushi1.1\App_Data\Database1.mdf;Integrated Security=True");
                con.Open();
            if ( Password.Text != "" && Repeatpassword.Text != "" && Password.Text != "")
            {
                if (Password.Text == Repeatpassword.Text)
                {
                    string str = "insert into registration (Username,mob,email,password) values('" + Username.Text + "','" + mob.Text + "','" + email.Text + "','" + Password.Text + "')";
                    SqlCommand cmd = new SqlCommand(str, con);
                    try
                    {
                        cmd.ExecuteNonQuery();

                        Response.Redirect("home.aspx?mob=" + mob.Text);


                    }
                    catch (Exception)
                    {
                        Response.Write("Username or Email Id Already present");
                    }
                }
                else
                {
                    Response.Write("Password Mismatch");
                }
            }
            else
                Response.Write("Fill the Fields");

        }

        protected void email_TextChanged(object sender, EventArgs e)
        {

        }
    }
}
