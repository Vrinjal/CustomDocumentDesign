<%@ Page Title="" Language="C#" MasterPageFile="~/admin/adminmaster.master" AutoEventWireup="true" CodeFile="InitialDocs.aspx.cs" Inherits="admin_InitialDocs" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">




        .style6
    {
        width: 98%;
    }
    .style7
    {
        text-align: center;
        font-size: x-large;
    }
        .style19
        {
            width: 111px;
            text-align: center;
        }
        .style16
        {
            width: 11px;
        }
        .style17
        {
            width: 35px;
        }
        .style18
        {
            width: 93px;
        }
        .style11
        {
            text-align: center;
            width: 111px;
            height: 34px;
        }
        .style12
        {
            height: 34px;
        }
        .style20
        {
            width: 111px;
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" runat="server" 
    contentplaceholderid="ContentPlaceHolder2">
    <table class="style6">
        <tr>
            <td class="style7" colspan="4">
                <strong>Initial Documents Details</strong></td>
        </tr>
        <tr>
            <td class="style19">
                Name of Owner</td>
            <td class="style9" colspan="3">
                <asp:TextBox ID="txtowneri" runat="server" ValidationGroup="f"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="txtowneri" Display="Dynamic" 
                    ErrorMessage="Name missing!!" ForeColor="#FF3300" ValidationGroup="f"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                    ControlToValidate="txtowneri" Display="Dynamic" 
                    ErrorMessage="**'First letter Capital'" ForeColor="#0000CC" 
                    ValidationExpression="^[A-Z]{1}([A-Za-z]){1,49}" ValidationGroup="f"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="style19">
                Address</td>
            <td class="style9" colspan="3">
                <asp:TextBox ID="txtaddi" runat="server" Rows="3" TextMode="MultiLine"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style19">
                Survey Number</td>
            <td class="style9" colspan="3">
                <asp:TextBox ID="txtsurveyi" runat="server" Width="94px" ValidationGroup="f"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="txtsurveyi" ErrorMessage="**" ForeColor="Red" 
                    ValidationGroup="f"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style19">
                Final Plot No</td>
            <td class="style9" colspan="3">
                <asp:TextBox ID="txtfplotnoi" runat="server" Width="90px" ValidationGroup="f"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                    ControlToValidate="txtfplotnoi" ErrorMessage="**!!" ForeColor="#0000CC" 
                    ValidationGroup="f"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style19">
                Date<br />(mm/dd/yyyy)</td>
            <td class="style16">
                <asp:DropDownList ID="drpm4" runat="server" Width="53px">
                </asp:DropDownList>
            </td>
            <td class="style17">
                <asp:DropDownList ID="drpd4" runat="server" Width="50px">
                </asp:DropDownList>
            </td>
            <td class="style18">
                <asp:DropDownList ID="drpy4" runat="server" style="margin-left: 0px" 
                Width="75px">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="style11">
                Document to Upload</td>
            <td class="style12" colspan="3">
                <asp:FileUpload ID="upld5" runat="server" />
            </td>
        </tr>
        <tr>
            <td class="style20">
                &nbsp;</td>
            <td class="style9" colspan="3">
                <asp:Button ID="btnsubi" runat="server" Text="Submit" ValidationGroup="f" 
                onclick="btnsubi_Click" />
                <asp:Button ID="btnviewi" runat="server" Text="View Data" 
                onclick="btnviewi_Click" />
            </td>
        </tr>
        <tr>
            <td colspan="4">
                <asp:GridView ID="grdi" runat="server" AutoGenerateColumns="False" 
                CellPadding="4" ForeColor="#333333" GridLines="None" 
                onrowcancelingedit="grdi_RowCancelingEdit" onrowdeleting="grdi_RowDeleting" 
                onrowediting="grdi_RowEditing" onrowupdating="grdi_RowUpdating" 
                onselectedindexchanged="grdi_SelectedIndexChanged">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:BoundField DataField="idocid" HeaderText="IDocid" ReadOnly="True" />
                        <asp:BoundField DataField="txtowneri" HeaderText="Owner" />
                        <asp:BoundField DataField="txtaddi" HeaderText="Address" />
                        <asp:BoundField DataField="txtsurveyi" HeaderText="Survey no" />
                        <asp:BoundField DataField="txtfplotnoi" HeaderText="Final plotno." />
                        <asp:BoundField DataField="datei" HeaderText="Date" ReadOnly="True" />
                        <asp:BoundField DataField="idoc" HeaderText="Title Clearance certi./Report" 
                            ReadOnly="True" />
                        <asp:CommandField ShowSelectButton="True" />
                        <asp:CommandField ShowDeleteButton="True" />
                        <asp:CommandField ShowEditButton="True" />
                        <asp:CheckBoxField DataField="stat4" HeaderText="Status" />
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


