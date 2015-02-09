<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="PaymentConf.aspx.cs" Inherits="Melange.PaymentConf" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <style type="text/css">
        .auto-style2
        {
            width: 60%;
            text-align: center;
            border: 1px solid #ddd;
            padding: 1em;
            background-color: #F1F1F1;
            color: #CC00CC;
            font-size: large;
        }

        .passwordEntry
        {
            margin-left: 38px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" runat="server">
    <p>
        &nbsp;</p>
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
                                    <strong>PAYAMENT SUCESSFUL....PLEASE SAVE THE DETAILS BELOW SOMEWHERE<br />
                                    RECEPIT NO. WILL BE USED TO RESET YOUR PASSWORD</strong></div>
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
        </table>
    </p>
    <p style="height: 69px; width: 607px; margin-left: 240px">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
                <asp:Label ID="LoginLegend61" runat="server" Font-Bold="True" Font-Size="Medium" ForeColor="#0000CC" style="text-align: center">Amount Debited :</asp:Label>
    &nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TxtCost" runat="server" OnTextChanged="TxtCost_TextChanged" Width="132px"></asp:TextBox>
&nbsp;
                <asp:Label ID="LoginLegend62" runat="server" Font-Bold="True" Font-Size="Medium" ForeColor="#0000CC" style="text-align: center">From : </asp:Label>
        <asp:TextBox ID="TxtAccoNo" runat="server" OnTextChanged="TxtCost_TextChanged" Width="132px"></asp:TextBox>
    </p>
    <p style="height: 69px; width: 387px; margin-left: 360px">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
                <asp:Label ID="LoginLegend63" runat="server" Font-Bold="True" Font-Size="Medium" ForeColor="#0000CC" style="text-align: center">Recepit No. :</asp:Label>
    &nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TxtRecepitNo" runat="server" OnTextChanged="TxtCost_TextChanged" Width="132px"></asp:TextBox>
&nbsp;
    </p>
    <p style="height: 69px; width: 387px; margin-left: 520px">
        <asp:Button ID="BtnNext" runat="server" OnClick="BtnNext_Click" Text="Next" Width="70px" />
    </p>
</asp:Content>
