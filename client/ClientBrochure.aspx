<%@ Page Title="" Language="C#" MasterPageFile="~/client/clientmaster.master" AutoEventWireup="true" CodeFile="ClientBrochure.aspx.cs" Inherits="client_ClientBrochure" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style4
        {
            text-align: center;
            height: 23px;
        }
        .style5
        {
            width: 475px;
            text-align: center;
        }
        .style7
        {
            height: 23px;
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" runat="server" 
    contentplaceholderid="ContentPlaceHolder1">
        
            <table align="center" class="style1">
                <tr>
                    <td class="style4" colspan="2">
                        </td>
                </tr>
                <tr>
                    <td class="style5">
                        Owner Name</td>
                    <td class="style2">
                        <asp:TextBox ID="txtname" runat="server" Width="224px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="style5">
                        Survey no.</td>
                    <td class="style2">
                        <asp:TextBox ID="txtsurveyno" runat="server" Width="68px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="style5">
                        Final Plotno.</td>
                    <td class="style2">
                        <asp:TextBox ID="txtplotno" runat="server" Width="69px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="style3" colspan="2" style="text-align: center">
                        <asp:Button ID="btnsearch" runat="server" onclick="btnsearch_Click" 
                            Text="Search" />
                    </td>
                </tr>
                <tr>
                    <td class="style3" colspan="2" style="text-align: center">
                        <asp:GridView ID="grddata" runat="server" AutoGenerateColumns="False" 
                            BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" 
                            CellPadding="4">
                            <Columns>
                                <asp:BoundField DataField="broid" HeaderText="Sr no." />
                                <asp:BoundField DataField="txtownerb" HeaderText="Owner" />
                                <asp:BoundField DataField="txtsurveyb" HeaderText="Survey no." />
                                <asp:BoundField DataField="txtfplotnob" HeaderText="Plot no." />
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
                <tr>
                    <td colspan="2" class="style7">
                        &nbsp;</td>
                </tr>
            </table>
        
        </asp:Content>


