<%--Filename: CollectionDetails.aspx
Authors Name: Venkata Kodithala
Student ID: 300920874
Creation Date: 2016-11-24--%>

<%@ Page Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true"  CodeBehind="CollectionDetails.aspx.cs" Inherits="Comp229_TeamProject.CollectionDetails" %>



<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <br />

    <h4>Title(Name):</h4><asp:Label ID="LblTitle" Text="Title(Name)" runat="server"></asp:Label>
    <h4>Short Description:</h4><asp:Label ID="LblShortDesc" Text="ShortDescription" runat="server"></asp:Label>
    <h4>Review Score:</h4><asp:Label ID="LblRevScore" Text="ReviewScore" runat="server"></asp:Label>
    <h4>Completed Status</h4><asp:Label ID="LblCompStatus" Text="Completed Status" runat="server"></asp:Label>

    <asp:HyperLink ID="UpdateLink" runat="server" Text="Update"></asp:HyperLink>



</asp:Content>