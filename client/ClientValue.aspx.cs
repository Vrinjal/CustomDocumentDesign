using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class client_ClientValue : System.Web.UI.Page
{
    Class1 obj = new Class1();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnsearch_Click(object sender, EventArgs e)
    {
        grddata.DataSource = obj.viewdata("select * from value_doc a where a.txtownerv = '" + txtname.Text + "' and a.txtsurveyv ='" + txtsurveyno.Text + "' and a.txtfplotnov ='" + txtplotno.Text + "'");
        grddata.DataBind();
    }
}