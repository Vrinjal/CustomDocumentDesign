using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Data.SqlClient;
using System.Data;

public partial class admin_InitialDocs : System.Web.UI.Page
{
    Class1 myobj = new Class1();
    SqlConnection conn = new SqlConnection();

    protected void Page_Load(object sender, EventArgs e)
    {
        conn.ConnectionString = "Data Source=.\\SQLEXPRESS;AttachDbFilename=C:\\civil\\WebSite8\\App_Data\\Database.mdf;Integrated Security=True;User Instance=True";

        int i;
        for (i = 1; i <= 12; i++)
        {
            drpm4.Items.Add(i.ToString());
        }

        for (i = 1; i <= 31; i++)
        {
            drpd4.Items.Add(i.ToString());
        }

        for (i = 1990; i <= 2022; i++)
        {
            drpy4.Items.Add(i.ToString());
        }
    }
    public void vdata()
    {
        string strview = "select * from int_doc";
        grdi.DataSource = myobj.viewdata(strview);
        grdi.DataBind();
    }

    protected void btnsubi_Click(object sender, EventArgs e)
    {
        string strsave; // '" +variablename or controlname + "'
        string dt6 = drpm4.SelectedItem.Text + "/" + drpd4.SelectedItem.Text + "/" + drpy4.SelectedItem.Text;
        strsave = "insert into int_doc values('" + txtowneri.Text + "', '" + txtaddi.Text + "', '" + txtsurveyi.Text + "'," + txtfplotnoi.Text + ",'" + dt6 + "','" + upld5.FileName + "','False')";
        SqlCommand cmd = new SqlCommand(strsave, conn);
        conn.Open();
        cmd.ExecuteNonQuery();
        conn.Close();

        {
            string pth, flnm;
            flnm = Path.GetFileName(upld5.FileName);
            pth = Server.MapPath("InitialDocs/" + flnm);
            upld5.SaveAs(pth);
        }
    }
    protected void btnviewi_Click(object sender, EventArgs e)
    {
        string strview = "select * from int_doc";
        SqlDataAdapter adp = new SqlDataAdapter(strview, conn);
        DataSet ds = new DataSet();
        adp.Fill(ds);
        grdi.DataSource = ds;
        grdi.DataBind();
    }
    protected void grdi_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
    {
        grdi.EditIndex = -1;
        vdata();
    }
    protected void grdi_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        string strdel = "delete from int_doc where sdid=" + grdi.Rows[e.RowIndex].Cells[0].Text + "";
        myobj.savedata(strdel);
        vdata();
    }
    protected void grdi_RowEditing(object sender, GridViewEditEventArgs e)
    {
        grdi.EditIndex = e.NewEditIndex;
        vdata();
    }
    protected void grdi_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {
        CheckBox chk = new CheckBox();
        chk = (CheckBox)grdi.Rows[e.RowIndex].Cells[10].Controls[0];

        TextBox txtoname = new TextBox();
        txtoname = (TextBox)grdi.Rows[e.RowIndex].Cells[1].Controls[0];
        TextBox txtoadd = new TextBox();
        txtoadd = (TextBox)grdi.Rows[e.RowIndex].Cells[2].Controls[0];
        TextBox txtsurno = new TextBox();
        txtsurno = (TextBox)grdi.Rows[e.RowIndex].Cells[3].Controls[0];
        TextBox txtfplot = new TextBox();
        txtfplot = (TextBox)grdi.Rows[e.RowIndex].Cells[4].Controls[0];
        string strupd;

        chk = (CheckBox)grdi.Rows[e.RowIndex].Cells[10].Controls[0];
        strupd = "update int_doc set txtowneri='" + txtoname.Text + "',txtaddi ='" + txtoadd.Text + "',txtsurveyi = '" + txtsurno.Text + "',txtfplotnoi='" + txtfplot.Text + "',stat4='" + chk.Checked + "'where idocid=" + grdi.Rows[e.RowIndex].Cells[0].Text + "";
        myobj.savedata(strupd);
        grdi.EditIndex = -1;
        vdata();

    }
    protected void grdi_SelectedIndexChanged(object sender, EventArgs e)
    {
        txtowneri.Text = grdi.SelectedRow.Cells[1].Text;
        txtaddi.Text = grdi.SelectedRow.Cells[2].Text;
        txtsurveyi.Text = grdi.SelectedRow.Cells[3].Text;
        txtfplotnoi.Text = grdi.SelectedRow.Cells[4].Text;

    }
}