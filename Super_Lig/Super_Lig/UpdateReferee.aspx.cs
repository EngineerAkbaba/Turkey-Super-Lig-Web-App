using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BusinessLayer;

namespace Super_Lig
{
    public partial class UpdateReferee : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            RefereeDataProcess.update(new Referee 
            { 
                LicenceNo=Convert.ToInt32(lisans.Text),
                LicenceName=lisansname.Text.ToString(),
                RefereeName=name.Text.ToString().Split(' ')[0],
                RefereSurname=name.Text.ToString().Split(' ')[1],
                Area=area.Text.ToString()
            });
            Response.Write("<script lang = 'javascript'>alert('Güncelleme Başarılı. Yeni listeyi görmek için tıklayınız'); window.location = 'ListReferee.aspx'</script");
        }
    }
}