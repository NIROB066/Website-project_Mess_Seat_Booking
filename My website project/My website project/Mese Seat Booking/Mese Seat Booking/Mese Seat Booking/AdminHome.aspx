<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AdminHome.aspx.cs" Inherits="Mese_Seat_Booking_AdminHome" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Homepage</title>
    <link href="../Admin.css" rel="stylesheet" type="text/css" />
    <link href="Mainstyle_new.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
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
           <asp:Label runat="server" ID="masqueetext" onkeyup="upperCase(this.value)" Text="Important Notice:: Asthayee Nibash Has Introduced C.C. Camera for their student's security!!!"></asp:Label></marquee>
      <section id="mainmenu">
          <div id="div0"><ul><li></li></ul></div>
           <div id="div1"><ul><li><a href="Admin.aspx"><p class="cng1">Home</p></a></li></ul></div>
           <div id="div2"><ul><li></li></ul></div>
           <div id="div3"><ul><li><a href="AdminHome.aspx"><p class="cng1">View Homepage</p></a></li></ul></div>
           <div id="div4"><ul><li></li></ul></div>
           <div id="div5"><ul><li></li></ul></div>

       </section>
       </div>
            <div id="owner_reg_stud_reg">
          
           <div id="ajaxsearch">
               <header id="ajaxheader">
                   <h1 id="ajaxh1">Search For Messes</h1>
               </header>
               <section id="ajaxsec">
                   <table>
                       <tr>
                           <td>
                               <asp:TextBox runat="server" ID="ajaxtextbox" placeholder="Enter Mess Name" Font-Italic="True" Font-Names="Tahoma" Font-Size="22px" ForeColor="Red" Font-Bold="True" ReadOnly="True"></asp:TextBox>

                           </td>
                           <td>
                               <asp:Button runat="server" ID="ajaxbutton" Text="Go" BackColor="#000066" Font-Bold="True" Font-Names="Tahoma" Font-Size="25px" ForeColor="Yellow"/>
                           </td>
                       </tr>
                   </table>
               </section>
           </div>

           <section id="img_k">
               <img class="slides" src="one.jpg"   />
               <img class="slides" src="two.jpg"   />
               <img class="slides" src="three.jpg" />
               <img class="slides" src="four.jpg"  />
               <img class="slides" src="five.jpg"  />
               <img class="slides" src="six.jpg"   />
               <img class="slides" src="seven.jpg" />
               <img class="slides" src="eight.jpg" />
               <img class="slides" src="nine.jpg"  />
           </section>
           <script>
               
               var index = 1;
               showimg();
               function showimg() {
                var i;
                var x = document.getElementsByClassName('slides');
                for (i = 0; i < x.length; i++)
                {
                   x[i].style.display = 'none';
                }
                if (index > x.length) {
                  index = 1;
                }
               x[index - 1].style.display = 'block';
               index++;
               setTimeout(showimg, 2000);
               }
           </script>
           <section id="about">
               <h1 id="abt" class="font_s">About Ourselft Ourself</h1>
                <p id="abou_p"><asp:Label runat="server" ID="abou_lebel" Font-Bold="True" Font-Names="Tahoma" Font-Size="20px" ForeColor="Black"></asp:Label></p>
           </section>
           <script>
               color_change();
               function color_change() {
                   var x = document.getElementById('about');
                   x.style.background = '-webkit-linear-gradient(135deg,#ffffff,#00ffff)';
                   setTimeout(coloring, 3000);
               }
               function coloring() {
                   var y = document.getElementById('about');
                   y.style.background = '-webkit-linear-gradient(45deg,#ffffff,#00ffff)';
                   setTimeout(color_change, 3000);
               }
           </script>
       </div>
        <div id="std_reg_and_news">
             <section id="owner_reg">
               <p class="owner_p">Welcome To Login Point</p>
               
                   <table>
                       <tr>
                           <td><p class="owner_p" id="ui">User id:</p>
                               <asp:TextBox ID="TextBox1" placeholder="Enter your user id" runat="server" ReadOnly="True"></asp:TextBox></td>
                       </tr>
                       <tr>
                           <td><p class="owner_p" id="u">Password:</p>
                               <asp:TextBox ID="TextBox3" placeholder="Enter your Password" runat="server" TextMode="Password" ReadOnly="True"></asp:TextBox>       </td>
                       </tr>
                       <tr>
                           <td>
                               <p class="owner_p" id="logincheck">Login As: </p>
                               <asp:DropDownList runat="server" CssClass="owner_p" ID="loginchecker">
                                   <asp:ListItem Text="Owner" Enabled="true" Value="1" Selected="True"></asp:ListItem>
                                   <asp:ListItem Text="Student" Enabled="true" Selected="False" Value="2"></asp:ListItem>
                                   <asp:ListItem Text="Authorization" Enabled="true" Selected="False"></asp:ListItem>
                               </asp:DropDownList>
                           </td>
                       </tr>
                       <tr>
                           <td>
                               <asp:CheckBoxList ID="CheckBoxListcookie" runat="server" Font-Bold="True" Font-Size="20px" ForeColor="#003366" Font-Names="Tahoma">
                                   <asp:ListItem Text="Keep me logged in" Enabled="true"></asp:ListItem>
                               </asp:CheckBoxList>
                           </td>
                       </tr>
                       <tr>
                           <td>
                               <asp:Button ID="Button_o" CssClass="owner_p" runat="server" Text="Login"/></td>
                       </tr>
                       <tr>
                           <td>
                               <asp:Label ID="LabelTyp" CssClass="owner_p" runat="server" Text="" Font-Bold="True" Font-Italic="True" Font-Names="Tahoma" Font-Size="20px" ForeColor="yellow"></asp:Label>
                           </td>
                            
                       </tr>
                   </table>
             
           </section>
           

        <div id="news">
                <header id="news_header">
                    <h1 id="nh">Welcome to News Section</h1>
                </header>
            <div id="news1">
                <section id="fst_news">
                    <h1 id="news1_h"><asp:Label runat="server" ID="newsleb1"></asp:Label></h1>
                    <p id="news1_p"><asp:Label runat="server" ID="newsbodyleb1"></asp:Label></p>
                </section>
                <section id="fst_news2">
                    <h1 id="news1_h2">
                       <asp:Label runat="server" ID="newsleb2"></asp:Label>
                    </h1>
                    <p id="news1_p2">
                       <asp:Label runat="server" ID="newsbodyleb2"></asp:Label>
                    </p>
                </section>
            </div>
            <div id="news2">
                <section id="snd_news">
                    <h1 id="news2_h">
                        <asp:Label runat="server" ID="newsleb3"></asp:Label>
                    </h1>
                    <p id="news2_p">
                        <asp:Label runat="server" ID="newsbodyleb3"></asp:Label>
                    </p>
                </section>
                <section id="snd_news2">
                    <h1 id="news2_h2">
                        <asp:Label runat="server" ID="newsleb4"></asp:Label>
                    </h1>
                    <p id="news2_p2">
                        <asp:Label runat="server" ID="newsbodyleb4"></asp:Label>
                    </p>
                </section>
            </div>

            <script>
                change();
               
                function change() {
                   x = document.getElementById('fst_news');
                   y = document.getElementById('fst_news2');
                   z = document.getElementById('snd_news');
                   q = document.getElementById('snd_news2'); 
                   x.style.background = '#02b7d3';
                    y.style.background = '#b9b78c';
                    z.style.background = '#899985';
                    q.style.background = '-webkit-linear-gradient(30deg,#03905e,#00ff90)';
                   setTimeout(change1, 4000);
               }
                function change1() {
                  x = document.getElementById('fst_news');
                   y = document.getElementById('fst_news2');
                   z = document.getElementById('snd_news');
                   q = document.getElementById('snd_news2');
                   y.style.background = '#02b7d3';
                    x.style.background = '-webkit-linear-gradient(30deg,#aa4c4c,#ff006e)';
                    z.style.background = '#899985';
                    q.style.background = '-webkit-linear-gradient(30deg,#03905e,#00ff90)';
                   setTimeout(change2, 4000);
                }

                function change2() {
                  x = document.getElementById('fst_news');
                   y = document.getElementById('fst_news2');
                   z = document.getElementById('snd_news');
                   q = document.getElementById('snd_news2');
                   z.style.background = '#02b7d3';
                    x.style.background = '-webkit-linear-gradient(30deg,#aa4c4c,#ff006e)';
                    y.style.background = '#b9b78c';
                    q.style.background = '-webkit-linear-gradient(30deg,#03905e,#00ff90)';

                   setTimeout(change3, 4000);
                }

                function change3() {
                  x = document.getElementById('fst_news');
                   y = document.getElementById('fst_news2');
                   z = document.getElementById('snd_news');
                   q = document.getElementById('snd_news2');
                   q.style.background = '#02b7d3';
                   x.style.background = '-webkit-linear-gradient(30deg,#aa4c4c,#ff006e)';
                    z.style.background = '#899985';
                    y.style.background = '#b9b78c';

                   setTimeout(change, 4000);
                }
               
           </script>

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
