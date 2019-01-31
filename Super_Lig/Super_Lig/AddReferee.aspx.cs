using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BusinessLayer;

namespace Super_Lig
{
    public partial class AddReferee : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnRefereeSave_Click(object sender, EventArgs e)
        {
            if (txtRefereeLicenceNo.Text == string.Empty || txtRefereeLicenceName.Text == string.Empty || txtRefereeName.Text == string.Empty || txtRefereeSurName.Text == string.Empty || txtRefereeBirthDate.Text == string.Empty || txtRefereeArea.Text == string.Empty)
            {
                Response.Write("<script lang = 'javascript'>alert('Lütfen tüm alanları doldurunuz');</script");
            }
            else
            {
                RefereeDataProcess.AddReferee(new Referee
                {
                    LicenceNo = Convert.ToInt32(txtRefereeLicenceNo.Text),
                    LicenceName = txtRefereeLicenceName.Text,
                    RefereeName = txtRefereeName.Text,
                    RefereSurname = txtRefereeSurName.Text,
                    BirthDate = txtRefereeBirthDate.Text,
                    Area = txtRefereeArea.Text
                });
                Response.Write("<script lang = 'javascript'>alert('Hakem bilgileri veritabanına eklendi. Yeni listeyi görmek için tıklayınız'); window.location = 'ListReferee.aspx'</script");
            }
        }
        
    }
}