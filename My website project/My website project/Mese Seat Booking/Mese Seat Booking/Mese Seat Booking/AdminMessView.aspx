<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AdminMessView.aspx.cs" Inherits="Mese_Seat_Booking_AdminMessView" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>View Requested Mess</title>
    
    
    
    <link href="AdminMessViewStyle.css" rel="stylesheet" type="text/css" />
    
    
    
</head>
<body id="main">
    <form id="form1" runat="server">
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
           <div id="div1"><ul><li></li></ul></div>
           <div id="div3"><ul><li><a href="Admin.aspx"><p class="cng1">Home</p></a></li></ul></div>
           <div id="div4"><ul><li></li></ul></div>
           <div id="div5"><ul><li></li></ul></div>

       </section>
       </div>
            <div id="colorfulbg">
                <header id="messviewheader">
                    <h1 id="messviewh1">
                        Let's View <asp:Label runat="server" ID="h1lev" Font-Names="Tahoma" Font-Size="24px" Font-Bold="True" ForeColor="#990033"></asp:Label>
                    </h1>
                </header>
                <section id="marsec"></section>
                <div id="mainpartyo">
                    <table>
                        <tr>
                            <td>
                                <p class="pclass">Owner's name :</p>

                            </td>
                            <td>
                                <asp:Label runat="server" CssClass="lableclass" ID="o1"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <p class="pclass">Mess name :</p>

                            </td>
                            <td>
                                <asp:Label runat="server" CssClass="lableclass" ID="t2"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <p class="pclass">Mess Location :</p>

                            </td>
                            <td>
                                <asp:Label runat="server" CssClass="lableclass" ID="t3"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <p class="pclass">Owner's age :</p>

                            </td>
                            <td>
                                <asp:Label runat="server" CssClass="lableclass" ID="t4"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <p class="pclass">Owner's profession :</p>

                            </td>
                            <td>
                                <asp:Label runat="server" CssClass="lableclass" ID="t5"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <p class="pclass">Owner's Contact Number :</p>

                            </td>
                            <td>
                                <asp:Label runat="server" CssClass="lableclass" ID="t6"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <p class="pclass">Owner's Address :</p>

                            </td>
                            <td>
                                <asp:Label runat="server" CssClass="lableclass" ID="t7"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <p class="pclass">Owner's Email :</p>

                            </td>
                            <td>
                                <asp:Label runat="server" CssClass="lableclass" ID="t8"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Button runat="server" CssClass="butclass" ID="Label1" Text="Accept Request" OnClick="Label1_Click"/>
                            </td>
                            <td>
                                <asp:Button runat="server" CssClass="butclass" ID="Label2" Text="Delete Request" OnClick="Label2_Click"/>
                            </td>
                        </tr>
                    </table>
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
