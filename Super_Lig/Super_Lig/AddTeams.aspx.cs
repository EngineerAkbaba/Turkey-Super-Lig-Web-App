using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BusinessLayer;
namespace Super_Lig
{
    public partial class AddTeams : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnRefereeSave_Click(object sender, EventArgs e)
        {
            if (teamName.Text == string.Empty || foundation.Text == string.Empty || color.Text == string.Empty || championNum.Text == string.Empty)
            {
                Response.Write("<script lang = 'javascript'>alert('Lütfen tüm alanları doldurunuz');</script");
            }
            else
            {
                TeamProcess.AddTeam(new Takım
                {
                    TeamName=teamName.Text,
                    Foundationyear=foundation.Text,
                    Color=color.Text,
                    NumberChamp=Convert.ToInt32(championNum.Text)
                });
                Response.Write("<script lang = 'javascript'>alert('Takım bilgileri veritabanına eklendi.');</script");
            }
        }
    }
}