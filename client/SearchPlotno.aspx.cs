using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class client_SearchPlotno : System.Web.UI.Page
{
    Class1 obj = new Class1();

    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnsearch_Click(object sender, EventArgs e)
    {
        grddata.DataSource = obj.viewdata("select * from owner_doc a,sale_deed b,app_doc c,bro d,value_doc e,int_doc f where a.txtfinalplotno = '" + txtplotno.Text + "' and b.txtfplotnos='" + txtplotno.Text + "' and c.txtfplotnoa ='" + txtplotno.Text + "' and d.txtfplotnob='" + txtplotno.Text + "' and e.txtfplotnov='" + txtplotno.Text + "' and f.txtfplotnoi='" + txtplotno.Text + "'");
        grddata.DataBind();
    }
}