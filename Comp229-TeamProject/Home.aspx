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
         &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
         <asp:Label ID="lblsearch" runat="server" Text="Please search your item here: " style="font-weight: 700"></asp:Label>
        <asp:TextBox ID="txtsearch" runat="server" Width="355px"></asp:TextBox>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button1" runat="server" Text="Enter" />
         
    </p>
<p>
    <!--buttonImagesto real webpage-->
    <asp:ImageButton ID="LibraryWorkshop" runat="server" ImageUrl="~/Assets/Libraryworkshop.png" OnClick="LibraryWorkshop_Click"  />

  
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

  
    <asp:ImageButton ID="KidsWorkshop" runat="server" Height="228px" ImageUrl="~/Assets/KidsWorkshop.jpg" Width="277px" OnClick="KidsWorkshop_Click" />

    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

    <asp:ImageButton ID="FreeTickets" runat="server" ImageUrl="~/Assets/freeTickets.png" Height="196px" OnClick="FreeTickets_Click" Width="337px" />

   </p>
  </asp:Content>
