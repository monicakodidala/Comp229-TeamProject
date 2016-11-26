<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="Comp229_TeamProject._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <!--Home page done by Muntafia Islam (300790371)--->
    <h1>
        Home
    </h1>
<p>
        

    <%--<p>
    <asp:HyperLink ID="hlabout" runat="server">ABOUT</asp:HyperLink> &nbsp;&nbsp;&nbsp;&nbsp;
        <asp:HyperLink ID="hlcontact" runat="server">CONTACT</asp:HyperLink> &nbsp;&nbsp;&nbsp;&nbsp;
        <asp:HyperLink ID="hllocation" runat="server">LOCATION</asp:HyperLink> &nbsp;&nbsp;&nbsp;&nbsp;
    </p>
      <p>--%>
    
    <asp:Label ID="lblwelcome" runat="server" Text="Welcome to MSquare Library, please visit our Library Collection " style="font-weight: 800; font-size: medium"></asp:Label>
          <asp:HyperLink ID="CollectionPage" runat="server" NavigateUrl="~/Collection.aspx">Collection Page</asp:HyperLink>
        </p>
    <br />
    <p>
         <asp:Label ID="lblsearch" runat="server" Text="Please search your item here: " style="font-weight: 700"></asp:Label>
        <asp:TextBox ID="txtsearch" runat="server" Width="355px"></asp:TextBox>
    </p>
  <p>
      <img alt="workshop" src="Assets/workshop.png" style="width: 202px; height: 250px" />
      <img alt="kidsworkshop" src="Assets/KidsWorkshop.jpg" style="width: 255px; height: 197px" />
      <img alt="freetickets" src="Assets/freeTickets.png" style="width: 322px; height: 157px" />
      
  </p>
  </asp:Content>
