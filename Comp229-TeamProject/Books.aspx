<%--Filename: Books.aspx
Authors Name: Venkata Kodithala
Student ID: 300920874
Creation Date: 2016-11-18--%>


<%@ Page Title="Books" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Books.aspx.cs" Inherits="Comp229_TeamProject.Books" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <br />
    <%--<div>
    <asp:Image ID="Book1" ImageUrl="~/Assets/Book1.jpg" width="100px" runat="server" CssClass="ImageStyles" />
    </div>
    <asp:Image ID="Book2" ImageUrl="~/Assets/Book2.jpg" width="100px" runat="server" CssClass="ImageStyles" />
    <asp:Image ID="Book3" ImageUrl="~/Assets/Book3.jpg" width="100px" runat="server" CssClass="ImageStyles" />
    <asp:Image ID="Book4" ImageUrl="~/Assets/Book4.jpg" width="100px" runat="server" CssClass="ImageStyles" />
    <asp:Image ID="Book5" ImageUrl="~/Assets/Book5.jpg" width="100px" runat="server" CssClass="ImageStyles" />--%>

   <%-- Displays book collection for Database--%>
    <asp:GridView ID="GridViewBooks" runat="server" AutoGenerateColumns="false" ShowFooter="false" PageSize="10">
        <Columns>
            <asp:TemplateField ItemStyle-Width="200px" HeaderText="Book Cover">
                <ItemTemplate>
                    <asp:Image ID="BookCover" ImageUrl='<%# Eval("ImageURL")%>' CssClass="ImageStyles" runat="server">
                    </asp:Image>
                </ItemTemplate>
            </asp:TemplateField>
         
          <asp:BoundField AccessibleHeaderText="Welcome" ControlStyle-Font-Bold="true" ControlStyle-Height="20px" Visible="true" ItemStyle-Font-Size="Medium" ControlStyle-BorderStyle="Ridge" />

            <%--<asp:TemplateField ItemStyle-Width="200px" HeaderText="Book Details">
                <ItemTemplate>
                    <asp:Label ID="lblBookTitle" runat="server"
                        Text='<%# String.Format("{0}","{1}","{2}","{3}","{4}", Eval("BookTitle"),Eval("Author"),Eval("ISBN"),
                        Eval("ShortDescription"),Eval("ReviewScore")) %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>--%>
            <asp:TemplateField ItemStyle-Width="200px" HeaderText="Author">
                <ItemTemplate>
                    <asp:Label ID="lblAuthor" runat="server"
                        Text='<%# String.Format("{0}", Eval("Author")) %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField ItemStyle-Width="200px" HeaderText="ISBN">
                <ItemTemplate>
                    <asp:Label ID="lblISBN" runat="server"
                        Text='<%# String.Format("{0}", Eval("ISBN")) %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField ItemStyle-Width="200px" HeaderText="Short Description">
                <ItemTemplate>
                    <asp:Label ID="lblShortDescription" runat="server"
                        Text='<%# String.Format("{0}", Eval("ShortDescription")) %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField ItemStyle-Width="200px" HeaderText="Review Score">
                <ItemTemplate>
                    <asp:Label ID="lblReviewScore" runat="server"
                        Text='<%# String.Format("{0}", Eval("ReviewScore")) %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            </Columns>
        </asp:GridView>
</asp:Content>