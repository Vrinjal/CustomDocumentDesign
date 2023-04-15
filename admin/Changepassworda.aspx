<%@ Page Title="" Language="C#" MasterPageFile="~/admin/adminmaster.master" AutoEventWireup="true" CodeFile="Changepassworda.aspx.cs" Inherits="admin_Changepassworda" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style4
        {
            text-align: center;
            font-size: large;
        }
        .style6
        {
            text-align: center;
        }
        .style3
        {
            text-align: center;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" runat="server" 
    contentplaceholderid="ContentPlaceHolder2">
        
            <table align="center" class="style1">
                <tr>
                    <td class="style3" colspan="2">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="style4" colspan="2">
                        Change Password Page</td>
                </tr>
                <tr>
                    <td class="style3" colspan="2">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="style6">
                        UserName</td>
                    <td>
                        <asp:TextBox ID="txtusname" runat="server" ValidationGroup="h" Width="211px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                            ControlToValidate="txtusname" ErrorMessage="Empty feild!!" ForeColor="#FF3300" 
                            ValidationGroup="h"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="style6" colspan="2">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="style6">
                        Old Password**</td>
                    <td>
                        <asp:TextBox ID="txtoldpass" runat="server" TextMode="Password" 
                            ValidationGroup="h" Width="109px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                            ControlToValidate="txtoldpass" ErrorMessage="Necessary feild!!" 
                            ForeColor="#FF3300" ValidationGroup="h"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="style6">
                        New Password**</td>
                    <td>
                        <asp:TextBox ID="txtnewpass" runat="server" TextMode="Password" 
                            ValidationGroup="h" Width="111px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="style6">
                        Confirm Password**</td>
                    <td>
                        <asp:TextBox ID="txtconpass" runat="server" TextMode="Password" 
                            ValidationGroup="h" Width="111px"></asp:TextBox>
                        <asp:CompareValidator ID="CompareValidator1" runat="server" 
                            ControlToCompare="txtnewpass" ControlToValidate="txtconpass" 
                            ErrorMessage="Try again!!" ForeColor="#3333CC" ValidationGroup="h"></asp:CompareValidator>
                    </td>
                </tr>
                <tr>
                    <td class="style3" colspan="2">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="style3" colspan="2">
                        <asp:Button ID="btngo" runat="server" onclick="btngo_Click" Text="Go" 
                            ValidationGroup="h" Width="70px" />
                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                        &nbsp;</td>
                </tr>
            </table>
        
        </asp:Content>

