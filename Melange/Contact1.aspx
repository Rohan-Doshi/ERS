<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Contact1.aspx.cs" Inherits="Melange.Contact1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
    <hgroup class="title">
        <h1><%: Title %>For Query please Contact:</h1>
    </hgroup>

    <section class="contact">
        <header>
            <h3>Phone:</h3>
        </header>
        <p>
            <span class="label">Main:</span>
            7709899960
        </p>
        <p>
            <span class="label">After Hours:</span> 8097391139</p>
    </section>

    <section class="contact">
        <header>
            <h3>Email:</h3>
        </header>
        <p>
            <span class="label">Support:</span>
            <a href="mailto:Support@example.com">doshi.rohan09@gmail.com</a></p>
        <p>
            <span class="label">Marketing:</span>
            <a href="mailto:Marketing@example.com">vaibhav.khapare@gmail.com</a></p>
        <p>
            <span class="label">General:</span>
            <a href="mailto:General@example.com">rsj2246@gmail.com</a>
        </p>
    </section>

    <section class="contact">
    </section>
</asp:Content>
