<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Forgotpass.aspx.cs" Inherits="Forgotpass" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
     
    
    <style type="text/css">
        .style1
        {
            width: 52%;
        }
        .style2
        {
            color: #0000FF;
            font-size: large;
        }
        .style3
        {
            height: 30px;
        }
        .style4
        {
            width: 164px;
        }
        .style5
        {
            width: 164px;
            height: 23px;
        }
        .style6
        {
            height: 23px;
        }
    </style>
</head>
<body>

    <form id="form1" runat="server">
    <div>
    
        <table align="center" class="style1" bgcolor="#FFCCCC">
            <tr>
                <td colspan="2" style="text-align: center" class="style2">
                    Forgot Password Page</td>
            </tr>
            <tr>
                <td colspan="2">
                    &nbsp;</td>
            </tr>
            <tr>
                <td style="text-align: center" class="style4">
                    Security Questions</td>
                <td>
                    <asp:DropDownList ID="drpques" runat="server">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td style="text-align: center" class="style4">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td style="text-align: center" class="style4">
                    Answers:=&gt;&gt;</td>
                <td>
                    <asp:TextBox ID="txtanswers" runat="server" Rows="4" Width="277px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                        ControlToValidate="txtanswers" ErrorMessage="RequiredFieldValidator" 
                        ForeColor="#FF3300">Pls,try to answer atleast single que!!</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style4">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td style="text-align: center" class="style4">
                    Username</td>
                <td>
                    <asp:TextBox ID="txtuname" runat="server" Width="187px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                        ControlToValidate="txtuname" ErrorMessage="RequiredFieldValidator" 
                        ForeColor="Red">Field is required!!</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td style="text-align: center" class="style4">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td style="text-align: center" class="style3" colspan="2">
                    <asp:Button ID="btnverify" runat="server" onclick="btnverify_Click" Text="OK" 
                        Width="70px" />
                &nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
            <tr>
                <td style="text-align: center" class="style5">
                    </td>
                <td class="style6">
                    </td>
            </tr>
            <tr>
                <td class="style4">
                   <marquee>Welcome to my website**2022</marquee></td>
                <td>
                    &nbsp;</td>
            </tr>
        </table>
    
    </div>
    </form>
</body>

</html>
