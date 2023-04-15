<%@ Page Title="" Language="C#" MasterPageFile="~/admin/adminmaster.master" AutoEventWireup="true" CodeFile="adminarea.aspx.cs" Inherits="admin_adminarea" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">


        .style2
        {
            text-align: center;
            font-size: x-large;
            height: 37px;
        }
        .style4
        {
            width: 264px;
            font-size: large;
            height: 35px;
        }
        .style3
        {
            width: 229px;
            text-align: center;
            font-size: x-large;
            height: 36px;
        }
        .style7
        {
            height: 36px;
        }
    .style8
    {
        width: 264px;
        text-align: center;
        font-size: large;
        height: 33px;
    }
    .style9
    {
        text-align: center;
        font-size: x-large;
        height: 13px;
    }
    .style10
    {
        height: 35px;
    }
    </style>
</asp:Content>

<asp:Content ID="Content2" runat="server" 
    contentplaceholderid="ContentPlaceHolder2">
    <table align="center" class="style1" style="width: 80%">
        <tr>
            <td class="style9" colspan="2">
                Enter Areas Here:
            </td>
        </tr>
        <tr>
            <td class="style4" style="text-align: center">
                Select City</td>
            <td class="style10">
                <asp:DropDownList ID="drpcity" runat="server">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="style8">
                Area Name</td>
            <td class="style7">
                <asp:TextBox ID="txtarea" runat="server" Width="188px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td colspan="2">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="btnaddarea" runat="server" onclick="btnaddarea_Click" 
                    Text="Add Area" />
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>


