using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
namespace krushi1._1
{
    public partial class WebForm11 : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=G:\krushi1.1\krushi1.1\App_Data\Database1.mdf;Integrated Security=True");
        int Totalprice;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            Label lbl = DataList1.Items[0].FindControl("totalLabel") as Label;
            string price = lbl.Text;
            string mob = Server.UrlDecode(Request.QueryString["mob"]);
            con.Open();
            if (TextBox2.Text != "" && TextBox3.Text != "" && TextBox1.Text != "" )
            {
                    string str = "insert into buyitem (id,name,mobileno,address,price,deliverytype) values('" +mob + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox1.Text + "','" + price + "','COD')";
                    SqlCommand cmd = new SqlCommand(str, con);
       //             try
                    {
                        cmd.ExecuteNonQuery();
                    Response.Write("<script>alert('Your order is placed... ')</script>");



                }
                //                 catch (Exception)
                {
     //                   Response.Write("");
                    }
              
            }
            else
                Response.Write("Fill the Fields");


            }

    }
}