using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Data.SqlClient;
using System.Data;



public partial class admin_Ownershipdocs : System.Web.UI.Page
{
    Class1 myobj = new Class1();
    SqlConnection conn = new SqlConnection();

    protected void Page_Load(object sender, EventArgs e)
    {
        conn.ConnectionString = "Data Source=.\\SQLEXPRESS;AttachDbFilename=C:\\civil\\WebSite8\\App_Data\\Database.mdf;Integrated Security=True;User Instance=True";
        
        int i;
        for (i = 1; i <= 12; i++)
        {
            drpmon.Items.Add(i.ToString());
        }

        for (i = 1; i <= 31; i++)
        {
            drpday.Items.Add(i.ToString());
        }

        for (i = 1990; i <= 2022; i++)
        {
            drpyear.Items.Add(i.ToString());
        }


    }

    protected void  btnsub_Click(object sender, EventArgs e)
{
        
        string strsave; // '" +variablename or controlname + "'
        string dt1 = drpmon.SelectedItem.Text + "/" + drpday.SelectedItem.Text + "/" + drpyear.SelectedItem.Text;
        strsave = "insert into owner_doc values('" + txtownername.Text + "', '" + txtowneradd.Text + "', '" + txtsurveyno.Text + "'," + txtfinalplotno.Text + ",'" + dt1 + "','" + upldo1.FileName + "','" + upldo2.FileName + "','" + upldo3.FileName + "','True' )";
        SqlCommand cmd = new SqlCommand(strsave, conn);
        conn.Open();
        cmd.ExecuteNonQuery();
        conn.Close();

        {
            string pth, flnm;
            flnm = Path.GetFileName(upldo1.FileName);
            pth = Server.MapPath("Ownerdocs/" + flnm);
            upldo1.SaveAs(pth);
        }
        {
            string pth, flnm;
            flnm = Path.GetFileName(upldo2.FileName);
            pth = Server.MapPath("Ownerdocs/" + flnm);
            upldo1.SaveAs(pth);
        }
        {
            string pth, flnm;
            flnm = Path.GetFileName(upldo3.FileName);
            pth = Server.MapPath("Ownerdocs/" + flnm);
            upldo1.SaveAs(pth);
        }
}

   protected void btnview_Click(object sender, EventArgs e)
    {

        string strview = "select * from owner_doc";
        SqlDataAdapter adp = new SqlDataAdapter(strview, conn);
        DataSet ds = new DataSet();
        adp.Fill(ds);
        grddocument.DataSource = ds;
        grddocument.DataBind();
    }
     public void vdata()
    {
        string strview = "select * from owner_doc";
        grddocument.DataSource = myobj.viewdata(strview);
        grddocument.DataBind();
    }
 protected void grddocument_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        string strdel = "delete from owner_doc where docid=" + grddocument.Rows[e.RowIndex].Cells[0].Text + "";
        myobj.savedata(strdel);
        vdata();
 
    }

    protected void grddocument_SelectedIndexChanged(object sender, EventArgs e)
    {
        txtownername.Text = grddocument.SelectedRow.Cells[1].Text;
        txtowneradd.Text = grddocument.SelectedRow.Cells[2].Text;
        txtsurveyno.Text = grddocument.SelectedRow.Cells[3].Text;
        txtfinalplotno.Text = grddocument.SelectedRow.Cells[4].Text;
    }

    protected void grddocument_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {
        CheckBox chk = new CheckBox();
        chk = (CheckBox)grddocument.Rows[e.RowIndex].Cells[12].Controls[0];

        TextBox txtoname = new TextBox();
        txtoname = (TextBox)grddocument.Rows[e.RowIndex].Cells[1].Controls[0];
        TextBox txtoadd = new TextBox();
        txtoadd = (TextBox)grddocument.Rows[e.RowIndex].Cells[2].Controls[0];
        TextBox txtsurno = new TextBox();
        txtsurno = (TextBox)grddocument.Rows[e.RowIndex].Cells[3].Controls[0];
        TextBox txtfplot = new TextBox();
        txtfplot = (TextBox)grddocument.Rows[e.RowIndex].Cells[4].Controls[0];
        string strupd;

        chk = (CheckBox)grddocument.Rows[e.RowIndex].Cells[12].Controls[0];
        strupd = "update owner_doc set txtownername='" + txtoname.Text + "',txtowneradd ='" + txtoadd.Text + "',txtsurveyno = '" + txtsurno.Text + "',txtfinalplotno='" + txtfplot.Text + "',sta='" + chk.Checked + "'where docid=" + grddocument.Rows[e.RowIndex].Cells[0].Text + "";
        myobj.savedata(strupd);
        grddocument.EditIndex = -1;
        vdata();
    }

  
    protected void grddocument_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
    {
        grddocument.EditIndex = -1;
        vdata();
    }
    protected void grddocument_RowEditing(object sender, GridViewEditEventArgs e)
    {
        grddocument.EditIndex = e.NewEditIndex;
        vdata();
    }
}


