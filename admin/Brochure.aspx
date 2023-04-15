<%@ Page Title="" Language="C#" MasterPageFile="~/admin/adminmaster.master" AutoEventWireup="true" CodeFile="Brochure.aspx.cs" Inherits="admin_Brochure" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">

        .style6
    {
        width: 78%;
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
            width: 64px;
        }
        .style17
        {
            width: 60px;
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
                <strong>Brochure Details</strong></td>
        </tr>
        <tr>
            <td class="style19">
                Name of Owner</td>
            <td class="style9" colspan="3">
                <asp:TextBox ID="txtownerb" runat="server" ValidationGroup="c"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="txtownerb" Display="Dynamic" 
                    ErrorMessage="Name missing!!" ForeColor="#FF3300" ValidationGroup="c"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                    ControlToValidate="txtownerb" Display="Dynamic" 
                    ErrorMessage="**'First letter Capital'" ForeColor="#0000CC" 
                    ValidationExpression="^[A-Z]{1}([A-Za-z]){1,49}" ValidationGroup="c"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="style19">
                Address</td>
            <td class="style9" colspan="3">
                <asp:TextBox ID="txtaddb" runat="server" Rows="3" TextMode="MultiLine"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style19">
                Survey Number</td>
            <td class="style9" colspan="3">
                <asp:TextBox ID="txtsurveyb" runat="server" Width="94px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="txtsurveyb" ErrorMessage="**" ForeColor="Red" 
                    ValidationGroup="c"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style19">
                Final Plot No</td>
            <td class="style9" colspan="3">
                <asp:TextBox ID="txtfplotnob" runat="server" Width="90px" ValidationGroup="c"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                    ControlToValidate="txtfplotnob" ErrorMessage="**!!" ForeColor="#0000CC" 
                    ValidationGroup="c"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style19">
                Date<br />(mm/dd/yyyy)</td>
            <td class="style16">
                <asp:DropDownList ID="drpm1" runat="server" Width="53px">
                </asp:DropDownList>
            </td>
            <td class="style17">
                <asp:DropDownList ID="drpd1" runat="server" Width="50px">
                </asp:DropDownList>
            </td>
            <td class="style18">
                <asp:DropDownList ID="drpy1" runat="server" style="margin-left: 0px" 
                Width="75px">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="style11">
                Document to Upload</td>
            <td class="style12" colspan="3">
                <asp:FileUpload ID="upld2" runat="server" />
            </td>
        </tr>
        <tr>
            <td class="style20">
            &nbsp;</td>
            <td class="style9" colspan="3">
                <asp:Button ID="btnsubb" runat="server" Text="Submit" ValidationGroup="c" 
                onclick="btnsubb_Click" />
                <asp:Button ID="btnviewb" runat="server" Text="View Data" 
                onclick="btnviewb_Click" />
            </td>
        </tr>
        <tr>
            <td colspan="4">
                <asp:GridView ID="grdb" runat="server" AutoGenerateColumns="False" 
                CellPadding="4" ForeColor="#333333" GridLines="None" 
                onrowcancelingedit="grdb_RowCancelingEdit" onrowdeleting="grdb_RowDeleting" 
                onrowediting="grdb_RowEditing" onrowupdating="grdb_RowUpdating" 
                onselectedindexchanged="grdb_SelectedIndexChanged">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:BoundField DataField="broid" HeaderText="Broid" ReadOnly="True" />
                        <asp:BoundField DataField="txtownerb" HeaderText="Owner" />
                        <asp:BoundField DataField="txtaddb" HeaderText="Address" />
                        <asp:BoundField DataField="txtsurveyb" HeaderText="Survey no" />
                        <asp:BoundField DataField="txtfplotnob" HeaderText="Final plotno." />
                        <asp:BoundField DataField="dateb" HeaderText="Date" ReadOnly="True" />
                        <asp:BoundField DataField="bro" HeaderText="Brochure" ReadOnly="True" />
                        <asp:CommandField ShowSelectButton="True" />
                        <asp:CommandField ShowDeleteButton="True" />
                        <asp:CommandField ShowEditButton="True" />
                        <asp:CheckBoxField DataField="stat1" HeaderText="Status" />
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


