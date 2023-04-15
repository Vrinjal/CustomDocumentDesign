using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class client_ClientBrochure : System.Web.UI.Page
{
    Class1 obj = new Class1();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnsearch_Click(object sender, EventArgs e)
    {
        grddata.DataSource = obj.viewdata("select * from bro a where a.txtownerb = '" + txtname.Text + "' and a.txtsurveyb ='" + txtsurveyno.Text + "' and a.txtfplotnob ='" + txtplotno.Text + "'");
        grddata.DataBind();
    }
}