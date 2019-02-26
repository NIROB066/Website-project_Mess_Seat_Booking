<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Admin.aspx.cs" Inherits="Mese_Seat_Booking_Admin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Homepage for Admin</title>
    <script src="jquery-1.11.2.js"></script>
    <script src="JavaScript.js"></script>
    <script src="jquery-ui.js"></script>
    <link href="jquery-ui2.css" rel="stylesheet" />
   
    <link href="../Admin.css" rel="stylesheet" type="text/css" />
   
    <script>
        $(document).ready(function () {
            $('#delsearchbox').autocomplete({
                source: 'StudentHandler.ashx'
            });
            $('#one1').autocomplete({
                source: 'usernameHandler.ashx'
            });
            $('#two2').autocomplete({
                source: 'usernameHandler.ashx'
            });
            $('#three3').autocomplete({
                source: 'usernameHandler.ashx'
            });
            $('#four4').autocomplete({
                source: 'usernameHandler.ashx'
            });
        });
    </script>
   
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
           <asp:Label runat="server" ID="masqueetext" onkeyup="upperCase(this.value)" Text="Important Notice:: Asthayee Nibash Has Introduced C.C. Camera for their student's security!!!"></asp:Label></marquee>
      <section id="mainmenu">
          <div id="div0"><ul><li></li></ul></div>
           <div id="div1"><ul><li><a href="Admin.aspx"><p class="cng1">Home</p></a></li></ul></div>
           <div id="div2"><ul><li><p class="cng1">View Mese List</p>
              <div class="problem_solving">
               <ul>
                   <asp:Repeater runat="server" DataSourceID="SqlDataSource1">
                       <ItemTemplate>
                           <li>
                               
                               <a href="AdminAsthayee.aspx?name3=<%#Eval("userid") %>"> <asp:Label runat="server" ID="messnamelable" CssClass="cng1"  text='<%# Eval("mesename") %>'></asp:Label></a>
                           </li>
                       </ItemTemplate>
                   </asp:Repeater> 
                   <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:RegistrationConnectionString %>" SelectCommand="SELECT * FROM [Table]"></asp:SqlDataSource>
               </ul>

              </div>
            </li></ul></div>
           <div id="div3"><ul><li><a href="AdminHome.aspx"><p class="cng1">View Homepage</p></a></li></ul></div>
           <div id="div4"><ul>
               <li id="newcolor">
                   <p class="cng1">Requests(<asp:Label runat="server" ID="reql" CssClass="cng1" Font-Bold="True" ForeColor="#FFFFCC"></asp:Label>)</p>
                   <div class="problem_solving">
                       <ul id="width_correction">
                           <asp:Repeater runat="server" DataSourceID="SqlDataSource2">
                               <ItemTemplate>
                                   <li>

                                       <a href="AdminMessView.aspx?name4=<%#Eval("username") %>">
                                           <asp:Label runat="server" ID="messnamelable" CssClass="cng1" Text='<%# Eval("messname") %>'></asp:Label></a>
                                   </li>
                               </ItemTemplate>
                           </asp:Repeater>
                           <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:RegistrationConnectionString %>" SelectCommand="SELECT * FROM [request]"></asp:SqlDataSource>
                       </ul>

                   </div>
               </li></ul></div>
           <div id="div5"><ul><li></li></ul></div>

       </section>
       </div>

       <div id="firstpartdiv">
           <div id="summaryofmess">
               <header id="head_som">
                   <h1 id="som_h1">Look mess information at a glance</h1>
               </header>
               <section id="som_margin"></section>
               <section id="maincon_som">
                   <table>
                       <tr>
                           <td>
                               <p class="somlist">Total Mess :</p>
                           </td>
                           <td>
                               <asp:Label runat="server" ID="totalmesslable" CssClass="somlable"></asp:Label>
                           </td>
                       </tr>
                       <tr>
                           <td>
                               <p class="somlist">Registered Mess :</p>
                           </td>
                           <td>
                               <asp:Label runat="server" ID="regmesslable" CssClass="somlable"></asp:Label>
                           </td>
                       </tr>
                       <tr>
                           <td>
                               <p class="somlist">Pending Mess :</p>
                           </td>
                           <td>
                               <asp:Label runat="server" ID="pmlable" CssClass="somlable"></asp:Label>
                           </td>
                       </tr>
                       <tr>
                           <td>
                               <p class="somlist">Total Students :</p>
                           </td>
                           <td>
                               <asp:Label runat="server" ID="tslable" CssClass="somlable"></asp:Label>
                           </td>
                       </tr>
                   </table>
               </section>
           </div>
           <div id="deletemess">
               <header id="delheader">
                   <h1 id="delh1">Search to delete a mess</h1>
               </header>
               <section id="margindel"></section>
               <section id="delbody">
                   <table>
                       <tr>
                           <td>
                               <p id="searchp" class="somlable">Search here :</p>
                           </td>
                       </tr>
                       <tr>
                           <td>
                               <asp:TextBox runat="server" ID="delsearchbox" placeholder="Type mess name" Height="35px" Font-Bold="True" Font-Names="Tahoma" Font-Size="20px"></asp:TextBox>
                           </td>
                           <td>
                               <asp:Button runat="server" ID="delbutton" Text="DELETE" Height="30px" Width="120px" BackColor="White" Font-Bold="True" Font-Size="20px" ForeColor="Black" Font-Names="Tahoma" OnClick="delbutton_Click1" />
                           </td>
                       </tr>
                   </table>
               </section>
           </div>
       </div>
       <div id="secondpart">
           <div class="forabout" id="fabout">
               <header class="aboutheaderadmin">
                   <h1 class="abouth1admin">Type About Your Website</h1>
               </header>
               <section class="aboutmargin"></section>
               <section class="aboutbody">
                   <table>
                       <tr>
                           <td>
                               <asp:TextBox runat="server" ID="aboutweb" placeholder="Type something about your website " Height="180px" Font-Bold="True" Font-Names="Tahoma" Font-Size="20px" Width="300px" class="abouttextbox" TextMode="MultiLine"></asp:TextBox>
                           </td>
                       </tr>
                       <tr>
                           <td>
                               <asp:Button runat="server" class="tsbut" Text="Update" Height="30px" Width="120px" BackColor="White" Font-Bold="True" Font-Size="20px" ForeColor="Black" Font-Names="Tahoma" OnClick="Unnamed3_Click" />
                           </td>
                       </tr>
                   </table>
               </section>
           </div>
           <div class="forabout" id="masqueeabout">
               <header class="aboutheaderadmin">
                   <h1 class="abouth1admin">Hot News Of Your Website</h1>
               </header>
               <section class="aboutmargin"></section>
               <section class="aboutbody">
                   <table>
                       <tr>
                           <td>
                               <asp:TextBox runat="server" ID="hot" placeholder="Type something about your website(Within 100 words) " Height="180px" Font-Bold="True" Font-Names="Tahoma" Font-Size="20px" Width="300px" class="abouttextbox" TextMode="MultiLine"></asp:TextBox>
                           </td>
                       </tr>
                       <tr>
                           <td>
                               <asp:Button runat="server" class="tsbut" Text="Update" Height="30px" Width="120px" BackColor="White" Font-Bold="True" Font-Size="20px" ForeColor="#FF0066" Font-Names="Tahoma" OnClick="Unnamed5_Click" />
                           </td>
                       </tr>
                   </table>
               </section>
           </div>
           <div id="messabtselect">
               <header class="aboutheaderadmin">
                   <h1 id="abtadmin">Select mess Advertisement</h1>
               </header>
               <section class="aboutmargin"></section>
               <section id="selectsec">
                   <table>
                       <tr>
                           <td>
                               <p class="somlable">section1:</p>
                           </td>
                           <td>
                               <asp:TextBox runat="server" placeholder="Type username" Height="30px" ID="one1" Font-Size="20px" Font-Bold="True" Font-Names="Tahoma" CssClass="abc" Width="200px" ForeColor="#FF0066"></asp:TextBox>
                           </td>
                           <td>
                               <asp:Button runat="server" ID="oneb" CssClass="selectmessbut" Font-Size="16px" Font-Names="Tahoma" ForeColor="#FF0066" Width="60px" Text="Add" Font-Bold="True" OnClick="oneb_Click" />
                           </td>
                       </tr>
                        <tr>
                           <td>
                               <p class="somlable">section2:</p>
                           </td>
                           <td>
                               <asp:TextBox runat="server" placeholder="Type username" Height="30px" ID="two2" Font-Size="20px" Font-Bold="True" Font-Names="Tahoma" CssClass="abc" Width="200px"></asp:TextBox>
                           </td>
                            <td>
                                <asp:Button runat="server" ID="twob" CssClass="selectmessbut" Font-Size="16px" Font-Names="Tahoma" ForeColor="#FF0066" Width="60px" Text="Add" Font-Bold="True" OnClick="twob_Click" />
                           </td>

                       </tr>
                        <tr>
                           <td>
                               <p class="somlable">section3:</p>
                           </td>
                           <td>
                               <asp:TextBox runat="server" placeholder="Type username" Height="30px" ID="three3" Font-Size="20px" Font-Bold="True" Font-Names="Tahoma" CssClass="abc" Width="200px"></asp:TextBox>
                           </td>
                            <td>
                                <asp:Button runat="server" ID="threeb" CssClass="selectmessbut" Font-Size="16px" Font-Names="Tahoma" ForeColor="#FF0066" Width="60px" Text="Add" Font-Bold="True" OnClick="threeb_Click" />
                           </td>
                       </tr>
                        <tr>
                           <td>
                               <p class="somlable">section4:</p>
                           </td>
                           <td>
                               <asp:TextBox runat="server" placeholder="Type username" Height="30px" ID="four4" Font-Size="20px" Font-Bold="True" Font-Names="Tahoma" CssClass="abc" Width="200px"></asp:TextBox>
                           </td>
                            <td>
                               <asp:Button runat="server" ID="fourb" CssClass="selectmessbut" Font-Size="16px" Font-Names="Tahoma" ForeColor="#FF0066" Width="60px" Text="Add" Font-Bold="True" OnClick="fourb_Click" />
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
