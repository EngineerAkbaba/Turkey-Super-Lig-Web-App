using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BusinessLayer;
namespace Super_Lig
{
    public partial class NormalUser : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            ////Buraya Takımları,Hakemleri,Puan Tablosu vs Sırala Diye Seçenek
            /*User usr = (User)Session["AuthenticatedUserData"];
            if (usr == null)
            {
                Response.Redirect("Default.aspx");
            }
            else
            {
                labelUserInfo.Text = "Welcome " + usr.Username+ " " + usr.UserSurname;
            }*/
        }
        /*protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Session["AuthenticatedUserData"] = null;
            Response.Redirect("AnaSayfa.aspx");
        }*/
    }
}