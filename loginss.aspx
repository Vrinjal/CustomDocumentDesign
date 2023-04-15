<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="loginss.aspx.cs" Inherits="loginss" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
  
    <style type="text/css">
        .style7
        {
            height: 35px;
        }
        .style8
        {
            height: 32px;
        }
        .style9
        {
            height: 34px;
        }
    </style>
  
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table>
        <tr>
            <td class="style8">
                UserName</td>
            <td class="style8">
                <asp:TextBox ID="txtuname" runat="server" Width="192px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style7">
                Password</td>
            <td class="style7">
                <asp:TextBox ID="txtpass" runat="server" Width="78px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td colspan="2" class="style9">
                <asp:Button ID="btnlogin" runat="server" onclick="btnlogin_Click" 
                    Text="Login" Font-Bold="True" ForeColor="#FF3300" />
                
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:LinkButton ID="lnknewuser" runat="server" PostBackUrl="~/client_reg.aspx">New User</asp:LinkButton>
&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:LinkButton ID="lnkforgot" runat="server" 
                    PostBackUrl="~/Forgotpass.aspx">Forgot Password</asp:LinkButton>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                
            </td>
        </tr>
    </table>
</asp:Content>

