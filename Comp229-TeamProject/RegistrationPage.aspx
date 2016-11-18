<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="RegistrationPage.aspx.cs" Inherits="Comp229_TeamProject.RegistrationPage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <!--User registration page done by Muntafia Islam (300790371)--->
    <h1>
        User Registration
    </h1>
    <asp:Label ID="lblregistration" runat="server" Text="For new users, please register here:" style="font-size: medium"></asp:Label>


    <p>
        <asp:Label ID="lblusername" runat="server" Text="USERNAME:" style="font-weight: 700"></asp:Label>
        <asp:TextBox ID="txtusername" runat="server"></asp:TextBox>

    </p>
    <p>
        <asp:Label ID="lblpassword" runat="server" Text="PASSWORD" style="font-weight: 700"></asp:Label>
        <asp:TextBox ID="txtpassword" runat="server"></asp:TextBox>

    </p>
    <p>
        <asp:Label ID="lblconfirm" runat="server" Text="CONFIRM PASSWORD:" style="font-weight: 700"></asp:Label>
        <asp:TextBox ID="txtconfirmpassword" runat="server"></asp:TextBox>

        <!--there will be an password validation controll here-->

    </p>
    <p>
        <asp:Label ID="lblemail" runat="server" Text="Email-Address:" style="font-weight: 700"></asp:Label>
        <asp:TextBox ID="txtemail" runat="server"></asp:TextBox>

    </p>

    <p>
        <asp:Button ID="btur" runat="server" Text="SUBMIT" />
        <!--Button will redirect to home page-->
    </p>






</asp:Content>
