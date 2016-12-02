﻿<!--Home page done by Muntafia Islam (300790371)--->
<%--Recent added  items display done by Venkata (300920874)--%>

<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="Comp229_TeamProject._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <!--Home page done by Muntafia Islam (300790371)--->
    <h1>Home
    </h1>
    <p>

        <%--<p>
    <asp:HyperLink ID="hlabout" runat="server">ABOUT</asp:HyperLink> &nbsp;&nbsp;&nbsp;&nbsp;
        <asp:HyperLink ID="hlcontact" runat="server">CONTACT</asp:HyperLink> &nbsp;&nbsp;&nbsp;&nbsp;
        <asp:HyperLink ID="hllocation" runat="server">LOCATION</asp:HyperLink> &nbsp;&nbsp;&nbsp;&nbsp;
    </p>
      <p>--%>

        <asp:Label ID="lblwelcome" runat="server" Text="Welcome to MSquare Library, please visit our Library Collection " Style="font-weight: 800; font-size: medium"></asp:Label>
        <asp:HyperLink ID="CollectionPage" runat="server" NavigateUrl="~/Collection.aspx">Collection Page</asp:HyperLink>
    </p>
    <br />
    <p>
        <asp:Label ID="lblsearch" runat="server" Text="Please search your item here: " Style="font-weight: 700"></asp:Label>
        <asp:TextBox ID="txtsearch" runat="server" Width="355px"></asp:TextBox>
    </p>
    <p>
        <!--buttonImagesto real webpage-->
        <img alt="workshop" src="Assets/workshop.png" style="width: 202px; height: 250px" />
        <img alt="kidsworkshop" src="Assets/KidsWorkshop.jpg" style="width: 255px; height: 197px" />
        <img alt="freetickets" src="Assets/freeTickets.png" style="width: 322px; height: 157px" />

    </p>
    <div>
        <%--<asp:DataGrid ID="RecentBooks" runat="server">
        <Columns>
            <asp:TemplateColumn HeaderStyle-Width="100px" HeaderText="Recently Added Items">
                <ItemTemplate>
                 <a href='<%# Eval("Title") %>' title="Please Click to see Details"><img src='<%# Eval("ImageURL")%>' runat="server" class="ImageStyles" /></a>
                </ItemTemplate>
            </asp:TemplateColumn>
                
        </Columns>
    </asp:DataGrid>--%>
        <br />
        <asp:Repeater ID="Books1" runat="server">

            <HeaderTemplate>
                Three Recently added items to our Collection
            </HeaderTemplate>
            <ItemTemplate>
                <a href='<%# Eval("CollectionID","CollectionDetails.aspx?CollectionID={0}") %>' title="Please Click to see Details">
                    <img src='<%# Eval("ImageURL")%>' runat="server" class="ImageStyles" /></a>
            </ItemTemplate>

        </asp:Repeater>


    </div>
</asp:Content>
