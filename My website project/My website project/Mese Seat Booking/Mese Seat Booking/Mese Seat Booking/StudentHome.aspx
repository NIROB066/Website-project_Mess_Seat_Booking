<%@ Page Language="C#" AutoEventWireup="true" CodeFile="StudentHome.aspx.cs" Inherits="Mese_Seat_Booking_StudentHome" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Student view page</title>
    
  
    
    
   
    
    
  
    
    
    <link href="Owner%20LoginStyleSheet.css" rel="stylesheet" type="text/css" />
    
  
    
    
    <link href="../Studenthomestyle.css" rel="stylesheet" type="text/css" />
    
  
    
    
</head>
<body id="main">
<form  runat="server">
   <div id="big_wrapper">
   <div id="maindiv">
       <div id="usernamedisplaydiv">
           <header id="topheader">
              <h1 id="textshadow">Welcome To Seat Booking Website Of<br />Any Mese Nearby<br />KUET</h1>
           </header>
           <div id="userlebel">
               <asp:Label runat="server" ID="userlabel" Font-Bold="True" ForeColor="White" Height="30px" Width="70px" Font-Names="Tahoma" Font-Size="20px" />
           </div>
           <div id="userbut">
               <asp:Button runat="server" ID="userbutton" Text="Logout" Font-Bold="true" ForeColor="White" BackColor="ForestGreen" Height="30px" Width="70px" OnClick="userbutton_Click" />
           </div>

       </div>
       
       
       <marquee id="moving_Text">
           <asp:Label runat="server" ID="masqueetext" onkeyup="upperCase(this.value)"></asp:Label></marquee>
      <section id="mainmenu">
          <div id="div0"><ul><li></li></ul></div>
           <div id="div1"><ul><li><a href="Owner_Login.aspx"><p class="cng1">Home</p></a></li></ul></div>
           <div id="div2"><ul><li></li></ul></div>
          <div id="div3"><ul><li></li></ul></div>
           <div id="div5"><ul><li></li></ul></div>

       </section>
       </div>
       <div id="mainpart">
           <header id="mainpartheader">
               <h1 id="mainparth1">Student's information</h1>
           </header>
           <section id="margin1"></section>
           <section id="bodyportion">
               <table>
                   <tr>
                       <td>
                           <p class="bodyfstclass1">Select Room :</p>
                       </td>
                       <td>
                           <asp:DropDownList runat="server" CssClass="bodylevclass" ID="roomsofowner" Font-Bold="True" Font-Names="Tahoma" Font-Size="22px" Width="250px" Height="30px">

                           </asp:DropDownList>
                       </td>
                       <td>
                           <asp:Button Text="Go" runat="server" CssClass="bodylevclass" Width="70px" Height="30px" Font-Size="20px" Font-Bold="True" Font-Names="Tahoma" OnClick="Unnamed1_Click" />
                       </td>
                   </tr>
                   <tr>
                       <td>
                               <p class="bodyfstclass1">Student's name :</p>
                       </td>
                       <td>
                           <asp:Label runat="server" CssClass="bodylevclass" ID="snamelev" Font-Bold="True" Font-Names="Tahoma" Font-Size="22px" ForeColor="Black"></asp:Label>
                       </td>
                       
                   </tr>
                   <tr>
                       <td>
                               <p class="bodyfstclass1">Address :</p>
                       </td>
                       <td>
                           <asp:Label runat="server" ID="kutta" CssClass="bodylevclass" Font-Bold="True" Font-Names="Tahoma" Font-Size="22px" ForeColor="Black"></asp:Label>
                       </td>
                       
                   </tr>
                   <tr>
                       <td>
                               <p class="bodyfstclass1">Phone number :</p>
                       </td>
                       <td>
                           <asp:Label runat="server" ID="kiyy" CssClass="bodylevclass" Font-Bold="True" Font-Names="Tahoma" Font-Size="22px" ForeColor="Black"></asp:Label>
                       </td>
                       
                   </tr>
                   <tr>
                       <td>
                               <p class="bodyfstclass1">Username :</p>
                       </td>
                       <td>
                           <asp:Label runat="server" ID="Popp" CssClass="bodylevclass" Font-Bold="True" Font-Names="Tahoma" Font-Size="22px" ForeColor="Black"></asp:Label>
                       </td>
                       
                       
                   </tr>
                   
                   <tr>
                       <td>
                               <p class="bodyfstclass1">Email address :</p>
                       </td>
                       <td>
                           <asp:Label runat="server" ID="fio" CssClass="bodylevclass" Font-Bold="True" Font-Names="Tahoma" Font-Size="22px" ForeColor="Black"></asp:Label>
                       </td>
                       

                   </tr>
                   
               </table>
               
           </section>
       </div>
        <div id="footer_div">
        <footer id="the_footer">
            <p id="footer_p">
                Copyright: MD RIFAT ANWAR
            </p>
        </footer>
        </div>
       </div>
    </form>
    </body>
</html>
