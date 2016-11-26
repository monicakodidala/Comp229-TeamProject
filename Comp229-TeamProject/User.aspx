<%--Filename: User.aspx
Authors Name: Venkata Kodithala
Student ID: 300920874
Creation Date: 2016-11-17--%>


<%@ Page Title="User" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="Comp229_TeamProject.User" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <h4>Books</h4><asp:TextBox ID="TextBox1" Text="Enter Book Title/Author Name" runat="server"></asp:TextBox>

   <h2>Welcome User!!!</h2>
    <br />

    <h4>Number of Items Loaned</h4><asp:TextBox ID="NumLoaned" Text="Items Loaned" runat="server"></asp:TextBox>
    <h4>Completed Status</h4><asp:TextBox ID="Additions" Text="Books" runat="server"></asp:TextBox>
    <h4>Currently Owned Items</h4><asp:TextBox ID="CurrOwned" Text="Owing" runat="server"></asp:TextBox>  
</asp:Content>