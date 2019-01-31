using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BusinessLayer;
namespace Super_Lig
{
    public partial class UpdateTeams : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            TeamProcess.UpdateTeam(new Takım
            {
                TeamName=takımadı.Text,
                Foundationyear=kurulus.Text,
                Color=color.Text,
                NumberChamp=Convert.ToInt32(champs.Text)

            });
            Response.Write("<script lang = 'javascript'>alert('Güncelleme Başarılı. Yeni listeyi görmek için tıklayınız'); window.location = 'ListTeam.aspx'</script");
        }
    }
}