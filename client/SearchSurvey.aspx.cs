using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class client_SearchSurvey : System.Web.UI.Page
{
    Class1 obj = new Class1();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnsearch_Click(object sender, EventArgs e)
    {
        grddata.DataSource = obj.viewdata("select * from owner_doc a,sale_deed b,app_doc c,bro d,value_doc e,int_doc f where a.txtsurveyno = '" + txtsurveyno.Text + "' and b.txtsurveys='" + txtsurveyno.Text + "' and c.txtsurveya ='" + txtsurveyno.Text + "' and d.txtsurveyb='" + txtsurveyno.Text + "' and e.txtsurveyv='" + txtsurveyno.Text + "' and f.txtsurveyi='" + txtsurveyno.Text + "'");
        grddata.DataBind();
    }
}