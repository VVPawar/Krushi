using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net;
using System.Net.Mail;

namespace krushi1._1
{
    public partial class WebForm10 : System.Web.UI.Page
    {
        string srt1, str2, str3;
        private string str1;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            str1 = TextBox1.Text;


            str2 = TextBox2.Text;


            str3 = "Email id:- " + TextBox1.Text + "\n\nMobile No :- " + TextBox4.Text + "\n\nMessages :-" + TextBox3.Text;

            try
            {
                SmtpClient client = new SmtpClient("smtp.gmail.com");
                client.EnableSsl = true;
                client.DeliveryMethod = SmtpDeliveryMethod.Network;
                client.UseDefaultCredentials = false;
                client.Credentials = new NetworkCredential("gurujoshi007@gmail.com", "vishu1966#");
                MailMessage mas = new MailMessage();
                mas.To.Add("gurujoshi007@gmail.com");
                mas.From = new MailAddress(TextBox1.Text);
                mas.Subject = TextBox2.Text;
                mas.Body = str3;
                client.Send(mas);
                Response.Write("<script>alert('Send successful')</script>");
                TextBox1.Text = "";
                TextBox2.Text = "";
                TextBox3.Text = "";
                TextBox4.Text = "";
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('Couldnot send email')</script>" + ex.Message);
            }
        }
    }
    }
