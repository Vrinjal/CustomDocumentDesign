using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class Forgotpass : System.Web.UI.Page
{
    Class1 obj = new Class1();
     SqlConnection conn = new SqlConnection();

    protected void Page_Load(object sender, EventArgs e)
    {

        //conn.ConnectionString ="Data Source=.\\SQLEXPRESS;AttachDbFilename=C:\\civil\\WebSite8\\App_Data\\Database.mdf;Integrated Security=True;User Instance=True";
        if (IsPostBack==false )
        {
            drpques.DataSource = obj.viewdata(" select * from secquestbl");
            drpques.DataTextField = "secques";
            drpques.DataValueField = "secid";
            drpques.DataBind();
        }

    }
    
    protected void btnverify_Click(object sender, EventArgs e)
    {
        DataSet ds = new DataSet();
        ds = obj.viewdata("select pass from logintbl where uname='" + txtuname.Text  + "' and ans ='" + txtanswers.Text  + "' and secquesid=" + drpques.SelectedValue  + "");
        if (ds.Tables[0].Rows.Count > 0)
        {
            Label1.Text = ds.Tables[0].Rows[0].ItemArray[0].ToString();
        }
        else
        {
            Response.Write("<script/>alert('Data not match')</script>");
        }
      // Label1.DataBind = obj.viewdata("select * from login_tbl where a.uname = '" + txtuname.Text + "'");
       // Label1.DataBind();
    }
}