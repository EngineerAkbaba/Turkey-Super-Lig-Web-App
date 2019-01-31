﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BusinessLayer;

namespace Super_Lig
{
    public partial class ListReferee : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            GridViewReferee.DataSource = RefereeDataProcess.ListReferee();
            GridViewReferee.DataBind();
        }
    }
}