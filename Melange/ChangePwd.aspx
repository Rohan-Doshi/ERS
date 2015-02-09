<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="ChangePwd.aspx.cs" Inherits="Melange.ChangePwd" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <style type="text/css">
        .auto-style2
        {
            width: 40%;
            text-align: left;
            border: 1px solid #ddd;
            padding: 1em;
            background-color: #F1F1F1;
        }

.submitButton
{
  text-align: right;
  padding-right: 10px;
}

        .auto-style3
        {
            width: 39%;
            height: 274px;
        }
        .passwordEntry
        {
            margin-left: 38px;
        }
        .auto-style4
        {
            width: 144px;
        }
        .auto-style5
        {
            width: 144px;
            height: 53px;
        }
        .auto-style6
        {
            height: 53px;
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
                                    Your must provide your current password before changing it.
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
                <asp:Label ID="ChangeMyPasswordLegend" runat="server" Font-Bold="True" Font-Size="Medium" ForeColor="#66A4FF">Change My Password Information</asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style4">
                <asp:Label ID="CurrentPasswordLabel" runat="server">Current Password:</asp:Label>
                <asp:RequiredFieldValidator ID="PwdValidator" runat="server" ControlToValidate="CurrentPassword" ErrorMessage="RequiredFieldValidator" ForeColor="Red">*</asp:RequiredFieldValidator>
            </td>
            <td>
                <asp:TextBox ID="CurrentPassword" runat="server" CssClass="passwordEntry" TextMode="Password" Width="189px" Height="16px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style5">
                <asp:Label ID="NewPasswordLabel" runat="server">New Password:</asp:Label>
                <asp:RequiredFieldValidator ID="PwdValidator0" runat="server" ControlToValidate="NewPassword" ErrorMessage="RequiredFieldValidator" ForeColor="Red">*</asp:RequiredFieldValidator>
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
                            <asp:RequiredFieldValidator ID="PwdValidator1" runat="server" ControlToValidate="ConfirmNewPassword" ErrorMessage="RequiredFieldValidator" ForeColor="Red">*</asp:RequiredFieldValidator>
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
    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="PwdError" runat="server" CssClass="error" ForeColor="Red"></asp:Label>
    <br />
    <br />
</asp:Content>
