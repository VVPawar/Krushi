using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace krushi1._1
{
    public partial class WebForm7 : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=G:\krushi1.1\krushi1.1\App_Data\Database1.mdf;Integrated Security=True");

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void DataList1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            con.Open();
            string mob = Server.UrlDecode(Request.QueryString["mob"]);
            Response.Redirect("buyitem.aspx?mob="+mob);

        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            con.Open();
            string mob = Server.UrlDecode(Request.QueryString["mob"]);

            string str = "Delete from cart where Productid="+DropDownList1.SelectedValue+"and mob='"+mob+"'";
            SqlCommand cmd = new SqlCommand(str, con);
            cmd.ExecuteNonQuery();
            Response.Write("Product removed from cart with id="+DropDownList1.SelectedValue);
            Response.Redirect(String.Format("Cart.aspx?id={0}&mob={1}", Server.UrlEncode(DropDownList1.SelectedValue), Server.UrlEncode(mob)));


        }
    }
}