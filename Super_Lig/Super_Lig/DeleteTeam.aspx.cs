using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BusinessLayer;
namespace Super_Lig
{
    public partial class DeleteTeam : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void sil_Click(object sender, EventArgs e)
        {
            TeamProcess.Delete(Convert.ToInt32(takımno.Text),AdıSoyadı.Text);
            Response.Write("<script lang = 'javascript'>alert('Seçtiğiniz Takım Silindi.'); window.location = 'ListTeam.aspx'</script");
        }
    }
}