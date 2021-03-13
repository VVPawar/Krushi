using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace krushi1._1
{
    public partial class WebForm9 : System.Web.UI.Page
    {
        string mob;
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
        {
            mob= Request.QueryString["mob"];
           
            if (e.CommandName == "viewdetail")
            {
                Response.Redirect(String.Format("item_description.aspx?id={0}&mob={1}", Server.UrlEncode(e.CommandArgument.ToString()), Server.UrlEncode(mob)));
            }
        }

     
    }
}