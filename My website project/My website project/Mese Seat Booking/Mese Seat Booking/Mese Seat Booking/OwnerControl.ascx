<%@ Control Language="C#" AutoEventWireup="true" CodeFile="OwnerControl.ascx.cs" Inherits="OwnerControl" %>
<div id="maindiv">
            <div id="loginlogout">
                <asp:Label ID="Labeluser_name" runat="server" Font-Bold="True" Font-Names="Tahoma" Font-Size="16px" ForeColor="White" Width="100px"></asp:Label>
                <asp:Button ID="Buttonlogout" runat="server" Text="Logout" BackColor="#006600" CssClass="logout_b" Font-Bold="True" Font-Names="Tahoma" Font-Size="20px" ForeColor="White" BorderColor="#006600" OnClick="Buttonlogout_Click" />
           </div>
                <header id="topheader">
                 <h1 id="textshadow">Welcome To Seat Booking Website Of<br />Any Mese Nearby<br />KUET</h1>
               </header>
       
       <marquee id="moving_Text">
           Important Notice:: Asthayee Nibash Has Introduced C.C. Camera for their student's security!!!
       </marquee>
       <section id="mainmenu">
          <div id="div0"><ul><li></li></ul></div>
           <div id="div1"><ul><li><a href="Owner_Login.aspx"><p class="cng1">Home</p></a></li></ul></div>
           <div id="div2"><ul><li><p class="cng1">Mese List</p>
              <div id="problem_solving">
               <ul>
                   
                   <li><a href="Asthayee%20Nibash.aspx"><p class="cng1">Asthayee Nibash</p></a></li>
                   <li><a href="Sakib_palace.aspx"><p class="cng1">Sakib Palace</p></a></li>
                   <li><a href="Janata_Manjil.aspx"><p class="cng1">Janata Manjil</p></a></li>
                   <li><a href="Main%20Gate%20Mese.aspx"><p class="cng1">Main Gate Mese</p></a></li>
                   <li><a href="Ma%20khuthir.aspx"><p class="cng1">Ma Khuthir</p></a></li>
                   <li><a href="Notun%20Nibash.aspx"><p class="cng1">Notun Nibash</p></a></li>
                   <li><a href="Notun%20Nibash.aspx"><p class="cng1">Nobo Khuthir</p></a></li>
                   <li><a href="Notun%20Nibash.aspx"><p class="cng1">Nirjon Villa</p></a></li>
                   <li><a href="Notun%20Nibash.aspx"><p class="cng1">Apon Khuthir</p></a></li>
                   <li><a href="Notun%20Nibash.aspx"><p class="cng1">Sakib Royal</p></a></li>
                   <li><a href="Notun%20Nibash.aspx"><p class="cng1">Fox House</p></a></li>
                   <li><a href="Notun%20Nibash.aspx"><p class="cng1">Nil vobon</p></a></li>
                   <li><a href="Notun%20Nibash.aspx"><p class="cng1">Jibon villa</p></a></li>
               </ul></div>
                              </li></ul></div>
           <div id="div3"><ul><li><a href="OwnerPersonalInfo.aspx"><p class="cng1">Personal Information</p></a></li></ul></div>
           <div id="div4"><ul><li><a href="OwnerAddRooms.aspx"><p class="cng1">Add Your Rooms</p></a></li></ul></div>
           <div id="div5"><ul><li></li></ul></div>

       </section>
       </div>