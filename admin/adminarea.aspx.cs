using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class admin_adminarea : System.Web.UI.Page
{
    Class1 myobj = new Class1();

    protected void Page_Load(object sender, EventArgs e)
    {
        if (IsPostBack == false)
        {
            drpcity.DataSource = myobj.viewdata(" select * from citytbl");
            drpcity.DataTextField = "cityname";
            drpcity.DataValueField = "cityid";
            drpcity.DataBind();

        }
    }
    protected void btnaddarea_Click(object sender, EventArgs e)
    {
        string str = "insert into areatbl values('" + txtarea.Text + "'," + drpcity.SelectedValue + ")";
        myobj.savedata(str);
        Response.Write("<script>alert('Area is saved')</script>");
        
    }
}