<%--Recent added  items display done by Venkata (300920874)--%>
<%--Home Page Done by Muntafia (300790371)--%>

<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="Comp229_TeamProject.Home" %>


<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div class="row">
        <div class="col-md-8">
            <h1>Home
            </h1>
          
            <p>
                <asp:Label ID="lblwelcome" runat="server" Text="Welcome to MSquare Library, please visit our Library Collection " Style="font-weight: 800; font-size: Large"></asp:Label>
                <asp:HyperLink ID="CollectionPage" runat="server" NavigateUrl="~/Collection.aspx" Font-Size="Large">Collection Page</asp:HyperLink>
        </div>
    </div>

    <br />


    <!--buttonImagesto real webpage-->
    <div class="row">
        <div class="col-md-12">
            <asp:ImageButton ID="LibraryWorkshop" runat="server" ImageUrl="~/Assets/Libraryworkshop.png" OnClick="LibraryWorkshop_Click" />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
  
    <asp:ImageButton ID="KidsWorkshop" runat="server" Height="228px" ImageUrl="~/Assets/KidsWorkshop.jpg" Width="277px" OnClick="KidsWorkshop_Click" />

            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

    <asp:ImageButton ID="FreeTickets" runat="server" ImageUrl="~/Assets/freeTickets.png" Height="196px" OnClick="FreeTickets_Click" Width="337px" />
        </div>
        <br />
        <div class="row">
            <div class="col-md-12">
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
        </div>
    </div>
</asp:Content>
