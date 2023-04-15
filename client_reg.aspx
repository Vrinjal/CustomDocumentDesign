<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="client_reg.aspx.cs" Inherits="client_reg" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    
    
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table border="1" style="width: 524px; height: 577px" align="center" 
        bgcolor="White">
        <tr>
            <td>
                Name</td>
            <td>
                &nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox ID="txtname" runat="server" Width="160px"></asp:TextBox>
                &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="txtname" Display="Dynamic" ErrorMessage="**" 
                    ForeColor="#000099"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" 
                    ControlToValidate="txtname" Display="Dynamic" ErrorMessage="Try again!!" 
                    ForeColor="Red" ValidationExpression="^[A-Z]{1}([A-Za-z]){1,49}"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td>
                Address</td>
            <td>
                <asp:TextBox ID="txtadd" runat="server" Rows="3" TextMode="MultiLine"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                City</td>
            <td>
                <asp:DropDownList ID="drpcity" runat="server" 
                    onselectedindexchanged="drpcity_SelectedIndexChanged">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td>
                Area Name</td>
            <td>
                <asp:DropDownList ID="drparea" runat="server">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td>
                Pincode</td>
            <td>
                <asp:TextBox ID="txtpin" runat="server" Width="99px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                Email Address</td>
            <td>
                <asp:TextBox ID="txtemail" runat="server" Width="207px"></asp:TextBox>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                    ControlToValidate="txtemail" ErrorMessage="Invalid Email!!" ForeColor="#000099" 
                    ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td>
                Phone Number</td>
            <td>
                <asp:TextBox ID="txtphno" runat="server" Width="159px"></asp:TextBox>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                    ControlToValidate="txtphno" ErrorMessage="Try again!!" ForeColor="#000099" 
                    ValidationExpression="9(\d){9}"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td>
                Date of Birth<br />
                (mm/dd/yyyy)</td>
            <td>
               &nbsp;&nbsp;
                <asp:DropDownList ID="drpmon" runat="server">
                </asp:DropDownList>
                <asp:DropDownList ID="drpday" runat="server">
                </asp:DropDownList>
                <asp:DropDownList ID="drpyear" runat="server">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td>
                User Name</td>
            <td>
                <asp:TextBox ID="txtuname" runat="server" Width="99px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                Password</td>
            <td>
                <asp:TextBox ID="txtpass" runat="server" Width="95px" TextMode="Password"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                ConfirmPassword</td>
            <td>
                <asp:TextBox ID="txtcpass" runat="server" Width="95px" 
                    TextMode="Password"></asp:TextBox>
                <asp:CompareValidator ID="CompareValidator1" runat="server" 
                    ControlToCompare="txtpass" ControlToValidate="txtcpass" 
                    ErrorMessage="try again!!" ForeColor="#0000CC"></asp:CompareValidator>
            </td>
        </tr>
        <tr>
            <td>
                Security Questions</td>
            <td>
                <asp:DropDownList ID="drpsec" runat="server">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td>
                Answers</td>
            <td>
                <asp:TextBox ID="txtans" runat="server" Height="22px" Width="187px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td colspan="2">
                &nbsp;<asp:Button ID="btnsubmit" runat="server" onclick="btnsubmit_Click" 
                    Text="Submit" />
            </td>
        </tr>
    </table>
</asp:Content>

