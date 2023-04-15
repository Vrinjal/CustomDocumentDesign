using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class client_Changepassword : System.Web.UI.Page
{
    Class1 obj = new Class1();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btngo_Click(object sender, EventArgs e)
    {
        string str = "select pass from logintbl where uname ='" + txtusname.Text + "' and pass = '" + txtoldpass.Text  + "'";
        DataSet ds = new DataSet();
        ds = obj.viewdata(str);
        if (ds.Tables[0].Rows.Count > 0)
        {
            string strupd = "update logintbl set pass='" + txtnewpass.Text + "' where uname ='" + txtusname.Text + "' and pass = '" + txtoldpass.Text  + "'";
            obj.savedata(strupd);
            Response.Write("<script>alert('Password has been changed!')</Script>");
        }
        else
        {
            Response.Write("<script>alert('Username or Paaaword is incorrect, try again')</Script>");
        
        }
    }
}