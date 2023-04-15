using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Data.SqlClient;
using System.Data;



public partial class admin_BuildingApproval : System.Web.UI.Page
{
    Class1 myobj = new Class1();
    SqlConnection conn = new SqlConnection();

    protected void Page_Load(object sender, EventArgs e)
    {
        conn.ConnectionString = "Data Source=.\\SQLEXPRESS;AttachDbFilename=C:\\civil\\WebSite8\\App_Data\\Database.mdf;Integrated Security=True;User Instance=True";

        int i;
        for (i = 1; i <= 12; i++)
        {
            drpm.Items.Add(i.ToString());
        }

        for (i = 1; i <= 31; i++)
        {
            drpd.Items.Add(i.ToString());
        }

        for (i = 1990; i <= 2022; i++)
        {
            drpy.Items.Add(i.ToString());
        }


    }

    public void vdata()
    {
        string strview = "select * from app_doc";
        grda.DataSource = myobj.viewdata(strview);
        grda.DataBind();
    }

    protected void grda_SelectedIndexChanged(object sender, EventArgs e)
    {
        txtownera.Text = grda.SelectedRow.Cells[1].Text;
        txtadda.Text = grda.SelectedRow.Cells[2].Text;
        txtsurveya.Text = grda.SelectedRow.Cells[3].Text;
        txtfplotnoa.Text = grda.SelectedRow.Cells[4].Text;
    }
    protected void grda_RowEditing(object sender, GridViewEditEventArgs e)
    {
        grda.EditIndex = e.NewEditIndex;
        vdata();
    }
    protected void grda_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        string strdel = "delete from app_doc where apdocid=" + grda.Rows[e.RowIndex].Cells[0].Text + "";
        myobj.savedata(strdel);
        vdata();
    }
    protected void grda_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
    {
        grda.EditIndex = -1;
        vdata();
    }
    protected void grda_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {
        CheckBox chk = new CheckBox();
        chk = (CheckBox)grda.Rows[e.RowIndex].Cells[12].Controls[0];

        TextBox txtoname = new TextBox();
        txtoname = (TextBox)grda.Rows[e.RowIndex].Cells[1].Controls[0];
        TextBox txtoadd = new TextBox();
        txtoadd = (TextBox)grda.Rows[e.RowIndex].Cells[2].Controls[0];
        TextBox txtsurno = new TextBox();
        txtsurno = (TextBox)grda.Rows[e.RowIndex].Cells[3].Controls[0];
        TextBox txtfplot = new TextBox();
        txtfplot = (TextBox)grda.Rows[e.RowIndex].Cells[4].Controls[0];
        string strupd;

        chk = (CheckBox)grda.Rows[e.RowIndex].Cells[12].Controls[0];
        strupd = "update app_doc set txtownera='" + txtoname.Text + "',txtadda ='" + txtoadd.Text + "',txtsurveya = '" + txtsurno.Text + "',txtfplotnoa='" + txtfplot.Text + "',stat='" + chk.Checked + "'where apdocid=" + grda.Rows[e.RowIndex].Cells[0].Text + "";
        myobj.savedata(strupd);
        grda.EditIndex = -1;
        vdata();
    }
    protected void btnsuba_Click(object sender, EventArgs e)
    {
        string strsave; // '" +variablename or controlname + "'
        string dt2 = drpm.SelectedItem.Text + "/" + drpd.SelectedItem.Text + "/" + drpy.SelectedItem.Text;
        strsave = "insert into app_doc values('" + txtownera.Text + "', '" + txtadda.Text + "', '" + txtsurveya.Text + "'," + txtfplotnoa.Text + ",'" + dt2 + "','" + uplda1.FileName + "','" + uplda2.FileName + "','" + uplda3.FileName + "','False')";
        SqlCommand cmd = new SqlCommand(strsave, conn);
        conn.Open();
        cmd.ExecuteNonQuery();
        conn.Close();

        {
            string pth, flnm;
            flnm = Path.GetFileName(uplda1.FileName);
            pth = Server.MapPath("ApproveDocs/" + flnm);
            uplda1.SaveAs(pth);
        }

        {
            string pth, flnm;
            flnm = Path.GetFileName(uplda2.FileName);
            pth = Server.MapPath("ApproveDocs/" + flnm);
            uplda1.SaveAs(pth);
        }

        {
            string pth, flnm;
            flnm = Path.GetFileName(uplda3.FileName);
            pth = Server.MapPath("ApproveDocs/" + flnm);
            uplda1.SaveAs(pth);
        }
    }
    protected void btnviewa_Click(object sender, EventArgs e)
    {
        string strview = "select * from app_doc";
        SqlDataAdapter adp = new SqlDataAdapter(strview, conn);
        DataSet ds = new DataSet();
        adp.Fill(ds);
        grda.DataSource = ds;
        grda.DataBind();
    }
}