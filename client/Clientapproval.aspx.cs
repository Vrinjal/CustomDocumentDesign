using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class client_Clientapproval : System.Web.UI.Page
{
    Class1 obj = new Class1();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnsearch_Click(object sender, EventArgs e)
    {
        grddata.DataSource = obj.viewdata("select * from app_doc a,app_doc b,app_doc c where a.txtownera = '" + txtname.Text + "' and b.txtsurveya ='" + txtsurveyno.Text + "' and c.txtfplotnoa ='" + txtplotno.Text + "'");
        grddata.DataBind();
    }
}