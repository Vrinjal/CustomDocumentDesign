using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Data.SqlClient;
using System.Data;

public partial class admin_Brochure : System.Web.UI.Page
{
    Class1 myobj = new Class1();
    SqlConnection conn = new SqlConnection();

    protected void Page_Load(object sender, EventArgs e)
    {
        conn.ConnectionString = "Data Source=.\\SQLEXPRESS;AttachDbFilename=C:\\civil\\WebSite8\\App_Data\\Database.mdf;Integrated Security=True;User Instance=True";

        int i;
        for (i = 1; i <= 12; i++)
        {
            drpm1.Items.Add(i.ToString());
        }

        for (i = 1; i <= 31; i++)
        {
            drpd1.Items.Add(i.ToString());
        }

        for (i = 1990; i <= 2022; i++)
        {
            drpy1.Items.Add(i.ToString());
        }
    }
    public void vdata()
    {
        string strview = "select * from bro";
        grdb.DataSource = myobj.viewdata(strview);
        grdb.DataBind();
    }

    protected void grdb_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
    {
        grdb.EditIndex = -1;
        vdata();
    }
    protected void grdb_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        string strdel = "delete from bro where broid=" + grdb.Rows[e.RowIndex].Cells[0].Text + "";
        myobj.savedata(strdel);
        vdata();
    }
    protected void grdb_RowEditing(object sender, GridViewEditEventArgs e)
    {
        grdb.EditIndex = e.NewEditIndex;
        vdata();
    }
    protected void grdb_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {
        CheckBox chk = new CheckBox();
        chk = (CheckBox)grdb.Rows[e.RowIndex].Cells[10].Controls[0];

        TextBox txtoname = new TextBox();
        txtoname = (TextBox)grdb.Rows[e.RowIndex].Cells[1].Controls[0];
        TextBox txtoadd = new TextBox();
        txtoadd = (TextBox)grdb.Rows[e.RowIndex].Cells[2].Controls[0];
        TextBox txtsurno = new TextBox();
        txtsurno = (TextBox)grdb.Rows[e.RowIndex].Cells[3].Controls[0];
        TextBox txtfplot = new TextBox();
        txtfplot = (TextBox)grdb.Rows[e.RowIndex].Cells[4].Controls[0];
        string strupd;

        chk = (CheckBox)grdb.Rows[e.RowIndex].Cells[10].Controls[0];
        strupd = "update bro set txtownerb='" + txtoname.Text + "',txtaddb ='" + txtoadd.Text + "',txtsurveyb = '" + txtsurno.Text + "',txtfplotnob='" + txtfplot.Text + "',stat1='" + chk.Checked + "'where broid=" + grdb.Rows[e.RowIndex].Cells[0].Text + "";
        myobj.savedata(strupd);
        grdb.EditIndex = -1;
        vdata();
    }
    protected void grdb_SelectedIndexChanged(object sender, EventArgs e)
    {
        txtownerb.Text = grdb.SelectedRow.Cells[1].Text;
        txtaddb.Text = grdb.SelectedRow.Cells[2].Text;
        txtsurveyb.Text = grdb.SelectedRow.Cells[3].Text;
        txtfplotnob.Text = grdb.SelectedRow.Cells[4].Text;
    }
    
    protected void btnsubb_Click(object sender, EventArgs e)
    {
        string strsave; // '" +variablename or controlname + "'
        string dt3 = drpm1.SelectedItem.Text + "/" + drpd1.SelectedItem.Text + "/" + drpy1.SelectedItem.Text;
        strsave = "insert into bro values('" + txtownerb.Text + "', '" + txtaddb.Text + "', '" + txtsurveyb.Text + "'," + txtfplotnob.Text + ",'" + dt3 + "','" + upld2.FileName + "','True')";
        SqlCommand cmd = new SqlCommand(strsave, conn);
        conn.Open();
        cmd.ExecuteNonQuery();
        conn.Close();

        {
            string pth, flnm;
            flnm = Path.GetFileName(upld2.FileName);
            pth = Server.MapPath("Brochure/" + flnm);
            upld2.SaveAs(pth);
        }
    }

    protected void btnviewb_Click(object sender, EventArgs e)
    {
        string strview = "select * from bro";
        SqlDataAdapter adp = new SqlDataAdapter(strview, conn);
        DataSet ds = new DataSet();
        adp.Fill(ds);
        grdb.DataSource = ds;
        grdb.DataBind();
    }
}