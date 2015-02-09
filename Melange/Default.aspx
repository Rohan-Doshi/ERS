<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Melange._Default" %>

<asp:Content runat="server" ID="FeaturedContent" ContentPlaceHolderID="FeaturedContent">
    </asp:Content>
<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <table width="100%">
    <tr valign="middle">
        <td align="center">
            <asp:Label ID="TitleLabelOne" runat="server" Font-Size="X-Large" ForeColor="#339966" Height="80px">Welcome to Online Melange Management System!</asp:Label>
            <br />
        </td>
    </tr>
    <tr valign="middle">
        <td align="center">
            <asp:Label ID="TitleLabelTwo" runat="server" Font-Size="X-Large" ForeColor="Blue" Height="80">Please use the Menu Options to navigate through the system.</asp:Label>
            <br />
        </td>
    </tr>
    <tr valign="middle">
        <td align="center">
            <asp:Label ID="TitleLabelThree" runat="server" Font-Size="X-Large" ForeColor="#CC00FF" Height="80">You must login before using the system.</asp:Label>
            <br />
        </td>
    </tr>
    <tr valign="middle">
        <td align="center">
            <asp:Label ID="MessageLabel" runat="server" Font-Bold="True" Font-Size="Large" ForeColor="#2E895B"></asp:Label>
        </td>
    </tr>
</table>
</asp:Content>
