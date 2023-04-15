<%@ Page Title="" Language="C#" MasterPageFile="~/admin/adminmaster.master" AutoEventWireup="true" CodeFile="Ownershipdocs.aspx.cs" Inherits="admin_Ownershipdocs" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">

        .style2
        {
            font-size: x-large;
        }
        .style3
        {
            height: 56px;
        }
        .style4
        {
            height: 46px;
        }
        .style5
        {
            height: 42px;
        }
    </style>
</asp:Content>


<asp:Content ID="Content2" runat="server" 
    contentplaceholderid="ContentPlaceHolder2">
    <table align="center" class="style1" style="width: 100%">
        <tr>
            <td class="style2" colspan="2" style="text-align: center">
                <strong>Owner Documents Details</strong></td>
        </tr>
        <tr>
            <td style="text-align: center">
                Name of Owner</td>
            <td>
                <asp:TextBox ID="txtownername" runat="server" Width="196px" ValidationGroup="a"></asp:TextBox>
            &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="txtownername" Display="Dynamic" 
                    ErrorMessage="Name missing!!" ForeColor="#FF3300" ValidationGroup="a"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                    ControlToValidate="txtownername" Display="Dynamic" 
                    ErrorMessage="**'First letter Capital'" ForeColor="#0000CC" 
                    ValidationExpression="^[A-Z]{1}([A-Za-z]){1,49}" ValidationGroup="a"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="style3" style="text-align: center">
                Address</td>
            <td class="style3">
                <asp:TextBox ID="txtowneradd" runat="server" Rows="3" TextMode="MultiLine" 
                    Width="187px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="text-align: center">
                Survey Number</td>
            <td>
                <asp:TextBox ID="txtsurveyno" runat="server" Width="124px" Height="22px" 
                    ValidationGroup="a"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="txtsurveyno" ErrorMessage="**" ForeColor="Red" 
                    ValidationGroup="a"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="text-align: center">
                Final Plot No</td>
            <td>
                <asp:TextBox ID="txtfinalplotno" runat="server" Width="81px" 
                    ValidationGroup="a"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                    ControlToValidate="txtfinalplotno" ErrorMessage="**!!" ForeColor="#0000CC" 
                    ValidationGroup="a"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="text-align: center">
                Date<br />(mm/dd/yyyy)</td>
            <td>
                <asp:DropDownList ID="drpmon" runat="server">
                </asp:DropDownList>
                <asp:DropDownList ID="drpday" runat="server">
                </asp:DropDownList>
                <asp:DropDownList ID="drpyear" runat="server">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="style4" style="text-align: center">
                Document to Upload</td>
            <td class="style4">
                <asp:FileUpload ID="upldo1" runat="server" />
            &nbsp;<asp:FileUpload ID="upldo2" runat="server" />
&nbsp;
                <asp:FileUpload ID="upldo3" runat="server" />
            </td>
        </tr>
        <tr>
            <td class="style5" colspan="2" style="text-align: center">
                <asp:Button ID="btnsub" runat="server" onclick="btnsub_Click" Text="Submit" 
                    ValidationGroup="a" />
            &nbsp;
                <asp:Button ID="btnview" runat="server" onclick="btnview_Click" 
                    Text="View Data" />
            </td>
        </tr>
        <tr>
            <td colspan="2">
                <asp:GridView ID="grddocument" runat="server" AutoGenerateColumns="False" 
                    CellPadding="4" ForeColor="#333333" GridLines="None" 
                    onrowdeleting="grddocument_RowDeleting" 
                    onselectedindexchanged="grddocument_SelectedIndexChanged" 
                    onrowcancelingedit="grddocument_RowCancelingEdit" 
                    onrowediting="grddocument_RowEditing" onrowupdating="grddocument_RowUpdating">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:BoundField DataField="docid" HeaderText="Docid" ReadOnly="True" />
                        <asp:BoundField DataField="txtownername" HeaderText="Owner" />
                        <asp:BoundField DataField="txtowneradd" HeaderText="Address" />
                        <asp:BoundField DataField="txtsurveyno" HeaderText="Survey no." />
                        <asp:BoundField DataField="txtfinalplotno" HeaderText="Final Plotno." />
                        <asp:BoundField DataField="dateo" HeaderText="Date(mm/dd/yyyy)" 
                            ReadOnly="True" />
                        <asp:BoundField DataField="doc" HeaderText="Allotment Letter" ReadOnly="True" />
                        <asp:BoundField DataField="doc1" HeaderText="Nocs." ReadOnly="True" />
                        <asp:BoundField DataField="doc2" HeaderText="Commencement certi." 
                            ReadOnly="True" />
                        <asp:CommandField ShowSelectButton="True" />
                        <asp:CommandField ShowDeleteButton="True" />
                        <asp:CommandField ShowEditButton="True" />
                        <asp:CheckBoxField DataField="sta" HeaderText="Status" />
                    </Columns>
                    <EditRowStyle BackColor="#7C6F57" />
                    <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="#E3EAEB" />
                    <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
                    <SortedAscendingCellStyle BackColor="#F8FAFA" />
                    <SortedAscendingHeaderStyle BackColor="#246B61" />
                    <SortedDescendingCellStyle BackColor="#D4DFE1" />
                    <SortedDescendingHeaderStyle BackColor="#15524A" />
                </asp:GridView>
            </td>
        </tr>
    </table>
</asp:Content>



