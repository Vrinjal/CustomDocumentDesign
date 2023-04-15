using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class client_ClientOwnership : System.Web.UI.Page
{
    Class1 obj = new Class1();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnsearch_Click(object sender, EventArgs e)
    {
        grddata.DataSource = obj.viewdata("select * from owner_doc a,owner_doc b,owner_doc c where a.txtownername = '" + txtname.Text + "' and b.txtsurveyno='" + txtsurveyno.Text + "' and c.txtfinalplotno ='" + txtplotno.Text + "'");
        grddata.DataBind();
    }
}