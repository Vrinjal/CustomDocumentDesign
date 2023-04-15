<%@ Page Title="" Language="C#" MasterPageFile="~/admin/adminmaster.master" AutoEventWireup="true" CodeFile="BuildingApproval.aspx.cs" Inherits="admin_BuildingApproval" %>

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
    .style9
    {
        }
        .style11
        {
            text-align: center;
            width: 307px;
            height: 34px;
        }
        .style12
        {
            height: 34px;
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
        .style19
        {
            width: 307px;
            text-align: center;
        }
        .style20
    {
    }
    </style>
</asp:Content>

<asp:Content ID="Content2" runat="server" 
    contentplaceholderid="ContentPlaceHolder2">
    <table class="style6">
    <tr>
        <td class="style7" colspan="4">
            <strong>Approval Document Details</strong></td>
    </tr>
    <tr>
        <td class="style19">
                Name of Owner</td>
        <td class="style9" colspan="3">
            <asp:TextBox ID="txtownera" runat="server" ValidationGroup="b"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="txtownera" Display="Dynamic" 
                    ErrorMessage="Name missing!!" ForeColor="#FF3300" ValidationGroup="b"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                    ControlToValidate="txtownera" Display="Dynamic" 
                    ErrorMessage="**'First letter Capital'" ForeColor="#0000CC" 
                    ValidationExpression="^[A-Z]{1}([A-Za-z]){1,49}" ValidationGroup="b"></asp:RegularExpressionValidator>
        </td>
    </tr>
    <tr>
        <td class="style19">
                Address</td>
        <td class="style9" colspan="3">
            <asp:TextBox ID="txtadda" runat="server" Rows="3" TextMode="MultiLine"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="style19">
                Survey Number</td>
        <td class="style9" colspan="3">
            <asp:TextBox ID="txtsurveya" runat="server" Width="94px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="txtsurveya" ErrorMessage="**" ForeColor="Red" 
                    ValidationGroup="b"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="style19">
                Final Plot No</td>
        <td class="style9" colspan="3">
            <asp:TextBox ID="txtfplotnoa" runat="server" Width="90px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                    ControlToValidate="txtfplotnoa" ErrorMessage="**!!" ForeColor="#0000CC" 
                    ValidationGroup="b"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="style19">
                Date<br />(mm/dd/yyyy)</td>
        <td class="style16">
            <asp:DropDownList ID="drpm" runat="server" Width="53px">
            </asp:DropDownList>
        </td>
        <td class="style17">
            <asp:DropDownList ID="drpd" runat="server" Width="50px">
            </asp:DropDownList>
        </td>
        <td class="style18">
            <asp:DropDownList ID="drpy" runat="server" style="margin-left: 0px" 
                Width="75px">
            </asp:DropDownList>
        </td>
    </tr>
    <tr>
        <td class="style11">
                Document to Upload</td>
        <td class="style12" colspan="3">
            <asp:FileUpload ID="uplda1" runat="server" />
        &nbsp;<asp:FileUpload ID="uplda2" runat="server" />
&nbsp;<asp:FileUpload ID="uplda3" runat="server" />
        </td>
    </tr>
    <tr>
        <td class="style20" colspan="4">
            <asp:Button ID="btnsuba" runat="server" Text="Submit" ValidationGroup="b" 
                onclick="btnsuba_Click" />
            <asp:Button ID="btnviewa" runat="server" Text="View Data" 
                onclick="btnviewa_Click" />
        </td>
    </tr>
    <tr>
        <td colspan="4">
            <asp:GridView ID="grda" runat="server" AutoGenerateColumns="False" 
                CellPadding="4" ForeColor="#333333" GridLines="None" 
                onrowcancelingedit="grda_RowCancelingEdit" onrowdeleting="grda_RowDeleting" 
                onrowediting="grda_RowEditing" onrowupdating="grda_RowUpdating" 
                onselectedindexchanged="grda_SelectedIndexChanged">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:BoundField DataField="apdocid" HeaderText="AppDocid" ReadOnly="True" />
                    <asp:BoundField DataField="txtownera" HeaderText="Owner" />
                    <asp:BoundField DataField="txtadda" HeaderText="Address" />
                    <asp:BoundField DataField="txtsurveya" HeaderText="Survey no" />
                    <asp:BoundField DataField="txtfplotnoa" HeaderText="Final plotno." />
                    <asp:BoundField DataField="datea" HeaderText="Date" ReadOnly="True" />
                    <asp:BoundField DataField="apdoc" HeaderText="Approved Layout Plan" 
                        ReadOnly="True" />
                    <asp:BoundField DataField="apdoc1" HeaderText="Land Doc.&amp;Location" 
                        ReadOnly="True" />
                    <asp:BoundField DataField="apdoc2" HeaderText="App.Building/PlottingPlan" 
                        ReadOnly="True" />
                    <asp:CommandField ShowSelectButton="True" />
                    <asp:CommandField ShowDeleteButton="True" />
                    <asp:CommandField ShowEditButton="True" />
                    <asp:CheckBoxField DataField="stat" HeaderText="Status" />
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


