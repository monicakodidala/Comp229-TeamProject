<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="Comp229_TeamProject._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <h1>
        Home
    </h1>

    <img alt="logo" src="Assets/TeamLogo.png" style="width: 300px; height: 191px" /><asp:Image ID="Image1" runat="server" />

    <p>
    <asp:Label ID="lblwelcome" runat="server" Text="Welcome to M Square Library "></asp:Label>
        </p>



</asp:Content>
