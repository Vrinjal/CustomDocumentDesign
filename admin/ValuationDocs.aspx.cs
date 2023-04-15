using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Data.SqlClient;
using System.Data;

public partial class admin_ValuationDocs : System.Web.UI.Page
{
    Class1 myobj = new Class1();
    SqlConnection conn = new SqlConnection();

    protected void Page_Load(object sender, EventArgs e)
    {
        conn.ConnectionString = "Data Source=.\\SQLEXPRESS;AttachDbFilename=C:\\civil\\WebSite8\\App_Data\\Database.mdf;Integrated Security=True;User Instance=True";

        int i;
        for (i = 1; i <= 12; i++)
        {
            drpm3.Items.Add(i.ToString());
        }

        for (i = 1; i <= 31; i++)
        {
            drpd3.Items.Add(i.ToString());
        }

        for (i = 1990; i <= 2022; i++)
        {
            drpy3.Items.Add(i.ToString());
        }
    }
    public void vdata()
    {
        string strview = "select * from value_doc";
        grdv.DataSource = myobj.viewdata(strview);
        grdv.DataBind();
    }


    protected void btnsubv_Click(object sender, EventArgs e)
    {
        string strsave; // '" +variablename or controlname + "'
        string dt5 = drpm3.SelectedItem.Text + "/" + drpd3.SelectedItem.Text + "/" + drpy3.SelectedItem.Text;
        strsave = "insert into value_doc values('" + txtownerv.Text + "', '" + txtaddv.Text + "', '" + txtsurveyv.Text + "'," + txtfplotnov.Text + ",'" + dt5 + "','" + upld4.FileName + "','True')";
        SqlCommand cmd = new SqlCommand(strsave, conn);
        conn.Open();
        cmd.ExecuteNonQuery();
        conn.Close();

        {
            string pth, flnm;
            flnm = Path.GetFileName(upld4.FileName);
            pth = Server.MapPath("ValueDocs/" + flnm);
            upld4.SaveAs(pth);
        }
    }
    protected void btnviewv_Click(object sender, EventArgs e)
    {
        string strview = "select * from value_doc";
        SqlDataAdapter adp = new SqlDataAdapter(strview, conn);
        DataSet ds = new DataSet();
        adp.Fill(ds);
        grdv.DataSource = ds;
        grdv.DataBind();
    }
    protected void grdv_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
    {
        grdv.EditIndex = -1;
        vdata();
    }
    protected void grdv_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        string strdel = "delete from value_doc where sdid=" + grdv.Rows[e.RowIndex].Cells[0].Text + "";
        myobj.savedata(strdel);
        vdata();

    }

    protected void grdv_RowEditing(object sender, GridViewEditEventArgs e)
    {
        grdv.EditIndex = e.NewEditIndex;
        vdata();

    }
    protected void grdv_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {
        CheckBox chk = new CheckBox();
        chk = (CheckBox)grdv.Rows[e.RowIndex].Cells[10].Controls[0];

        TextBox txtoname = new TextBox();
        txtoname = (TextBox)grdv.Rows[e.RowIndex].Cells[1].Controls[0];
        TextBox txtoadd = new TextBox();
        txtoadd = (TextBox)grdv.Rows[e.RowIndex].Cells[2].Controls[0];
        TextBox txtsurno = new TextBox();
        txtsurno = (TextBox)grdv.Rows[e.RowIndex].Cells[3].Controls[0];
        TextBox txtfplot = new TextBox();
        txtfplot = (TextBox)grdv.Rows[e.RowIndex].Cells[4].Controls[0];
        string strupd;

        chk = (CheckBox)grdv.Rows[e.RowIndex].Cells[10].Controls[0];
        strupd = "update value_doc set txtownerv='" + txtoname.Text + "',txtaddv ='" + txtoadd.Text + "',txtsurveyv = '" + txtsurno.Text + "',txtfplotnov='" + txtfplot.Text + "',stat3='" + chk.Checked + "'where vdid=" + grdv.Rows[e.RowIndex].Cells[0].Text + "";
        myobj.savedata(strupd);
        grdv.EditIndex = -1;
        vdata();

    }
    protected void grdv_SelectedIndexChanged(object sender, EventArgs e)
    {
        txtownerv.Text = grdv.SelectedRow.Cells[1].Text;
        txtaddv.Text = grdv.SelectedRow.Cells[2].Text;
        txtsurveyv.Text = grdv.SelectedRow.Cells[3].Text;
        txtfplotnov.Text = grdv.SelectedRow.Cells[4].Text;


    }
}