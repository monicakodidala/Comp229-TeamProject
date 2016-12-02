<%--Filename: CollectionDetails.aspx
Authors Name: Venkata Kodithala
Student ID: 300920874
Creation Date: 2016-11-24--%>

<%@ Page Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true"  CodeBehind="CollectionDetails.aspx.cs" Inherits="Comp229_TeamProject.CollectionDetails" %>



<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <br />
    <div class ="row">
        <div class ="col-md-10">
    <table>
        <tr>
            <td><b>Title(Name):</b></td>
                <td><asp:Label ID="LblTitle" Font-Size="Medium" runat="server" CssClass="TextSpace" Text='<%# String.Format("{0}",Eval("Title")) %>'></asp:Label>
                </td>
        </tr>
        <tr>
            <td><b>Author:</b></td>
                <td><asp:Label ID="LblAuthor" runat="server" Font-Size="Medium" Text=""></asp:Label></td>
        </tr>
        <tr>
            <td><b>ISBN:</b></td>
                <td><asp:Label ID="LblISBN" runat="server" Font-Size="Medium" Text=""></asp:Label>
            </td>
        </tr>
        <tr>
            <td><b>Short Description:</b></td>
                <td><asp:Label ID="LblShortDescription" runat="server" Font-Size="Medium" Text=""></asp:Label>
            </td>
        </tr>
         <tr>
            <td><b>Review Score:</b></td>
                <td><asp:Label ID="LblReviewScore" runat="server" Font-Size="Medium" Text=""></asp:Label>
            </td>
        </tr>  
        
    </table>
            </div>
    </div>   

    <asp:HyperLink ID="UpdateLink" runat="server" Text="Update"></asp:HyperLink>

</asp:Content>