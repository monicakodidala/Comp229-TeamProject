<%--Filename: Collection.aspx
Authors Name: Venkata Kodithala
Student ID: 300920874
Creation Date: 2016-11-18--%>


<%@ Page Title="Collection" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Collection.aspx.cs" Inherits="Comp229_TeamProject.Collection" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <br />
    <div class="row">
        <div class="col-md-12">
    <h2>Welcome to our Collection of Books and Games!!!</h2>
    </div>
        </div>
   <%-- Displays collection for Database and redirection to collection details on click--%>
    <div class="row">
        <div class="col-md-12">
    <asp:GridView ID="GridViewBooks" runat="server" AutoGenerateColumns="false" ShowFooter="false" PageSize="10">
        <Columns>
            <asp:TemplateField ItemStyle-Width="200px" HeaderText="Book Cover">
                <ItemTemplate>
                 <a href='<%# Eval("CollectionID","CollectionDetails.aspx?CollectionID={0}") %>' title="Please Click to see Details"><img src='<%# Eval("ImageURL")%>' runat="server" class="ImageStyles" /></a>
                </ItemTemplate>
            </asp:TemplateField>
         
          <asp:BoundField AccessibleHeaderText="Welcome" ControlStyle-Font-Bold="true" ControlStyle-Height="20px" Visible="true" ItemStyle-Font-Size="Medium" ControlStyle-BorderStyle="Ridge" />

            <asp:TemplateField ItemStyle-Width="200px" HeaderText="Title">
                <ItemTemplate>
                    <asp:Label ID="lblBookTitle" runat="server"
                        Text='<%# String.Format("{0}",Eval("Title")) %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>         
            <asp:TemplateField ItemStyle-Width="200px" HeaderText="Short Description">
                <ItemTemplate>
                    <asp:Label ID="lblShortDescription" runat="server"
                        Text='<%# String.Format("{0}", Eval("ShortDescription")) %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>           
            </Columns>
        </asp:GridView>
        </div>
        </div>
</asp:Content>