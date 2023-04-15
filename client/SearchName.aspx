﻿<%@ Page Title="" Language="C#" MasterPageFile="~/client/clientmaster.master" AutoEventWireup="true" CodeFile="SearchName.aspx.cs" Inherits="client_SearchName" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style4
        {
        }
        .style5
        {
            height: 13px;
        }
        .style7
        {
            width: 398px;
            height: 3px;
        }
        .style9
        {
            width: 398px;
            height: 39px;
        }
        .style13
        {
            width: 307px;
        }
    </style>
</asp:Content>


<asp:Content ID="Content2" runat="server" 
    contentplaceholderid="ContentPlaceHolder1">
        
            <table align="center" class="style1" style="width: 76%">
                <tr>
                    <td class="style3">
    <table align="center" "width: 261%">
        <tr>
            <td class="style4" colspan="2">
                &nbsp;</td>
        </tr>
        <tr>
            <td "text-align: center" class="style13" style="text-align: center">
                Name of Owner </td>
            <td>
                <asp:TextBox ID="txtname" runat="server" Width="234px" style="margin-left: 0px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style5" colspan="2">
                </td>
        </tr>
        <tr>
            <td class="style7" colspan="2">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="btnsearch" runat="server" Height="26px" 
                    onclick="btnsearch_Click" Text="Search" />
            </td>
        </tr>
        <tr>
            <td class="style9" colspan="2">
            </td>
        </tr>
        <tr>
            <td colspan="2">
                <asp:GridView ID="grddata" runat="server" AutoGenerateColumns="False" 
                    BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" 
                    CellPadding="4">
                    <Columns>
                        <asp:BoundField DataField="docid" HeaderText="Sr no." />
                        <asp:BoundField DataField="txtownername" HeaderText="Name" />
                        <asp:BoundField DataField="dateo" HeaderText="Date" />
                        <asp:BoundField DataField="txtfinalplotno" HeaderText="Plot No." />
                        <asp:BoundField DataField="txtsurveyno" HeaderText="Survey No." />
                        <asp:HyperLinkField DataNavigateUrlFields="doc" 
                            DataNavigateUrlFormatString="../admin/Ownerdocs/{0}" DataTextField="doc" 
                            HeaderText="Allot_letter" />
                        <asp:HyperLinkField DataNavigateUrlFields="doc1" 
                            DataNavigateUrlFormatString="../admin/Ownerdocs/{0}" DataTextField="doc1" 
                            HeaderText="Nocs_/Land" />
                        <asp:HyperLinkField DataNavigateUrlFields="doc2" 
                            DataNavigateUrlFormatString="../admin/Ownerdocs/{0}" DataTextField="doc2" 
                            HeaderText="Certificate" />
                        <asp:HyperLinkField DataNavigateUrlFields="apdoc" 
                            DataNavigateUrlFormatString="../admin/ApproveDocs/{0}" DataTextField="apdoc" 
                            HeaderText="Lay_out" />
                        <asp:HyperLinkField DataNavigateUrlFields="apdoc1" 
                            DataNavigateUrlFormatString="../admin/Approvedocs/{0}" DataTextField="apdoc1" 
                            HeaderText="Land/Location" />
                        <asp:HyperLinkField DataNavigateUrlFields="apdoc2" 
                            DataNavigateUrlFormatString="../admin/Approvedocs/{0}" DataTextField="apdoc2" 
                            HeaderText="Build_Plot_plan" />
                        <asp:HyperLinkField DataNavigateUrlFields="saledoc" 
                            DataNavigateUrlFormatString="../admin/SaleDeed/{0}" DataTextField="saledoc" 
                            HeaderText="Sale_Deed" />
                        <asp:HyperLinkField DataNavigateUrlFields="idoc" 
                            DataNavigateUrlFormatString="../admin/InitialDocs/{0}" DataTextField="idoc" 
                            HeaderText="Title certi/Report" />
                        <asp:HyperLinkField DataNavigateUrlFields="valuedoc" 
                            DataNavigateUrlFormatString="../admin/Valuedocs/{0}" DataTextField="valuedoc" 
                            HeaderText="Area_plan" />
                        <asp:HyperLinkField DataNavigateUrlFields="bro" 
                            DataNavigateUrlFormatString="../admin/Brochure/{0}" DataTextField="bro" 
                            HeaderText="Brochure" />
                    </Columns>
                    <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
                    <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="#FFFFCC" />
                    <PagerStyle BackColor="#FFFFCC" ForeColor="#330099" HorizontalAlign="Center" />
                    <RowStyle BackColor="White" ForeColor="#330099" />
                    <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
                    <SortedAscendingCellStyle BackColor="#FEFCEB" />
                    <SortedAscendingHeaderStyle BackColor="#AF0101" />
                    <SortedDescendingCellStyle BackColor="#F6F0C0" />
                    <SortedDescendingHeaderStyle BackColor="#7E0000" />
                </asp:GridView>
            </td>
        </tr>
    </table>
                    </td>
                </tr>
                <tr>
                    <td>
                        &nbsp;</td>
                </tr>
            </table>
        
        </asp:Content>



