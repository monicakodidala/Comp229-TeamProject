<%--Filename: Collection.aspx
Authors Name: Venkata Kodithala
Student ID: 300920874
Creation Date: 2016-11-18--%>


<%@ Page Title="Collection" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Collection.aspx.cs" Inherits="Comp229_TeamProject.Collection" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <br />
    
    <h2>Welcome to our Collection of Books and Games!!!</h2>

   <%-- Displays book collection for Database--%>
    <asp:GridView ID="GridViewBooks" runat="server" AutoGenerateColumns="false" ShowFooter="false" PageSize="10">
        <Columns>
            <asp:TemplateField ItemStyle-Width="200px" HeaderText="Book Cover">
                <ItemTemplate>
                    <%--<asp:ImageButton ID="BookCover" ToolTip="Please Click to see Details" ImageUrl='<%# Eval("ImageURL")%>' CssClass="ImageStyles" runat="server" OnClick="BookImg_Click">
                    </asp:ImageButton>--%>
                    <%--<asp:HyperLink runat="server"
                NavigateUrl='<%# Eval("CourseID","~/Course.aspx?CourseID={0}") %>'
                Text='<%# Eval("Title") %>'></asp:HyperLink>--%>
                    <a href='<%# Eval("CollectionID","CollectionDetails.aspx?CollectionID={0}") %>' title="Please Click to see Details"><img src='<%# Eval("ImageURL")%>' runat="server" class="ImageStyles" /></a>
                </ItemTemplate>
            </asp:TemplateField>
         
          <asp:BoundField AccessibleHeaderText="Welcome" ControlStyle-Font-Bold="true" ControlStyle-Height="20px" Visible="true" ItemStyle-Font-Size="Medium" ControlStyle-BorderStyle="Ridge" />

            <asp:TemplateField ItemStyle-Width="200px" HeaderText="Book Title">
                <ItemTemplate>
                    <asp:Label ID="lblBookTitle" runat="server"
                        Text='<%# String.Format("{0}",Eval("BookTitle")) %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField ItemStyle-Width="200px" HeaderText="Game Title">
                <ItemTemplate>
                    <asp:Label ID="lblGameTitle" runat="server"
                        Text='<%# String.Format("{0}",Eval("GameTitle")) %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
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