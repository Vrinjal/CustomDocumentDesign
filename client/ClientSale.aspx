<%@ Page Title="" Language="C#" MasterPageFile="~/client/clientmaster.master" AutoEventWireup="true" CodeFile="ClientSale.aspx.cs" Inherits="client_ClientSale" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style4
        {
            text-align: center;
        }
        </style>
</asp:Content>

<asp:Content ID="Content2" runat="server" 
    contentplaceholderid="ContentPlaceHolder1">
        
            <table align="center" class="style1">
                <tr>
                    <td class="style4" colspan="2">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="style4">
                        Owner Name</td>
                    <td class="style2">
                        <asp:TextBox ID="txtname" runat="server" Width="226px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="style4">
                        Survey no.</td>
                    <td class="style2">
                        <asp:TextBox ID="txtsurveyno" runat="server" Width="65px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="style4">
                        Final Plotno.</td>
                    <td class="style2">
                        <asp:TextBox ID="txtplotno" runat="server" Width="65px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="style3" colspan="2" style="text-align: center">
                        <asp:Button ID="btnsearch" runat="server" Text="Search" 
                            onclick="btnsearch_Click" />
                    </td>
                </tr>
                <tr>
                    <td class="style3" colspan="2" style="text-align: center">
                        <asp:GridView ID="grddata" runat="server" AutoGenerateColumns="False" 
                            BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" 
                            CellPadding="4">
                            <Columns>
                                <asp:BoundField DataField="sdid" HeaderText="Sr no." />
                                <asp:BoundField DataField="txtowners" HeaderText="Owner" />
                                <asp:BoundField DataField="txtsurveys" HeaderText="Survey no." />
                                <asp:BoundField DataField="txtfplotnos" HeaderText="Plot no." />
                                <asp:HyperLinkField DataNavigateUrlFields="saledoc" 
                                    DataNavigateUrlFormatString="../admin/SaleDeed/{0}" DataTextField="saledoc" 
                                    HeaderText="Sale_Deed" />
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
                <tr>
                    <td colspan="2">
                        &nbsp;</td>
                </tr>
            </table>
        
        </asp:Content>


