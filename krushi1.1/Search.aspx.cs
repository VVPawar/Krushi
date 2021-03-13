using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace krushi1._1
{
    public partial class Search : System.Web.UI.Page
    {
        string ProductName;
        string mob;
        SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=G:\krushi1.1\krushi1.1\App_Data\Database1.mdf;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {
            con.Open();
            ProductName = Request.QueryString["ProductName"];
        }         

        protected void SqlDataSource1_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
        {

        }

        protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
        {
            mob = Request.QueryString["mob"];

            if (e.CommandName == "viewdetail")
            {
                Response.Redirect(String.Format("item_description.aspx?id={0}&mob={1}", Server.UrlEncode(e.CommandArgument.ToString()), Server.UrlEncode(mob)));

            }

        }
    }
}