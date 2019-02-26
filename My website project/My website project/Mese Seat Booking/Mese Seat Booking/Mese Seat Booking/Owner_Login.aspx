<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Owner_Login.aspx.cs" Inherits="Mese_Seat_Booking_Owner_Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Owner Home page</title>
    <script src="jquery-1.11.2.js"></script>
    <script src="JavaScript.js"></script>
    <script src="jquery-ui.js"></script>
    <link href="jquery-ui.css" rel="stylesheet" />
    
     
<link href="../Admin.css" rel="stylesheet" type="text/css" />
    <link href="Owner%20LoginStyleSheet.css" rel="stylesheet" type="text/css" />
    <script>
        $(document).ready(function () {
            $('#TextBoxstdid').autocomplete({
                source: 'studentid.ashx'
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
           <asp:Label runat="server" ID="masqueetext" onkeyup="upperCase(this.value)"></asp:Label></marquee>
      <section id="mainmenu">
          <div id="div0"><ul><li><a href="Owner_Login.aspx"><p class="cng1">Home</p></a></li></ul></div>
           <div id="div1"><ul><li><a href="bookingreq.aspx"><p class="cng1">Booking Requests(<asp:Label runat="server" ID="bookreq" CssClass="cng1" Font-Bold="True" ForeColor="#FFFFCC"></asp:Label>)</p></a></li></ul></div>
           <div id="div2"><ul><li><a href="StudentHome.aspx"><p class="cng1">View Student List</p></a></li></ul></div>
          <div id="div3"><ul><li><a href="ownerpersonalpage.aspx"><p class="cng1">Personal Information</p></a></li></ul></div>
           <div id="div4"><ul>
               <li id="newcolor">
                   <p class="cng1">Requests(<asp:Label runat="server" ID="reql" CssClass="cng1" Font-Bold="True" ForeColor="#FFFFCC"></asp:Label>)</p>
                   <div class="problem_solving">
                       <ul  id="widthchange">
                           <asp:Repeater runat="server" DataSourceID="SqlDataSource2">
                               <ItemTemplate>
                                   <li>

                                       <a href="OwnerStudentView.aspx?studentrequestedid=<%#Eval("username") %>">
                                           <asp:Label runat="server" ID="messnamelable" CssClass="cng1" Text='<%# Eval("firstname") %>'></asp:Label></a>
                                   </li>
                               </ItemTemplate>
                           </asp:Repeater>
                           <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:RegistrationConnectionString %>" SelectCommand="SELECT * FROM [studentreq]"></asp:SqlDataSource>
                       </ul>

                   </div>
               </li></ul></div>

       </section>
       </div>

       <div id="fstpart1">
           <div id="fst">
               <header class="headermessview">
                   <h1 class="messviewh1">Mess overview</h1>
               </header>
               <section class="margin1"></section>
               <section id="bodyfst">
                   <table>
                       <tr>
                           <td>
                               <p class="bodyfstclass">Mess name :</p>
                           </td>
                           <td>
                               <asp:Label runat="server" ID="bodylev1" CssClass="bodylevclas" Font-Bold="True" Font-Names="Tahoma" Font-Size="20px" ForeColor="#FF0066"></asp:Label>
                           </td>
                       </tr>
                       <tr>
                           <td>
                               <p class="bodyfstclass">Owner name :</p>
                           </td>
                           <td>
                               <asp:Label runat="server" ID="bodylev2" CssClass="bodylevclas" Font-Bold="True" Font-Names="Tahoma" Font-Size="20px" ForeColor="#FF0066"></asp:Label>
                           </td>
                       </tr>
                       <tr>
                           <td>
                               <p class="bodyfstclass">Total students :</p>
                           </td>
                           <td>
                               <asp:Label runat="server" ID="bodylev3" CssClass="bodylevclas" Font-Bold="True" Font-Names="Tahoma" Font-Size="20px" ForeColor="#FF0066"></asp:Label>
                           </td>
                       </tr>
                       <tr>
                           <td>
                               <p class="bodyfstclass">Booked rooms :</p>
                           </td>
                           <td>
                               <asp:Dropdownlist runat="server" ID="bodylev4" CssClass="bodylevclas" Font-Bold="True" Font-Names="Tahoma" Font-Size="20px" ForeColor="#FF0066">

                               </asp:Dropdownlist>
                           </td>
                       </tr>
                       <tr>
                           <td>
                               <p class="bodyfstclass">Unbooked rooms :</p>
                           </td>
                           <td>
                               <asp:Dropdownlist runat="server" ID="bodylev5" CssClass="bodylevclas" Font-Bold="True" Font-Names="Tahoma" Font-Size="20px" ForeColor="#FF0066">

                               </asp:Dropdownlist>
                           </td>
                       </tr>

                   </table>
                   
               </section>
           </div>
           <div id="addrooms">
               <header class="headermessview">
                   <h1 class="messviewh1">Add yours rooms</h1>
               </header>
               <section class="margin1"></section>
               <section id="addroomsbody">
                   <table>
                       <tr>
                           <td>
                               <p class="bodyfstclass">Room number :</p>
                           </td>
                           <td>
                               <asp:TextBox runat="server" ID="roomnumtext" Font-Bold="True" Font-Names="Tahoma" Font-Size="22px" ForeColor="#FF3399" Height="30px" Width="250px" placeholder="Enter room number"></asp:TextBox>
                           </td>
                           <td>
                               

                               <asp:CompareValidator ID="CompareValidator2" runat="server" 
                                ErrorMessage="Must be number!" CssClass="validatorc"
                                ForeColor="Red" ControlToValidate="roomnumtext"
                                 Display="Dynamic" Font-Bold="True" Font-Italic="True" Font-Names="Tahoma" Font-Size="20px"
                                 Operator="DataTypeCheck" Type="Integer"></asp:CompareValidator>
                           </td>

                       </tr>
                       <tr>
                           <td>
                               <p class="bodyfstclass">Floor number :</p>
                           </td>
                           <td>
                               <asp:Dropdownlist runat="server" ID="dropdownroomselect" Font-Bold="True" Font-Names="Tahoma" Font-Size="22px" ForeColor="#FF3399" Height="30px" Width="250px">
                                   <asp:ListItem Text="first" Enabled="true" Selected="True"></asp:ListItem>
                                   <asp:ListItem Text="second" Enabled="true"></asp:ListItem>
                                   <asp:ListItem Text="third" Enabled="true"></asp:ListItem>
                                   <asp:ListItem Text="fourth" Enabled="true"></asp:ListItem>
                                   <asp:ListItem Text="fifth" Enabled="true"></asp:ListItem>
                                   <asp:ListItem Text="sixth" Enabled="true"></asp:ListItem>
                                   <asp:ListItem Text="seventh" Enabled="true"></asp:ListItem>
                                   <asp:ListItem Text="eighth" Enabled="true"></asp:ListItem>
                                   <asp:ListItem Text="ninth" Enabled="true"></asp:ListItem>
                                   <asp:ListItem Text="tenth" Enabled="true"></asp:ListItem>
                                   
                               </asp:Dropdownlist>
                           </td>

                       </tr>
                       <tr>
                           <td>
                               <p class="bodyfstclass">Room Rent :</p>
                           </td>
                           <td>
                               <asp:TextBox runat="server" ID="roomrentbox" Font-Bold="True" Font-Names="Tahoma" Font-Size="22px" ForeColor="#FF3399" Height="30px" Width="250px" placeholder="Enter room rent..."></asp:TextBox>
                           </td>
                           <td>
                              

                               <asp:CompareValidator ID="CompareValidator1" runat="server" 
                                ErrorMessage="Must be number!" CssClass="validatorc"
                                ForeColor="Red" ControlToValidate="roomrentbox"
                                 Display="Dynamic" Font-Bold="True" Font-Italic="True" Font-Names="Tahoma" Font-Size="20px"
                                 Operator="DataTypeCheck" Type="Integer"></asp:CompareValidator>
                           </td>

                       </tr>
                       <tr>
                           <td>
                               <asp:Button runat="server" ID="addroomsbutton" CssClass="but" Font-Bold="True" Font-Size="22px" Font-Names="Tahoma" ForeColor="Red" Height="50px" Text="Add" Width="150px" OnClick="addroomsbutton_Click" />
                           </td>
                       </tr>

                   </table>
               </section>
           </div>
       </div>

       <div id="sndpart">
           <div id="snd1">
               <header class="headermessview">
                   <h1 class="messviewh1">Delete a student id</h1>
               </header>
               <section class="margin1"></section>
               <section id="bodysnd">
                   <table>
                       <tr>
                           <td>
                               <p class="bodyfstclass">Student's Id :</p>
                           </td>
                           <td>
                               <asp:TextBox runat="server" ID="TextBoxstdid" Font-Bold="True" Font-Names="Tahoma" Font-Size="22px" ForeColor="#FF3399" Height="30px" Width="200px" placeholder="Enter student id"></asp:TextBox>
                           </td>
                       </tr>
                       <tr>
                           <td>
                               <asp:Button runat="server" CssClass="but" ID="delbut" Font-Bold="True" Font-Size="22px" Font-Names="Tahoma" ForeColor="Red" Height="50px" Text="Delete" Width="150px" OnClick="delbut_Click" />
                           </td>
                       </tr>
                   </table>
               </section>
           </div>
           <div id="snd2">
               <header class="headermessview">
                   <h1 class="messviewh1">Personal Information</h1>
               </header>
               <section class="margin1"></section>
               <section id="personalinfobody">
                   <table>
                       <tr>
                           <td>
                               <p class="bodyfstclass1">Headline about your mess :</p>
                           </td>
                           <td>
                               <asp:TextBox runat="server" CssClass="bodyfstclass2" ID="TextBoxhead" Font-Bold="True" Font-Names="Tahoma" ForeColor="#FF3399" Height="30px" Width="200px" placeholder="Enter Headline..." Font-Size="22px"></asp:TextBox>
                           </td>
                           
                       </tr>
                       <tr>
                           <td>
                               <p class="bodyfstclass1">Details about your mess :</p>
                           </td>
                           <td>
                               <asp:TextBox runat="server" CssClass="bodyfstclass2" ID="TextBoxdetails" Font-Bold="True" Font-Names="Tahoma" ForeColor="#FF3399" Height="100px" Width="200px" placeholder="Enter Details(maximum 100words)..." Font-Size="22px" TextMode="MultiLine"></asp:TextBox>
                           </td>
                           
                       </tr>
                       <tr>
                           <td>
                               <asp:Button runat="server" CssClass="but" ID="Update" Font-Bold="True" Font-Size="22px" Font-Names="Tahoma" ForeColor="Red" Height="50px" Text="Update" Width="150px" OnClick="Update_Click" />
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
