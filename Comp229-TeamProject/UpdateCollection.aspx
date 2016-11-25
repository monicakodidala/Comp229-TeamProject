﻿<%--Filename: CollectionDetails.aspx
Authors Name: Venkata Kodithala
Student ID: 300920874
Creation Date: 2016-11-24--%>

<%@ Page Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="UpdateCollection.aspx.cs" Inherits="Comp229_TeamProject.UpdateCollection" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <br />
    <h4>Title(Name):</h4><asp:TextBox ID="TxtTitle" runat="server"></asp:TextBox>
    <h4>Short Description:</h4><asp:TextBox ID="TxtShortDesc" runat="server"></asp:TextBox>
    <h4>Review Score:</h4><asp:TextBox ID="TxtRevScore" runat="server"></asp:TextBox>
    <h4>CompletedStatus:</h4><asp:RadioButtonList ID="CompletedList" runat="server">
        <asp:ListItem Text="Owned" Value="Owned"></asp:ListItem>
        <asp:ListItem Text="Loaned" Value="Loaned"></asp:ListItem>
        <asp:ListItem Text="Wanted" Value="Wanted"></asp:ListItem>
    </asp:RadioButtonList>
    <br />
    <asp:Button ID="BtnSave" Text="Save" runat="server" />
    <asp:Button ID="BtnCancel" Text="Cancel" runat="server" />
 
        
        
        
</asp:Content>