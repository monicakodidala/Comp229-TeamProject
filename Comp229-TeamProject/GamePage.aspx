<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="GamePage.aspx.cs" Inherits="Comp229_TeamProject.GamePage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 338px;
            height: 213px;
        }
        .auto-style2 {
            width: 340px;
            height: 213px;
        }
        .auto-style3 {
            width: 337px;
            height: 210px;
        }
        .auto-style4 {
            width: 340px;
            height: 213px;
        }
        .auto-style5 {
            width: 337px;
            height: 216px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <h1>
        Game Page
    </h1>
    </div>
        <div>
             <img alt="" class="auto-style1" src="Assets/Counter-Strike_logo.png" /><p> <asp:Label ID="lbltitle1" runat="server" Text="Title: Counter Strike"></asp:Label> </p>
              <p>   <asp:Label ID="lblShortDes1" runat="server" Text="Short Description:"></asp:Label> </p>
               <p>  <asp:Label ID="lblReviewScore1" runat="server" Text="Review Score: "></asp:Label> </p>
               <p>  <asp:Label ID="lblCompletedStatus1" runat="server" Text="Completed Status: "></asp:Label> </p>
           
             </div>
        <div>
            <img alt="RTlogo" class="auto-style2" src="Assets/Riseoftombraiderlogo.png" /><p> <asp:Label ID="lbltitle2" runat="server" Text="Title: Rise of the Tomb Raider"></asp:Label> </p>
              <p>   <asp:Label ID="lblShortDes2" runat="server" Text="Short Description:"></asp:Label> </p>
               <p>  <asp:Label ID="lblReviewScore2" runat="server" Text="Review Score: "></asp:Label> </p>
               <p>  <asp:Label ID="lblCompletedStatus2" runat="server" Text="Completed Status: "></asp:Label> </p>
        </div>
       <div>
            <img alt="" class="auto-style3" src="Assets/Call_of_Duty_Cover.jpg" /><p> <asp:Label ID="lbltitle3" runat="server" Text="Title: Call of Duty"></asp:Label> </p>
              <p>   <asp:Label ID="lblshortDes3" runat="server" Text="Short Description:"></asp:Label> </p>
               <p>  <asp:Label ID="lblReviewScore3" runat="server" Text="Review Score: "></asp:Label> </p>
               <p>  <asp:Label ID="lblCompletedStatus3" runat="server" Text="Completed Status: "></asp:Label> </p>
       </div>
       <div>
            <img alt="dota2logo" class="auto-style4" src="Assets/Dota-2-logo-wallpapers.jpg" /><p> <asp:Label ID="lbltitle4" runat="server" Text="Title: Dota 2"></asp:Label> </p>
                <p> <asp:Label ID="lblshortDes4" runat="server" Text="Short Description:"></asp:Label> </p>
                <p>  <asp:Label ID="lblReviewScore4" runat="server" Text="Review Score: "></asp:Label> </p>
                <p>  <asp:Label ID="lblCompletedStatus4" runat="server" Text="Completed Status: "></asp:Label> </p> 
       </div>
        <div>
            <img alt="GTlogo" class="auto-style5" src="Assets/Grand_Theft_Auto_V_Logo.png" /><p> <asp:Label ID="lbltitle5" runat="server" Text="Title: Grand Theft"></asp:Label> </p>
              <p>   <asp:Label ID="lblshortDes5" runat="server" Text="Short Description:"></asp:Label> </p>
               <p>  <asp:Label ID="lblReviewScore5" runat="server" Text="Review Score: "></asp:Label> </p>
               <p>  <asp:Label ID="lblCompletedStatus5" runat="server" Text="Completed Status: "></asp:Label> </p>
        </div>
    </form>
    <!---Page Created by Muntafia Islam (300790371)--->
</body>
</html>
