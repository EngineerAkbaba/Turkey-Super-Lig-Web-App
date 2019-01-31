using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BusinessLayer;
namespace Super_Lig
{
    public partial class SignUpPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Save_Click(object sender, EventArgs e)
        {
            UserProcess.InsertUser(
            new User
            {
                Username = Username.Text,
                UserSurname = surname.Text,
                Mail = mail.Text,
                Password = password.Text,
                IsUserAdmin = false
            });
            Response.Redirect("Default.aspx");
        }
    }
}