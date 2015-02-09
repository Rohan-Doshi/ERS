<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ResetPwd.aspx.cs" Inherits="Melange.ResetPwd" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <style type="text/css">

        .auto-style2
        {
            width: 40%;
            text-align: center;
            border: 1px solid #ddd;
            padding: 1em;
            background-color: #F1F1F1;
        }

        .auto-style3
        {
            width: 41%;
            height: 296px;
        }
        .auto-style4
        {
            width: 144px;
        }
        .passwordEntry
        {
            margin-left: 38px;
        }
        .auto-style5
        {
            width: 144px;
            height: 40px;
        }
        .auto-style6
        {
            height: 40px;
        }
        .auto-style7
        {
            width: 144px;
            height: 42px;
        }
        .auto-style8
        {
            height: 42px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
    <p>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <table width="100%">
            <tr>
                <td align="center" width="100%">
                    <table width="100%">
                        <tr>
                            <td align="center" width="100%">
                                <div class="auto-style2">
                                    Your must provide your registered email and Recepit No. to reset your password.
                                </div>
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
        </table>
    </p>
    <table align="center" class="auto-style3" border="1">
        <tr>
            <td colspan="2">
                <asp:Label ID="ChangeMyPasswordLegend" runat="server" Font-Bold="True" Font-Size="Medium" ForeColor="#66A4FF">Reset My Password</asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style4">
                <asp:Label ID="CurrentPasswordLabel" runat="server">Email Id</asp:Label>
                <asp:RequiredFieldValidator ID="EmailValidator" runat="server" ControlToValidate="TxtEmail" ErrorMessage="RequiredFieldValidator" ForeColor="Red">*</asp:RequiredFieldValidator>
            </td>
            <td>
                <asp:TextBox ID="TxtEmail" runat="server" CssClass="passwordEntry" Width="189px" Height="16px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style7">
                <asp:Label ID="CurrentPasswordLabel0" runat="server">Recepit No :</asp:Label>
                <asp:RequiredFieldValidator ID="RecepitValidator" runat="server" ControlToValidate="TxtRecepit" ErrorMessage="RequiredFieldValidator" ForeColor="Red">*</asp:RequiredFieldValidator>
            </td>
            <td class="auto-style8">
                <asp:TextBox ID="TxtRecepit" runat="server" CssClass="passwordEntry" Width="189px" Height="17px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style5">
                <asp:Label ID="NewPasswordLabel" runat="server">New Password:</asp:Label>
                <asp:RequiredFieldValidator ID="PwdValidator" runat="server" ControlToValidate="NewPassword" ErrorMessage="RequiredFieldValidator" ForeColor="Red">*</asp:RequiredFieldValidator>
            </td>
            <td class="auto-style6">
                <asp:TextBox ID="NewPassword" runat="server" CssClass="passwordEntry" TextMode="Password" Width="189px" Height="17px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style4">
                <table width="100%">
                    <tr>
                        <td>
                            <asp:Label ID="ConfirmNewPasswordLabel" runat="server" Font-Size="Smaller">Confirm New Password:</asp:Label>
                            <asp:RequiredFieldValidator ID="ConfPwdValidator" runat="server" ControlToValidate="ConfirmNewPassword" ErrorMessage="RequiredFieldValidator" ForeColor="Red">*</asp:RequiredFieldValidator>
                            <asp:CompareValidator ID="PswConfValidator" runat="server" ControlToCompare="NewPassword" ControlToValidate="ConfirmNewPassword" ErrorMessage="CompareValidator" ForeColor="#9900FF">**</asp:CompareValidator>
                        </td>
                    </tr>
                </table>
            </td>
            <td>
                <asp:TextBox ID="ConfirmNewPassword" runat="server" CssClass="passwordEntry" TextMode="Password" Width="184px" Height="16px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td colspan="2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="ChangePasswordButton" runat="server" CommandName="Login" Text="Change Password" OnClick="ChangePasswordButton_Click" />
                &nbsp;</td>
        </tr>
    </table>
    <br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="ResetError" runat="server" CssClass="error" ForeColor="Red"></asp:Label>
    <br />
    <br />
</asp:Content>
