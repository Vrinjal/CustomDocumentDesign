using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class admin_SearchNamea : System.Web.UI.Page
{
    Class1 obj = new Class1();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnsearch_Click(object sender, EventArgs e)
    {
        grddata.DataSource = obj.viewdata("select * from owner_doc a,sale_deed b,app_doc c,bro d,value_doc e,int_doc f where a.txtownername = '" + txtname.Text + "' and b.txtowners='" + txtname.Text + "' and c.txtownera ='" + txtname.Text + "' and d.txtownerb='" + txtname.Text + "' and e.txtownerv='" + txtname.Text + "' and f.txtowneri='" + txtname.Text + "'");
        grddata.DataBind();
    }
}