using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BusinessLayer;
namespace Super_Lig
{
    public partial class DeletePuan : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Kaydet_Click(object sender, EventArgs e)
        {
            PuanTableProcess.deleteTeam(Convert.ToInt32(takımno.Text));
            Response.Write("<script lang = 'javascript'>alert('Seçtiğiniz Takım Puan Tablosundan Silindi. Yeni listeyi görmek için tıklayınız'); window.location = 'PuanTable.aspx'</script");
        }
    }
}