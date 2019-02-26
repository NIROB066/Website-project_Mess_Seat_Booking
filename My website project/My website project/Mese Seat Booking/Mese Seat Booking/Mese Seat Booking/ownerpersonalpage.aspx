<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ownerpersonalpage.aspx.cs" Inherits="Mese_Seat_Booking_ownerpersonalpage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Owner Personal Information</title>
    
  
    <link href="OwnerpersonalpageEdit.css" rel="stylesheet" type="text/css" />
    <link href="../Owner%20LoginStyleSheet.css" rel="stylesheet" type="text/css" />
    
  
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
               <asp:Button runat="server" ID="userbutton" Text="Logout" Font-Bold="true" ForeColor="White" BackColor="ForestGreen" Height="30px" Width="70px" />
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
               <h1 id="mainparth1">Personal Information</h1>
           </header>
           <section id="margin1"></section>
           <section id="bodyportion">
               <table>
                   <tr>
                       <td>
                               <p class="bodyfstclass1">Owner Name :</p>
                       </td>
                       <td>
                               <asp:TextBox runat="server" CssClass="bodyfstclass2" ID="TextBoxdetails" Font-Bold="True" Font-Names="Tahoma" ForeColor="#FF3399" Height="50px" Width="400px" placeholder="Enter Owner Name..." Font-Size="22px"></asp:TextBox>
                       </td>
                       <td>
                                 <asp:RequiredFieldValidator ID="RequiredFieldValidatorfirstname" CssClass="validatorc" runat="server" 
                                 ErrorMessage="Name Is Required" 
                                 ForeColor="Red" ControlToValidate="TextBoxdetails"
                                 Display="Dynamic" Font-Bold="True" Font-Italic="True" Font-Names="Tahoma" Font-Size="18px"></asp:RequiredFieldValidator>

                      </td>
                   </tr>
                   <tr>
                       <td>
                               <p class="bodyfstclass1">Address :</p>
                       </td>
                       <td>
                               <asp:TextBox runat="server" CssClass="bodyfstclass2" ID="TextBox1" Font-Bold="True" Font-Names="Tahoma" ForeColor="#FF3399" Height="50px" Width="400px" placeholder="Enter Address..." Font-Size="22px"></asp:TextBox>
                       </td>
                       <td>
                                 <asp:RequiredFieldValidator ID="RequiredFieldValidator1" CssClass="validatorc" runat="server" 
                                 ErrorMessage="Address Is Required" 
                                 ForeColor="Red" ControlToValidate="TextBox1"
                                 Display="Dynamic" Font-Bold="True" Font-Italic="True" Font-Names="Tahoma" Font-Size="18px"></asp:RequiredFieldValidator>

                            </td>
                   </tr>
                   <tr>
                       <td>
                               <p class="bodyfstclass1">Phone number :</p>
                       </td>
                       <td>
                               <asp:TextBox runat="server" CssClass="bodyfstclass2" ID="TextBox2" Font-Bold="True" Font-Names="Tahoma" ForeColor="#FF3399" Height="50px" Width="400px" placeholder="Enter Phone number..." Font-Size="22px"></asp:TextBox>
                       </td>
                       <td>
                                 <asp:RequiredFieldValidator ID="RequiredFieldValidator2" CssClass="validatorc" runat="server" 
                                 ErrorMessage="Phone number Is Required" 
                                 ForeColor="Red" ControlToValidate="TextBox2"
                                 Display="Dynamic" Font-Bold="True" Font-Italic="True" Font-Names="Tahoma" Font-Size="18px"></asp:RequiredFieldValidator>

                            </td>
                   </tr>
                   <tr>
                       <td>
                               <p class="bodyfstclass1">New Password :</p>
                       </td>
                       <td>
                               <asp:TextBox runat="server" CssClass="bodyfstclass2" ID="TextBox3" Font-Bold="True" Font-Names="Tahoma" ForeColor="#FF3399" Height="50px" Width="400px" placeholder="Enter New Password..." Font-Size="22px" TextMode="Password"></asp:TextBox>
                       </td>
                       
                   </tr>
                   <tr>
                       <td>
                               <p class="bodyfstclass1">Re-enter Password :</p>
                       </td>
                       <td>
                               <asp:TextBox runat="server" CssClass="bodyfstclass2" ID="TextBox5" Font-Bold="True" Font-Names="Tahoma" ForeColor="#FF3399" Height="50px" Width="400px" placeholder="Re-Enter Password..." Font-Size="22px" TextMode="Password"></asp:TextBox>
                       </td>
                       <td>
                                <asp:CompareValidator ID="CompareValidator2" runat="server" 
                                 ErrorMessage="Password Not matched" CssClass="validatorc"
                                 ForeColor="Red" ControlToValidate="TextBox5" ControlToCompare="TextBox3"
                                 Display="Dynamic" Font-Bold="True" Font-Italic="True" Font-Names="Tahoma" Font-Size="18px"
                                 Operator="Equal" Type="String" ></asp:CompareValidator>
                            </td>
                       
                   </tr>
                   <tr>
                       <td>
                               <p class="bodyfstclass1">Email address :</p>
                       </td>
                       <td>
                               <asp:TextBox runat="server" CssClass="bodyfstclass2" ID="TextBox4" Font-Bold="True" Font-Names="Tahoma" ForeColor="#FF3399" Height="50px" Width="400px" placeholder="Enter Email address..." Font-Size="22px"></asp:TextBox>
                       </td>
                       <td>
                                 <asp:RequiredFieldValidator ID="RequiredFieldValidator5" CssClass="validatorc" runat="server" 
                                 ErrorMessage="***" 
                                 ForeColor="Red" ControlToValidate="TextBox4"
                                 Display="Dynamic" Font-Bold="True" Font-Italic="True" Font-Names="Tahoma" Font-Size="18px"></asp:RequiredFieldValidator>
                                 <asp:RegularExpressionValidator ID="RegularExpressionValidatoremail" runat="server" 
                                ErrorMessage="Invalid Email" CssClass="validatorc"
                                 ForeColor="Red" ControlToValidate="TextBox4"
                                 Display="Dynamic" Font-Bold="True" Font-Italic="True" Font-Names="Tahoma" Font-Size="18px" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"
                                 ></asp:RegularExpressionValidator>

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
