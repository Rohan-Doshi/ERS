<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Default1.aspx.cs" Inherits="Melange.Default1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
    <table width="100%">
    <tr valign="middle">
        <td align="center">
            <asp:Label ID="TitleLabelOne" runat="server" Font-Size="X-Large" ForeColor="#339966" Height="80px" Width="559px">Welcome to Online Melange Management System!</asp:Label>
            <br /></td>
    </tr>
    <tr valign="middle">
        <td align="center">
            <asp:Label ID="TitleLabelTwo" runat="server" Font-Size="X-Large" ForeColor="Blue" Height="80">Please use the Menu Options to navigate through the system.</asp:Label>
            <br /></td>
    </tr>
    <tr valign="middle">
        <td align="center">
            <asp:Label ID="TitleLabelThree" runat="server" Font-Size="X-Large" ForeColor="#CC00FF" Height="80">You must login before using the system.</asp:Label>
            <br /></td>
    </tr>
    <tr valign="middle">
        <td align="center">
            <asp:Label ID="MessageLabel" runat="server" Font-Bold="True" Font-Size="Large" ForeColor="#2E895B"></asp:Label>
        </td>
    </tr>
</table>
</asp:Content>
