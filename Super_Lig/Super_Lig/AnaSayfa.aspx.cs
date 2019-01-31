using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BusinessLayer;
namespace Super_Lig
{
    public partial class AnaSayfa : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Response.Redirect("SignUpPage.aspx");
        }

        protected void Kaydet_Click(object sender, EventArgs e)
        {
            User usr = UserProcess.GetUser(Mailtext.Text, passwordText.Text);
            if (usr != null)
            {
                Session["AuthenticatedUserData"] = usr;
                if (usr.IsUserAdmin)
                {
                    //admin
                    Response.Redirect("Default.aspx");
                }
                else
                {
                    //normal user
                    Response.Redirect("NormalUser.aspx");
                }
            }
            else
            {
               labelNoUser.Text= "No Authentication!";
            }
           
        }
     
    }
}