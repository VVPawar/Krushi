using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.IO;
using System.Web.UI.WebControls;
using System.Drawing;
using System.Data.SqlClient;

namespace krushi1._1
{
    public partial class WebForm8 : System.Web.UI.Page
    {
        String fileExtension;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Upload_Click(object sender, EventArgs e)
        {
            if (FileUpload1.HasFile)
            {
                fileExtension = Path.GetExtension(FileUpload1.FileName);
                if (fileExtension.ToLower() != ".jpeg" && fileExtension.ToLower() != ".png" && fileExtension.ToLower() != ".jpg")
                {
                    lblmsg.Text = "Only .jpg, .jpeg, .png extension file are allowed";
                    lblmsg.ForeColor = Color.Red;
                }
                else
                {
                    int filesize = FileUpload1.PostedFile.ContentLength;
                    if (filesize > 254288 && filesize < 2097152)
                    {
                        lblmsg.Text = "Maximum file size is 2MB";
                        lblmsg.ForeColor = Color.Red;
                    }
                    else
                    {
                        FileUpload1.SaveAs(Server.MapPath("~/img/" + FileUpload1.FileName));
                        Image1.ImageUrl = "~/img/" + FileUpload1.FileName;
                        lblmsg.Text = "File Uploaded";
                        lblmsg.ForeColor = Color.Black;
                    }
                }
            }
            else
            {
                lblmsg.Text = "Please slect a file to upload";
                lblmsg.ForeColor = Color.Red;
            }
        }
        
        protected void Button4_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=G:\krushi1.1\krushi1.1\App_Data\Database1.mdf;Integrated Security=True");
            con.Open();
            if (TextBox1.Text != "" && DropDownList1.SelectedValue != "" && TextBox2.Text != "" && TextBox3.Text != "" && Image1.ImageUrl != "")
            {
    
                    string str = "insert into ProductDetails (productname,category,price,productpic,Description) values('" + TextBox1.Text + "','" + DropDownList1.SelectedValue + "','" + TextBox2.Text + "','" + Image1.ImageUrl + "','" + TextBox3.Text + "')";
                    SqlCommand cmd = new SqlCommand(str, con);
             //    try
                    {
                        cmd.ExecuteNonQuery();

                        Response.Write("Item is successfully added");
                  
                    TextBox1.Text = "";
                    TextBox2.Text = "";
                    TextBox3.Text = "";

                    }
               //  catch (Exception)
                    {
                 //       Response.Write("this Product Id is already in use");
                    }
                }
            
           else
                Response.Write("Fill the Fields");

        }

        protected void Button4_Click1(object sender, EventArgs e)
        {
           string mob = Request.QueryString["mob"];
            Response.Redirect("home.aspx?mob=" + mob);

        }
    }
}