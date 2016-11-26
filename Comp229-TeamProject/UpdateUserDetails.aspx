<%--Filename: UpdateDetails.aspx
Authors Name: Venkata Kodithala
Student ID: 300920874
Creation Date: 2016-11-24--%>


<%@ Page Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="UpdateUserDetails.aspx.cs" Inherits="Comp229_TeamProject.UpdateUserDetails" %>

<%--User Details update--%>
<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <br />
    <h4>UserName:</h4><asp:TextBox ID="TxtUserName" runat="server"></asp:TextBox>
    <h4>Password:</h4><asp:TextBox ID="TxtPassword" runat="server"></asp:TextBox>
    <h4>Email ID:</h4><asp:TextBox ID="TxtEmailID" runat="server"></asp:TextBox>
    
    <br />
    <asp:Button ID="BtnUpdate" Text="Update" runat="server" />
    <asp:Button ID="BtnCan" Text="Cancel" runat="server" />
    </asp:Content>