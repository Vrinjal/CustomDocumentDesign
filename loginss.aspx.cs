using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class loginss : System.Web.UI.Page
{
    Class1 obj = new Class1();
    
    protected void Page_Load(object sender, EventArgs e)
    {

    }


    protected void btnlogin_Click(object sender, EventArgs e)
    {
        DataSet ds = new DataSet();
        string strchk = "select type,uname from logintbl where uname='" + txtuname.Text + "' and pass='" + txtpass.Text + "'";
        ds = obj.viewdata(strchk);
        if (ds.Tables[0].Rows.Count > 0)
        {
            if (ds.Tables[0].Rows[0].ItemArray[0].ToString() == "Admin")
            {
                Response.Redirect("admin/adminhome.aspx");
            }
            else
            {
                Response.Redirect("client/clienthome.aspx");

            }
        }
        else
        {
            Response.Write("<script>alert('username or password id incorrect,try again!!')</script>");
        }
    }
    }

