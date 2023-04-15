<%@ Page Title="" Language="C#" MasterPageFile="~/client/clientmaster.master" AutoEventWireup="true" CodeFile="Clientapproval.aspx.cs" Inherits="client_Clientapproval" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style4
        {
            text-align: center;
        }
        .style6
        {
            text-align: center;
            height: 26px;
        }
    </style>
</asp:Content>


<asp:Content ID="Content2" runat="server" 
    contentplaceholderid="ContentPlaceHolder1">
        
            <table align="center" class="style1">
                <tr>
                    <td class="style6" colspan="2">
                        </td>
                </tr>
                <tr>
                    <td class="style4">
                        Owner Name.</td>
                    <td class="style3">
                        <asp:TextBox ID="txtname" runat="server" Width="229px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="style4">
                        Survey No.</td>
                    <td class="style3">
                        <asp:TextBox ID="txtsurveyno" runat="server" Width="56px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="style4">
                        Final Plotno.</td>
                    <td class="style3">
                        <asp:TextBox ID="txtplotno" runat="server" Width="55px"></asp:TextBox>
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
                                <asp:BoundField DataField="apdocid" HeaderText="Sr no." />
                                <asp:BoundField DataField="txtownera" HeaderText="Owner" />
                                <asp:BoundField DataField="txtsurveya" HeaderText="Survey no." />
                                <asp:BoundField DataField="txtfplotnoa" HeaderText="Plot no." />
                                <asp:HyperLinkField DataNavigateUrlFields="apdoc" 
                                    DataNavigateUrlFormatString="../admin/ApproveDocs/{0}" DataTextField="apdoc" 
                                    HeaderText="Layout_Plan" />
                                <asp:HyperLinkField DataNavigateUrlFields="apdoc1" 
                                    DataNavigateUrlFormatString="../admin/ApproveDocs/{0}" DataTextField="apdoc1" 
                                    HeaderText="Land_doc&amp;Location" />
                                <asp:HyperLinkField DataNavigateUrlFields="apdoc2" 
                                    DataNavigateUrlFormatString="../admin/ApproveDocs/{0}" DataTextField="apdoc2" 
                                    HeaderText="App.Build/Plot_Plan" />
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



