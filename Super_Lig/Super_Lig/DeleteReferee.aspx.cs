using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BusinessLayer;

namespace Super_Lig
{
    public partial class DeleteReferee : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
        protected void ListBox2_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void ListBox1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        public void sil_Click(object sender, EventArgs e)
        {
            RefereeDataProcess.Delete(Convert.ToInt32(Sicil.Text),AdıSoyadı.Text.ToString().Split(' ')[1]);
            Response.Write("<script lang = 'javascript'>alert('Seçtiğiniz Hakem Silindi. Yeni listeyi görmek için tıklayınız'); window.location = 'ListReferee.aspx'</script");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SorgulaGried.DataSource = RefereeDataProcess.Sorgula(Convert.ToInt32(Sicil.Text), AdıSoyadı.Text.ToString().Split(' ')[1]);
            SorgulaGried.DataBind();
            
        }
    }
}