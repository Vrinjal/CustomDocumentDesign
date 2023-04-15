using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class client_ClientSale : System.Web.UI.Page
{
    Class1 obj = new Class1();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnsearch_Click(object sender, EventArgs e)
    {
        grddata.DataSource = obj.viewdata("select * from sale_deed a where a.txtowners = '" + txtname.Text + "' and a.txtsurveys ='" + txtsurveyno.Text + "' and a.txtfplotnos ='" + txtplotno.Text + "'");
        grddata.DataBind();
    }
}