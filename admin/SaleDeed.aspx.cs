using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Data.SqlClient;
using System.Data;

public partial class admin_SaleDeed : System.Web.UI.Page
{
    Class1 myobj = new Class1();
    SqlConnection conn = new SqlConnection();

    protected void Page_Load(object sender, EventArgs e)
    {
        conn.ConnectionString = "Data Source=.\\SQLEXPRESS;AttachDbFilename=C:\\civil\\WebSite8\\App_Data\\Database.mdf;Integrated Security=True;User Instance=True";

        int i;
        for (i = 1; i <= 12; i++)
        {
            drpm2.Items.Add(i.ToString());
        }

        for (i = 1; i <= 31; i++)
        {
            drpd2.Items.Add(i.ToString());
        }

        for (i = 1990; i <= 2022; i++)
        {
            drpy2.Items.Add(i.ToString());
        }
    }
    public void vdata()
    {
        string strview = "select * from sale_deed";
        grds.DataSource = myobj.viewdata(strview);
        grds.DataBind();
    }

    protected void grds_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
    {
        grds.EditIndex = -1;
        vdata();
    }
    protected void grds_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        string strdel = "delete from sale_deed where sdid=" + grds.Rows[e.RowIndex].Cells[0].Text + "";
        myobj.savedata(strdel);
        vdata();

    }
    protected void grds_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {
        CheckBox chk = new CheckBox();
        chk = (CheckBox)grds.Rows[e.RowIndex].Cells[10].Controls[0];

        TextBox txtoname = new TextBox();
        txtoname = (TextBox)grds.Rows[e.RowIndex].Cells[1].Controls[0];
        TextBox txtoadd = new TextBox();
        txtoadd = (TextBox)grds.Rows[e.RowIndex].Cells[2].Controls[0];
        TextBox txtsurno = new TextBox();
        txtsurno = (TextBox)grds.Rows[e.RowIndex].Cells[3].Controls[0];
        TextBox txtfplot = new TextBox();
        txtfplot = (TextBox)grds.Rows[e.RowIndex].Cells[4].Controls[0];
        string strupd;

        chk = (CheckBox)grds.Rows[e.RowIndex].Cells[10].Controls[0];
        strupd = "update sale_deed set txtowners='" + txtoname.Text + "',txtadds ='" + txtoadd.Text + "',txtsurveys = '" + txtsurno.Text + "',txtfplotnos='" + txtfplot.Text + "',stat2='" + chk.Checked + "'where sdid=" + grds.Rows[e.RowIndex].Cells[0].Text + "";
        myobj.savedata(strupd);
        grds.EditIndex = -1;
        vdata();
    }
    protected void grds_RowEditing(object sender, GridViewEditEventArgs e)
    {
        grds.EditIndex = e.NewEditIndex;
        vdata();

    }
    protected void grds_SelectedIndexChanged(object sender, EventArgs e)
    {
        txtowners.Text = grds.SelectedRow.Cells[1].Text;
        txtadds.Text = grds.SelectedRow.Cells[2].Text;
        txtsurveys.Text = grds.SelectedRow.Cells[3].Text;
        txtfplotnos.Text = grds.SelectedRow.Cells[4].Text;

    }

    protected void btnsubs_Click(object sender, EventArgs e)
    {
        string strsave; // '" +variablename or controlname + "'
        string dt4 = drpm2.SelectedItem.Text + "/" + drpd2.SelectedItem.Text + "/" + drpy2.SelectedItem.Text;
        strsave = "insert into sale_deed values('" + txtowners.Text + "', '" + txtadds.Text + "', '" + txtsurveys.Text + "'," + txtfplotnos.Text + ",'" + dt4 + "','" + upld3.FileName + "','False')";
        SqlCommand cmd = new SqlCommand(strsave, conn);
        conn.Open();
        cmd.ExecuteNonQuery();
        conn.Close();

        {
            string pth, flnm;
            flnm = Path.GetFileName(upld3.FileName);
            pth = Server.MapPath("SaleDeed/" + flnm);
            upld3.SaveAs(pth);
        }
    }
    protected void btnviews_Click(object sender, EventArgs e)
    {
        string strview = "select * from sale_deed";
        SqlDataAdapter adp = new SqlDataAdapter(strview, conn);
        DataSet ds = new DataSet();
        adp.Fill(ds);
        grds.DataSource = ds;
        grds.DataBind();
    }
}