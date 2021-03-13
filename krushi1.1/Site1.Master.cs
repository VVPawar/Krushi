using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace krushi1._1
{
    
    public partial class Site1 : System.Web.UI.MasterPage
    {
        string mob;
        Boolean flag=false;
        protected void Page_Load(object sender, EventArgs e)
        {
            if( flag==false)
            { 
            mob = Request.QueryString["mob"];
            if ("9876543210" == Request.QueryString["mob"])
            {
                Additem.Visible = true;
                    Orderdetails.Visible = true;
            }
                flag = true;
            }

        }

        protected void Additem_Click(object sender, EventArgs e)
        {
            Response.Redirect("Additem.aspx?mob=" + mob);
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Session.RemoveAll();
            Request.Cookies.Clear();
            Response.Redirect("Signup.aspx");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect(String.Format("Search.aspx?ProductName={0}&mob={1}", Server.UrlEncode(TextSearch.Text), Server.UrlEncode(mob)));        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("Fertilizers.aspx?mob=" + mob);

        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            Response.Redirect("Pestisides.aspx?mob=" + mob);

        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            Response.Redirect("Seeds.aspx?mob=" + mob);

        }

        protected void Button6_Click(object sender, EventArgs e)
        {
            Response.Redirect("Equipments.aspx?mob=" + mob);

        }

        protected void Button7_Click(object sender, EventArgs e)
        {
            Response.Redirect("Contact.aspx?mob=" + mob);
        }

        protected void Button8_Click(object sender, EventArgs e)
        {
            Response.Redirect("aboutus.aspx?mob=" + mob);
        }

        protected void Button9_Click(object sender, EventArgs e)
        {
            Response.Redirect("Cart.aspx?mob=" + mob);
        }

        protected void Button10_Click(object sender, EventArgs e)
        {
            mob = Request.QueryString["mob"];
            Response.Redirect("Home.aspx?mob=" + mob);

        }

        protected void Button11_Click(object sender, EventArgs e)
        {
            mob = Request.QueryString["mob"];
            Response.Redirect("orderdetails.aspx?mob=" + mob);

        }
    }
}