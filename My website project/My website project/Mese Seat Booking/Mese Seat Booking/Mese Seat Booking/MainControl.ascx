<%@ Control Language="C#" AutoEventWireup="true" CodeFile="MainControl.ascx.cs" Inherits="Mese_Seat_Booking_MainControl" %>




   <div id="maindiv">
       <header id="topheader">
           <h1 id="textshadow">Welcome To Seat Booking Website Of<br />Any Mese Nearby<br />KUET</h1>
       </header>
        <marquee id="moving_Text">
           <asp:Label runat="server" ID="masqueetext"></asp:Label>

       </marquee>
       <section id="mainmenu">
           <div id="div0"><ul><li></li></ul></div>
           <div id="div1"><ul><li><a href="Main.aspx"><p class="cng">Home</p></a></li></ul></div>
           <div id="div2"><ul><li><p class="cng">Mese List</p>
              <div id="problem_solving">
               <ul>
                   <asp:Repeater runat="server" DataSourceID="SqlDataSource1">
                       <ItemTemplate>
                           <li>
                               
                               <a href="Asthayee%20Nibash.aspx?name=<%#Eval("userid") %>"> <asp:Label runat="server" ID="messnamelable" CssClass="cng"  text='<%# Eval("mesename") %>'></asp:Label></a>
                           </li>
                       </ItemTemplate>
                   </asp:Repeater> 
                   <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:RegistrationConnectionString %>" SelectCommand="SELECT * FROM [Table]"></asp:SqlDataSource>
               </ul></div>
                              </li></ul></div>
           <div id="div3"><ul><li><a href="Student's%20Corner.aspx"><p class="cng">Student's Corner</p></a></li></ul></div>
           <div id="div4"><ul><li><a href="Registration.aspx"><p class="cng">Registration</p></a></li></ul></div>
           <div id="div5"><ul><li></li></ul></div>
           

       </section>
       </div>
