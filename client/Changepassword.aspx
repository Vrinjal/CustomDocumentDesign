<%@ Page Title="" Language="C#" MasterPageFile="~/client/clientmaster.master" AutoEventWireup="true" CodeFile="Changepassword.aspx.cs" Inherits="client_Changepassword" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        
        .style1
        {
            text-align: center;
        }
                
        .style3
        {
            width: 131px;
        }
        .style4
        {
            width: 133px;
        }
        .style5
        {
            width: 189px;
        }
        
        .style6
        {
            width: 189px;
            height: 22px;
        }
        .style7
        {
            height: 22px;
        }
        .style10
        {
            width: 189px;
            height: 34px;
        }
        .style11
        {
            height: 34px;
        }
        .style12
        {
            width: 189px;
            height: 35px;
        }
        .style13
        {
            height: 35px;
        }
        
    </style>
    </asp:Content>
<asp:Content ID="Content2" runat="server" 
    contentplaceholderid="ContentPlaceHolder1">
        
            <table align="center">
                <tr>
                    <td class="style3" colspan="2">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="style1" colspan="2">
                        Change Password Page</td>
                </tr>
                <tr>
                    <td class="style3" colspan="2">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="style10">
                       
                        User Name</td>
                    <td class="style11">
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:TextBox ID="txtusname" runat="server" ValidationGroup="h" Width="211px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                            ControlToValidate="txtusname" ErrorMessage="Empty feild!!" ForeColor="#FF3300" 
                            ValidationGroup="h"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="style6">
                     
                        Old Password**</td>
                    <td class="style7">
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox ID="txtoldpass" runat="server" TextMode="Password" 
                            ValidationGroup="h" Width="109px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                            ControlToValidate="txtoldpass" ErrorMessage="Necessary feild!!" 
                            ForeColor="#FF3300" ValidationGroup="h"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="style12">
                    
                        New Password**</td>
                    <td class="style13">
                        <asp:TextBox ID="txtnewpass" runat="server" TextMode="Password" 
                            ValidationGroup="h" Width="111px"></asp:TextBox>
                        </td>
                </tr>
                <tr>
                    <td class="style5">
                       
                        Confirm Password**</td>
                    <td>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:TextBox ID="txtconpass" runat="server" TextMode="Password" 
                            ValidationGroup="h" Width="111px"></asp:TextBox>
                        <asp:CompareValidator ID="CompareValidator1" runat="server" 
                            ControlToCompare="txtnewpass" ControlToValidate="txtconpass" 
                            ErrorMessage="Try again!!" ForeColor="#3333CC" ValidationGroup="h"></asp:CompareValidator>
                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td colspan="2">
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

