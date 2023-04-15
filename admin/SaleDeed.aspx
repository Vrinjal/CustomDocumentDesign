<%@ Page Title="" Language="C#" MasterPageFile="~/admin/adminmaster.master" AutoEventWireup="true" CodeFile="SaleDeed.aspx.cs" Inherits="admin_SaleDeed" %>

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
                <strong>Sale Deed Details</strong></td>
        </tr>
        <tr>
            <td class="style19">
                Name of Owner</td>
            <td class="style9" colspan="3">
                <asp:TextBox ID="txtowners" runat="server" ValidationGroup="c"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="txtowners" Display="Dynamic" 
                    ErrorMessage="Name missing!!" ForeColor="#FF3300" ValidationGroup="d"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                    ControlToValidate="txtowners" Display="Dynamic" 
                    ErrorMessage="**'First letter Capital'" ForeColor="#0000CC" 
                    ValidationExpression="^[A-Z]{1}([A-Za-z]){1,49}" ValidationGroup="d"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="style19">
                Address</td>
            <td class="style9" colspan="3">
                <asp:TextBox ID="txtadds" runat="server" Rows="3" TextMode="MultiLine"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style19">
                Survey Number</td>
            <td class="style9" colspan="3">
                <asp:TextBox ID="txtsurveys" runat="server" Width="94px" ValidationGroup="d"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="txtsurveys" ErrorMessage="**" ForeColor="Red" 
                    ValidationGroup="d"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style19">
                Final Plot No</td>
            <td class="style9" colspan="3">
                <asp:TextBox ID="txtfplotnos" runat="server" Width="90px" ValidationGroup="d"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                    ControlToValidate="txtfplotnos" ErrorMessage="**!!" ForeColor="#0000CC" 
                    ValidationGroup="d"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style19">
                Date<br />(mm/dd/yyyy)</td>
            <td class="style16">
                <asp:DropDownList ID="drpm2" runat="server" Width="53px">
                </asp:DropDownList>
            </td>
            <td class="style17">
                <asp:DropDownList ID="drpd2" runat="server" Width="50px">
                </asp:DropDownList>
            </td>
            <td class="style18">
                <asp:DropDownList ID="drpy2" runat="server" style="margin-left: 0px" 
                Width="75px">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="style11">
                Document to Upload</td>
            <td class="style12" colspan="3">
                <asp:FileUpload ID="upld3" runat="server" />
            </td>
        </tr>
        <tr>
            <td class="style20">
            &nbsp;</td>
            <td class="style9" colspan="3">
                <asp:Button ID="btnsubs" runat="server" Text="Submit" ValidationGroup="d" 
                onclick="btnsubs_Click" />
                <asp:Button ID="btnviews" runat="server" Text="View Data" 
                onclick="btnviews_Click" />
            </td>
        </tr>
        <tr>
            <td colspan="4">
                <asp:GridView ID="grds" runat="server" AutoGenerateColumns="False" 
                CellPadding="4" ForeColor="#333333" GridLines="None" 
                onrowcancelingedit="grds_RowCancelingEdit" onrowdeleting="grds_RowDeleting" 
                onrowediting="grds_RowEditing" onrowupdating="grds_RowUpdating" 
                onselectedindexchanged="grds_SelectedIndexChanged">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:BoundField DataField="sdid" HeaderText="SDid" ReadOnly="True" />
                        <asp:BoundField DataField="txtowners" HeaderText="Owner" />
                        <asp:BoundField DataField="txtadds" HeaderText="Address" />
                        <asp:BoundField DataField="txtsurveys" HeaderText="Survey no" />
                        <asp:BoundField DataField="txtfplotnos" HeaderText="Final plotno." />
                        <asp:BoundField DataField="dates" HeaderText="Date" ReadOnly="True" />
                        <asp:BoundField DataField="saledoc" HeaderText="SaleDeed" ReadOnly="True" />
                        <asp:CommandField ShowSelectButton="True" />
                        <asp:CommandField ShowDeleteButton="True" />
                        <asp:CommandField ShowEditButton="True" />
                        <asp:CheckBoxField DataField="stat2" HeaderText="Status" />
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


