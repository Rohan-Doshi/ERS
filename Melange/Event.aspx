<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Event.aspx.cs" Inherits="Melange.Event" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <style type="text/css">
        .auto-style2
    {
        width: 44%;
        border-style: solid;
        border-width: 1px;
            height: 276px;
        }
        .auto-style3
        {
            width: 233px;
        }
        .auto-style4
        {
            width: 238px;
        }
        .auto-style5
        {
            width: 61%;
            height: 210px;
        }
        .auto-style6
        {
            width: 246px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
    <p>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </p>
    <p>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="InfoRegister" runat="server" Font-Bold="True" Font-Names="Comic Sans MS" Font-Size="Large" ForeColor="#FA050C" Height="54px" Width="704px" style="text-align: center" OnTextChanged="InfoRegister_TextChanged" TextMode="MultiLine" Wrap="False">SELECT ALL THE EVENTS YOU WANT TO PARTICIPATE IN MELANGE
DETAILS OF ALL EVENTS ARE GIVEN BELOW</asp:TextBox>
&nbsp;</p>
<p>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;</p>
<p>
    <table id="MenuTable" align="center" border="1" class="auto-style2">
        <tr>
            <td class="auto-style3">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
&nbsp;&nbsp;&nbsp;
                <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="LoginLegend" runat="server" Font-Bold="True" Font-Size="Medium" ForeColor="#66A4FF" style="text-align: center">Individual Events</asp:Label>
                <br />
                <br />
                <asp:CheckBoxList ID="ListIndi" runat="server" style="text-align: left">
                    <asp:ListItem>Chess</asp:ListItem>
                    <asp:ListItem>Table Tennis</asp:ListItem>
                    <asp:ListItem>Carrom</asp:ListItem>
                    <asp:ListItem>Elocution</asp:ListItem>
                    <asp:ListItem>Drawing</asp:ListItem>
                </asp:CheckBoxList>
                <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
            <td class="auto-style4">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="LoginLegend0" runat="server" Font-Bold="True" Font-Size="Medium" ForeColor="#66A4FF" style="text-align: center">Group Events</asp:Label>
                <br />
                <br />
                <asp:CheckBoxList ID="ListGrp" runat="server">
                    <asp:ListItem>U.V Act</asp:ListItem>
                    <asp:ListItem>Rock Band</asp:ListItem>
                    <asp:ListItem>Cricket</asp:ListItem>
                    <asp:ListItem>Foot Ball</asp:ListItem>
                    <asp:ListItem>Foot Lose</asp:ListItem>
                </asp:CheckBoxList>
            </td>
        </tr>
    </table>
</p>
<p>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="EventRegisError" runat="server" CssClass="error" ForeColor="Red"></asp:Label>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
    <asp:Button ID="BtnSubmit" runat="server" OnClick="BtnSubmit_Click" Text="Submit" />
    &nbsp;</p>
    <p>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;
                <asp:Label ID="LoginLegend61" runat="server" Font-Bold="True" Font-Size="Medium" ForeColor="#0000CC">Events Details</asp:Label>
    </p>
    <p>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <table align="center" border="1" class="auto-style5">
            <tr>
                <td class="auto-style6">
                <asp:Label ID="LoginLegend31" runat="server" Font-Bold="True" Font-Size="Medium" ForeColor="#66A4FF" style="text-align: center">Events</asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="LoginLegend32" runat="server" Font-Bold="True" Font-Size="Medium" ForeColor="#66A4FF" style="text-align: center">Cost</asp:Label>
                &nbsp;</td>
                <td>
                <asp:Label ID="LoginLegend33" runat="server" Font-Bold="True" Font-Size="Medium" ForeColor="#66A4FF" style="text-align: center">Events</asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="LoginLegend34" runat="server" Font-Bold="True" Font-Size="Medium" ForeColor="#66A4FF" style="text-align: center">Cost</asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="LoginLegend35" runat="server" Font-Bold="True" Font-Size="Medium" ForeColor="#66A4FF" style="text-align: center">Members</asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style6">
                <asp:Label ID="LoginLegend36" runat="server" Font-Bold="True" Font-Size="Medium" ForeColor="#CC3300" style="text-align: center">Chess</asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="LoginLegend37" runat="server" Font-Bold="True" Font-Size="Medium" ForeColor="#CC3300" style="text-align: center">40</asp:Label>
                    <br />
                    <br />
                <asp:Label ID="LoginLegend38" runat="server" Font-Bold="True" Font-Size="Medium" ForeColor="#CC3300" style="text-align: center">Table Tennis</asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="LoginLegend39" runat="server" Font-Bold="True" Font-Size="Medium" ForeColor="#CC3300" style="text-align: center">100</asp:Label>
                    <br />
                    <br />
                <asp:Label ID="LoginLegend40" runat="server" Font-Bold="True" Font-Size="Medium" ForeColor="#CC3300" style="text-align: center">Carrom</asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="LoginLegend41" runat="server" Font-Bold="True" Font-Size="Medium" ForeColor="#CC3300" style="text-align: center">40</asp:Label>
                    <br />
                    <br />
                <asp:Label ID="LoginLegend42" runat="server" Font-Bold="True" Font-Size="Medium" ForeColor="#CC3300" style="text-align: center">Elocution</asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="LoginLegend43" runat="server" Font-Bold="True" Font-Size="Medium" ForeColor="#CC3300" style="text-align: center">40</asp:Label>
                    <br />
                    <br />
                <asp:Label ID="LoginLegend44" runat="server" Font-Bold="True" Font-Size="Medium" ForeColor="#CC3300" style="text-align: center">Drawing</asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="LoginLegend45" runat="server" Font-Bold="True" Font-Size="Medium" ForeColor="#CC3300" style="text-align: center">40</asp:Label>
                </td>
                <td>
                <asp:Label ID="LoginLegend46" runat="server" Font-Bold="True" Font-Size="Medium" ForeColor="#CC3300" style="text-align: center">U.V.Act</asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="LoginLegend47" runat="server" Font-Bold="True" Font-Size="Medium" ForeColor="#CC3300" style="text-align: center">100</asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="LoginLegend48" runat="server" Font-Bold="True" Font-Size="Medium" ForeColor="#CC3300" style="text-align: center">15</asp:Label>
                    <br />
                    <br />
                <asp:Label ID="LoginLegend49" runat="server" Font-Bold="True" Font-Size="Medium" ForeColor="#CC3300" style="text-align: center">Rock Band</asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="LoginLegend50" runat="server" Font-Bold="True" Font-Size="Medium" ForeColor="#CC3300" style="text-align: center">100</asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="LoginLegend51" runat="server" Font-Bold="True" Font-Size="Medium" ForeColor="#CC3300" style="text-align: center">5</asp:Label>
                    <br />
                    <br />
                <asp:Label ID="LoginLegend52" runat="server" Font-Bold="True" Font-Size="Medium" ForeColor="#CC3300" style="text-align: center">Cricket</asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="LoginLegend53" runat="server" Font-Bold="True" Font-Size="Medium" ForeColor="#CC3300" style="text-align: center">200</asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="LoginLegend54" runat="server" Font-Bold="True" Font-Size="Medium" ForeColor="#CC3300" style="text-align: center">12</asp:Label>
                    <br />
                    <br />
                <asp:Label ID="LoginLegend55" runat="server" Font-Bold="True" Font-Size="Medium" ForeColor="#CC3300" style="text-align: center">Foot Ball</asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="LoginLegend56" runat="server" Font-Bold="True" Font-Size="Medium" ForeColor="#CC3300" style="text-align: center">200</asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="LoginLegend57" runat="server" Font-Bold="True" Font-Size="Medium" ForeColor="#CC3300" style="text-align: center">12</asp:Label>
                    <br />
                    <br />
                <asp:Label ID="LoginLegend58" runat="server" Font-Bold="True" Font-Size="Medium" ForeColor="#CC3300" style="text-align: center">Foot Lose</asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="LoginLegend59" runat="server" Font-Bold="True" Font-Size="Medium" ForeColor="#CC3300" style="text-align: center">200</asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="LoginLegend60" runat="server" Font-Bold="True" Font-Size="Medium" ForeColor="#CC3300" style="text-align: center">10</asp:Label>
                </td>
            </tr>
        </table>
    </p>
    <br />
</asp:Content>
