using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class client_reg : System.Web.UI.Page
{
    Class1 obj = new Class1();

    protected void Page_Load(object sender, EventArgs e)
    {
        if (IsPostBack == false)
        {
            int i;
            for (i = 1; i <= 12; i++)
            {
                drpmon.Items.Add(i.ToString());

            }
            for (i = 1; i <= 31; i++)
            {
                drpday.Items.Add(i.ToString());

            }
            for (i = 1975; i <= DateTime.Now.Year-18; i++)
            {
                drpyear.Items.Add(i.ToString());

            }
            string str = "select * from citytbl where delflag='false'";
            drpcity.DataSource = obj.viewdata(str);
            drpcity.DataTextField = "cityname";
            drpcity.DataValueField = "cityid";
            drpcity.DataBind();

          
            drparea.DataSource = obj.viewdata(" select * from areatbl");
            drparea.DataTextField = "areaname";
            drparea.DataValueField = "areaid";
            drparea.DataBind();

            drpsec.DataSource = obj.viewdata(" select * from secquestbl");
            drpsec.DataTextField = "secques";
            drpsec.DataValueField = "secid";
            drpsec.DataBind();
  }
 }
  
  protected void btnsubmit_Click(object sender, EventArgs e)
    {
        string dt = drpmon.SelectedValue + "/" + drpday.SelectedValue + "/" + drpyear.SelectedValue;
        Response.Write(dt);
        try
        {
            DateTime dtt = Convert.ToDateTime(dt);
        }
        catch
        {
            Response.Write("<script>alert('Birthdate is invalid try again!!')</script>");
            goto endd;
        }

        string strsave = "insert into regtbl values('" + txtname.Text + "','" + txtadd.Text + "'," + drpcity.SelectedValue + "," + drparea.SelectedValue + ", " + txtpin.Text + ",'" + dt + "')";
        obj.savedata(strsave);

        string lastid = "select max(regid) from regtbl";
        DataSet ds = new DataSet();
        ds = obj.viewdata(lastid);

        string strlg = "insert into logintbl values('" + txtname.Text + "','" + txtpass.Text + "'," + ds.Tables[0].Rows[0].ItemArray[0].ToString() + "," + drpsec.SelectedValue + ",'" + txtans.Text + "','Client')";
        obj.savedata(strlg);

    endd: ;

    }

  protected void drpcity_SelectedIndexChanged(object sender, EventArgs e)
  {
      drparea.DataSource = obj.viewdata(" select * from areatbl where areaid=" + drpcity.SelectedValue + "");
      drparea.DataTextField = "areaname";
      drparea.DataValueField = "areaid";
      drparea.DataBind();

  }


}