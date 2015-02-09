<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="Melange.Register" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <style type="text/css">
        .auto-style2
        {
            width: 48%;
            height: 203px;
            border-style: solid;
            border-width: 1px;
        }
        .auto-style5
        {
            height: 25px;
            width: 397px;
        }
        .auto-style6
        {
            width: 397px;
        }
        .auto-style10
        {
            height: 28px;
            width: 397px;
        }
        .auto-style12
        {
            height: 27px;
            width: 397px;
        }
        .auto-style13
        {
            width: 408px;
        }
        .auto-style14
        {
            height: 27px;
            width: 408px;
        }
        .auto-style15
        {
            height: 28px;
            width: 408px;
        }
        .auto-style16
        {
            height: 25px;
            width: 408px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
    <p>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</p>
    <p>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
        <asp:TextBox ID="InfoRegister" runat="server" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Large" ForeColor="#FA050C" Height="25px" Width="526px" style="text-align: center">FILL IN ALL THE DETAILS TO REGISTER FOR MELANGE</asp:TextBox>
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    </p>
    <table align="center" border="1" class="auto-style2">
        <tr>
            <td class="auto-style13">&nbsp; Name<asp:RequiredFieldValidator ID="NmeValidator" runat="server" ControlToValidate="TxtName" ForeColor="#FF243A">*</asp:RequiredFieldValidator>
            </td>
            <td class="auto-style6">
                <asp:TextBox ID="TxtName" runat="server" Width="272px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style13">&nbsp; User Email ID<asp:RegularExpressionValidator ID="MailValidator" runat="server" ControlToValidate="TxtUserMail" ErrorMessage="RegularExpressionValidator" ForeColor="#009933" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">#</asp:RegularExpressionValidator>
                <asp:RequiredFieldValidator ID="EmailValidator" runat="server" ControlToValidate="TxtUserMail" ErrorMessage="RequiredFieldValidator" ForeColor="Red">*</asp:RequiredFieldValidator>
            </td>
            <td class="auto-style6">
                <asp:TextBox ID="TxtUserMail" runat="server" Width="272px"></asp:TextBox>
                </td>
        </tr>
        <tr>
            <td class="auto-style14">&nbsp; Password<asp:RequiredFieldValidator ID="PwdValidator" runat="server" ControlToValidate="TxtPwd" ErrorMessage="RequiredFieldValidator" ForeColor="Red">*</asp:RequiredFieldValidator>
            </td>
            <td class="auto-style12">
                <asp:TextBox ID="TxtPwd" runat="server" Width="272px" TextMode="Password"></asp:TextBox>
                </td>
        </tr>
        <tr>
            <td class="auto-style15">&nbsp; Confirm Password<asp:CompareValidator ID="PswConfValidator" runat="server" ControlToCompare="TxtPwd" ControlToValidate="TxtConfPwd" ErrorMessage="CompareValidator" ForeColor="#9900FF">**</asp:CompareValidator>
            </td>
            <td class="auto-style10">
                <asp:TextBox ID="TxtConfPwd" runat="server" Width="272px" TextMode="Password"></asp:TextBox>
                </td>
        </tr>
        <tr>
            <td class="auto-style15">&nbsp; Phone Number<asp:RequiredFieldValidator ID="PhneValidator" runat="server" ControlToValidate="TxtPhneNo" ErrorMessage="RequiredFieldValidator" ForeColor="Red">*</asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="PhneTypeValidator" runat="server" ControlToValidate="TxtPhneNo" ErrorMessage="RegularExpressionValidator" ForeColor="#009933" ValidationExpression="\d{10}">#</asp:RegularExpressionValidator>
            </td>
            <td class="auto-style10">
                <asp:TextBox ID="TxtPhneNo" runat="server" Width="272px"></asp:TextBox>
                </td>
        </tr>
        <tr>
            <td class="auto-style15">&nbsp; College<asp:RequiredFieldValidator ID="ClgValidator" runat="server" ControlToValidate="TxtClg" ForeColor="Red">*</asp:RequiredFieldValidator>
            </td>
            <td class="auto-style10">
                <asp:TextBox ID="TxtClg" runat="server" Width="272px"></asp:TextBox>
                </td>
        </tr>
        <tr>
            <td class="auto-style15">&nbsp; Branch</td>
            <td class="auto-style10">
                <asp:DropDownList ID="BranchList" runat="server">
                    <asp:ListItem>Mechanical</asp:ListItem>
                    <asp:ListItem>Elex.</asp:ListItem>
                    <asp:ListItem>Entc</asp:ListItem>
                    <asp:ListItem>Comp/I.T</asp:ListItem>
                    <asp:ListItem>Chemical</asp:ListItem>
                    <asp:ListItem>Industrial</asp:ListItem>
                </asp:DropDownList>
                </td>
        </tr>
        <tr>
            <td class="auto-style16">&nbsp; Year</td>
            <td class="auto-style5">
                <asp:DropDownList ID="YrList" runat="server">
                    <asp:ListItem>FE</asp:ListItem>
                    <asp:ListItem Value="SE"></asp:ListItem>
                    <asp:ListItem>TE</asp:ListItem>
                    <asp:ListItem>BE</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
    </table>
    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <br />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
    <asp:Button ID="BtnRegister" runat="server" Height="36px" OnClick="BtnRegister_Click" Text="Register" Width="89px" />
    <br />
    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:Label ID="ErrorRegister" runat="server" ForeColor="Red"></asp:Label>
    <br />
    <br />
    <br />
</asp:Content>
