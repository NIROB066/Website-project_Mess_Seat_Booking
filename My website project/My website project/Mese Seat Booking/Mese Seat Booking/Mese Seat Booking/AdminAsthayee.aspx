﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AdminAsthayee.aspx.cs" Inherits="Mese_Seat_Booking_AdminAsthayee" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Mess view</title>
    <link href="Asthayeesolve.css" rel="stylesheet" type="text/css" />
    <link href="../Admin.css" rel="stylesheet" type="text/css" />
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
               <asp:Label runat="server" ID="userlabel" Text="Logout" Font-Bold="True" ForeColor="White" Height="30px" Width="70px" Font-Names="Tahoma" Font-Size="20px" />
           </div>
           <div id="userbut">
               <asp:Button runat="server" ID="userbutton" Text="Logout" Font-Bold="true" ForeColor="White" BackColor="ForestGreen" Height="30px" Width="70px" OnClick="userbutton_Click" />
           </div>
       </div>
       
      
       <marquee id="moving_Text">
           <asp:Label runat="server" ID="masqueetext" onkeyup="upperCase(this.value)" ></asp:Label></marquee>
      <section id="mainmenu">
          <div id="div0"><ul><li></li></ul></div>
           <div id="div1"><ul><li><a href="Admin.aspx"><p class="cng1">Home</p></a></li></ul></div>
           <div id="div2"><ul><li></li></ul></div>
           <div id="div3"><ul><li><a href="AdminHome.aspx"><p class="cng1">View Homepage</p></a></li></ul></div>
           <div id="div4"><ul><li></li></ul></div>
           <div id="div5"><ul><li></li></ul></div>

       </section>
       </div>
            <div id="mess_info">
                <div id="room_info">
                    <section id="room">
                        <header id="room_h">
                            <h1 class="roomh1">Rooms Of <asp:Label runat="server" ID="messname" CssClass="roomh1"></asp:Label></h1>
                        </header>
                    </section>
                    <section id="room_margin"></section>
                    <section id="room_main">
                        <table>
                            <tr>
                                <td>
                                    <asp:Label runat="server" ID="floor" Text="Total floors : " CssClass="_part"></asp:Label>
                                </td>
                                <td>
                                    <asp:Label runat="server" ID="floornum" CssClass="s_part"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:Label runat="server" ID="rooms" Text="Total rooms : " CssClass="_part"></asp:Label>
                                </td>
                                <td>
                                    <asp:Label runat="server" ID="roomnum" CssClass="s_part"></asp:Label>
                                </td>
                                
                            </tr>
                            <tr>
                                <td>
                                    <asp:Label runat="server" ID="bookin" Text="Booked rooms : " CssClass="_part"></asp:Label>
                                </td>
                                <td>
                                    <asp:Label runat="server" ID="booked" CssClass="s_part"></asp:Label>
                                </td>
                                
                            </tr>
                            <tr>
                                <td>
                                    <asp:Label runat="server" ID="unbooking" Text="Unbooked rooms : " CssClass="_part"></asp:Label>
                                </td>
                                <td>
                                    <asp:Label runat="server" ID="unbooked" CssClass="s_part"></asp:Label>
                                </td>
                                
                            </tr>
                            <tr>
                                <td>
                                    <asp:Label runat="server" ID="Avg" Text="Average rent : " CssClass="_part"></asp:Label>
                                </td>
                                <td>
                                    <asp:Label runat="server" ID="rentshow" CssClass="s_part"></asp:Label>
                                </td>
                                
                            </tr>
                            
                        </table>
                    </section>

                </div>
                <div id="img_div">
                    <section id="img_header">
                        <header id="img_h">
                            <h1 class="roomh1">Owner's Talk About <asp:Label runat="server" ID="mname" CssClass="roomh1"></asp:Label></h1>
                        </header>
                    </section>
                    <section id="margin"></section>
             <section id="img_k">
               <asp:Label runat="server" ID="ownertalk" ForeColor="#003366" Font-Italic="True"></asp:Label>
             </section>
          
                </div>
              
                
            </div>
            <div id="booking_div">
                <div id="booking">
                    <header id="booking_header">
                        <h1 id="bookingH1">
                            Book your room here
                        </h1>
                    </header>
                    <section id="marg"></section>
                    <section id="booking_section">
                        <table>
                            <tr>
                            <td><p class="fst_part">Choose Mese :</p>
                                         <asp:DropDownList ID="DropDown_Mess_selection" class="snd_part" runat="server">
                                             
                                         </asp:DropDownList>
                                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:RegistrationConnectionString %>" SelectCommand="SELECT [mesename] FROM [Table]"></asp:SqlDataSource>
                            </td>
                            </tr>

                             <tr>
                            <td><p class="fst_part">Room Number :</p>
                                <asp:DropDownList ID="DropDown_room_selection" class="snd_part" runat="server">
                                    
                                </asp:DropDownList>
                            </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:Button runat="server" height="30px" CssClass="fst_part" Text="Click To Show RENT" BackColor="#009933" ForeColor="Black"/>
                                </td>
                                <td>

                                    <asp:Label runat="server" ID="roomrentshow" Font-Bold="True" Font-Names="Tahoma" Font-Size="20px"></asp:Label>
                                </td>
                            </tr>

                            <tr>
                                <td>
                                    <asp:Button ID="Booking_button" runat="server" Text="Book" />
                                </td>
                            </tr>
                        </table>
                    </section>
                </div>
                  <div id="owner_pic">
                    <header id="owph">
                        <h1 id="owpic_h1">
                            Owner
                        </h1>
                    </header>
                    <section id="pic">
                        <img src="ownerpic.jpg" id="o_pic"/>
                    </section>
                </div>
                <div id="abt_o">
                    <header id="abth">
                        <h1 id="abt_h1">
                            Owner's Information
                        </h1>
                    </header>
                    <section id="o_margin"></section>
                    <section id="main_body_o">
                        <table>
                            <tr>
                                <td><p class="fst2_part">Name:</p>
                                    <asp:Label ID="Label1" runat="server"  CssClass="snd2_part"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td><p class="fst2_part">Email:</p>
                                    <asp:Label ID="Label2" runat="server"  CssClass="snd2_part"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td><p class="fst2_part">Age:</p>
                                    <asp:Label ID="Label3" runat="server"  CssClass="snd2_part"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td><p class="fst2_part">Profession:</p>
                                    <asp:Label ID="Label4" runat="server"  CssClass="snd2_part"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td><p class="fst2_part">Contact Number:</p>
                                    <asp:Label ID="Label5" runat="server"  CssClass="snd2_part"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td><p class="fst2_part">Address:</p>
                                    <asp:Label ID="Label6" runat="server"  CssClass="snd2_part"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td><p class="fst2_part">Material Status:</p>
                                    <p class="snd2_part">Marrird</p>
                                </td>
                            </tr>
                        </table>
                    </section>
                </div>
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