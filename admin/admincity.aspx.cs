﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;


public partial class admin_admincity : System.Web.UI.Page
{

    Class1 myobj = new Class1();
    SqlConnection conn = new SqlConnection();

    protected void Page_Load(object sender, EventArgs e)
    {
        conn.ConnectionString ="Data Source=.\\SQLEXPRESS;AttachDbFilename=C:\\civil\\WebSite8\\App_Data\\Database.mdf;Integrated Security=True;User Instance=True";
    }
    protected void btnaddcity_Click(object sender, EventArgs e)
    {
         string strsave;
        strsave = "insert into citytbl values('" + txtcity.Text + "','False')";
        myobj.savedata(strsave);
        Response.Write("<script>alert('City is saved')</script>");

    }
}