<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Payment.aspx.cs" Inherits="Melange.Payment" %>
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
            width: 39%;
            height: 274px;
        }
        .auto-style4
        {
            width: 160px;
        }
        .passwordEntry
        {
            margin-left: 38px;
        }
        .auto-style5
        {
            width: 160px;
            height: 48px;
        }
        .auto-style6
        {
            height: 48px;
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
                                    Please Enter the details of Payment Mode</div>
                            </td>
                        </tr>
                        <tr>
                            <td align="center" width="100%">&nbsp;</td>
                        </tr>
                    </table>
                </td>
            </tr>
        </table>
    </p>
    <table align="center" class="auto-style3" border="1">
        <tr>
            <td colspan="2">
                <asp:Label ID="ChangeMyPasswordLegend" runat="server" Font-Bold="True" Font-Size="Medium" ForeColor="#66A4FF">Payment Information</asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style4">
                <asp:Label ID="CurrentPasswordLabel" runat="server">Total Cost To Pay</asp:Label>
            </td>
            <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
                <asp:Label ID="TotalAmt" runat="server" ForeColor="#006F3A"></asp:Label>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style5">
                <asp:Label ID="NewPasswordLabel" runat="server">Card Number</asp:Label>
                <asp:RequiredFieldValidator ID="CardValidator" runat="server" ControlToValidate="CardNo" ErrorMessage="RequiredFieldValidator" ForeColor="Red">*</asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="CardNo" ForeColor="#660066" ValidationExpression="\d{16}">!</asp:RegularExpressionValidator>
            </td>
            <td class="auto-style6">
                <asp:TextBox ID="CardNo" runat="server" CssClass="passwordEntry" TextMode="Number" Width="189px" Height="17px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style4">
                <table width="100%">
                    <tr>
                        <td>
                            <asp:Label ID="ConfirmNewPasswordLabel" runat="server" Font-Size="Smaller">Confirm Card Number</asp:Label>
                            <asp:RequiredFieldValidator ID="ConfCardNoValidator" runat="server" ControlToValidate="ConfirmCardNo" ErrorMessage="RequiredFieldValidator" ForeColor="Red">*</asp:RequiredFieldValidator>
                            <asp:CompareValidator ID="CardNoConfValidator" runat="server" ControlToCompare="CardNo" ControlToValidate="ConfirmCardNo" ErrorMessage="CompareValidator" ForeColor="#9900FF">**</asp:CompareValidator>
                        </td>
                    </tr>
                </table>
            </td>
            <td>
                <asp:TextBox ID="ConfirmCardNo" runat="server" CssClass="passwordEntry" TextMode="Number" Width="184px" Height="16px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td colspan="2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button ID="BtnPayament" runat="server" CommandName="Login" Text="Confirm Payment " OnClick="BtnPayament_Click" />
                &nbsp;</td>
        </tr>
    </table>
    <br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <br />
    <br />
</asp:Content>
