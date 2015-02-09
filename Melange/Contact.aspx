<%@ Page Title="Contact" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="Melange.Contact" %>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <hgroup class="title">
        <h1>For Query please Contact:</h1>
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