using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Data;


public class Class1
{
    SqlConnection conn = new SqlConnection();
    public Class1()
    {

    }
    public void getconn()
    {
        conn.ConnectionString = "Data Source=.\\SQLEXPRESS;AttachDbFilename=C:\\civil\\WebSite8\\App_Data\\Database.mdf;Integrated Security=True;User Instance=True";
    }
    public void savedata(string strsave)
    {
        getconn();
        SqlCommand cmd = new SqlCommand(strsave, conn);
        conn.Open();
        cmd.ExecuteNonQuery();
        conn.Close();
    }
    public DataSet viewdata(string strview)
    {

        getconn();
        DataSet ds = new DataSet();
        SqlDataAdapter adp = new SqlDataAdapter(strview, conn);
        adp.Fill(ds);
        return ds;

    }


}

