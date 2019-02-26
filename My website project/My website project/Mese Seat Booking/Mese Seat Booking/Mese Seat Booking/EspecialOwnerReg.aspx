<%@ Page Language="C#" AutoEventWireup="true" CodeFile="EspecialOwnerReg.aspx.cs" Inherits="Mese_Seat_Booking_EspecialOwnerReg" %>

<%@ Register Src="~/Mese Seat Booking/MainControl.ascx" TagPrefix="uc1" TagName="MainControl" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <title>Owner Personal Registration</title>
    <link href="../Generic_Design.css" rel="stylesheet" type="text/css" />  
   
    <link href="../EspStyle.css" rel="stylesheet" type="text/css" />
   
</head>
<body id="main">
    <form id="form1" runat="server">
         <script>
               color_change1();
               function color_change1() {
                   var x = document.getElementById('main');
                   x.style.background = '-webkit-linear-gradient(top,#ffffff,#00ffff)';
                   setTimeout(coloring1, 7000);
               }
               function coloring1() {
                   var y = document.getElementById('main');
                   y.style.background = '-webkit-linear-gradient(top,#00ffff,#ffffff)';
                   setTimeout(color_change1, 7000);
               }
           </script>

        <div id="big_wrapper">
        <uc1:MainControl runat="server" ID="MainControl1" />
            <div id="reg_box">
                <div id="head_div">
                <header id="head_reg">
                    <h1 id="head_h1">Welcome To Personal Information Section</h1>
                </header>
                </div>
                <div id="margin"></div>
                <div id="logo">
                    <section id="logo_img">
                        <img id="imgg" src="Personalinfo.jpg" />
                    </section>
                </div>
                <div id="main_content">
                    <table>
                        <tr>
                            <td><p class="main_con_p">Mese Name:</p>
                                <asp:TextBox class="tp" placeholder="Enter Mess name" ID="main_p1" runat="server"></asp:TextBox>
                            </td>
                            <td>
                                 <asp:RequiredFieldValidator ID="RequiredFieldValidatorfirstname" CssClass="validatorc" runat="server" 
                                 ErrorMessage="*" 
                                 ForeColor="Red" ControlToValidate="main_p1"
                                 Display="Dynamic" Font-Bold="True" Font-Italic="True" Font-Names="Tahoma" Font-Size="14px"></asp:RequiredFieldValidator>

                            </td>
                        </tr>
                      
                        <tr>
                            <td><p class="main_con_p">Mess Location:</p>
                                <asp:TextBox class="tp" placeholder="Enter Mess Location" ID="location" runat="server"></asp:TextBox>
                            </td>
                            <td>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" CssClass="validatorc" runat="server" 
                                 ErrorMessage="*" 
                                 ForeColor="Red" ControlToValidate="location"
                                 Display="Dynamic" Font-Bold="True" Font-Italic="True" Font-Names="Tahoma" Font-Size="14px"></asp:RequiredFieldValidator>
                               
                            </td>
                        </tr>
                        <tr>
                            <td><p class="main_con_p">Your Profession:</p>
                                <asp:TextBox class="tp" placeholder="Enter Your Profession" ID="profession" runat="server"></asp:TextBox>
                            </td>
                            <td>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" CssClass="validatorc" runat="server" 
                                 ErrorMessage="*"
                                 ForeColor="Red" ControlToValidate="profession"
                                 Display="Dynamic" Font-Bold="True" Font-Italic="True" Font-Names="Tahoma" Font-Size="14px"></asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td><p class="main_con_p">Your Age:</p>
                                <asp:TextBox class="tp" ID="age" placeholder="Enter your Age" runat="server"></asp:TextBox>
                            </td>
                            <td>
                                <asp:CompareValidator ID="CompareValidator1" runat="server" 
                                ErrorMessage="integer***" CssClass="validatorc"
                                ForeColor="Red" ControlToValidate="age"
                                 Display="Dynamic" Font-Bold="True" Font-Italic="True" Font-Names="Tahoma" Font-Size="14px"
                                 Operator="DataTypeCheck" Type="Integer"></asp:CompareValidator>
                            </td>
                            <td>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" CssClass="validatorc" runat="server" 
                                 ErrorMessage="*"
                                 ForeColor="Red" ControlToValidate="age"
                                 Display="Dynamic" Font-Bold="True" Font-Italic="True" Font-Names="Tahoma" Font-Size="14px"></asp:RequiredFieldValidator>
                            </td>
                        </tr>
                         <tr>
                            <td>
                                <p class="main_con_p">Say something about your mess...</p>

                            </td>
                            
                        </tr>
                        <tr>
                            <td>
                                <p class="main_con_p">Heading :</p>
                                <asp:TextBox runat="server" ID="headingtext" CssClass="tp" placeholder="Enter Headline..."></asp:TextBox>
                            </td>
                            <td>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" CssClass="validatorc" runat="server" 
                                 ErrorMessage="*"
                                 ForeColor="Red" ControlToValidate="headingtext"
                                 Display="Dynamic" Font-Bold="True" Font-Italic="True" Font-Names="Tahoma" Font-Size="14px"></asp:RequiredFieldValidator>
                            </td>
                            
                        </tr>
                        <tr>
                            <td>
                                <p class="main_con_p">Details :</p>
                                <asp:TextBox runat="server" ID="detailstext" CssClass="tps" placeholder="Enter Details(Within 50 words)..." TextMode="MultiLine"></asp:TextBox>
                            </td>
                            <td>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" CssClass="validatorc" runat="server" 
                                 ErrorMessage="*"
                                 ForeColor="Red" ControlToValidate="detailstext"
                                 Display="Dynamic" Font-Bold="True" Font-Italic="True" Font-Names="Tahoma" Font-Size="14px"></asp:RequiredFieldValidator>
                            </td>
                            
                        </tr>
                        
                        <tr>
                            <td>
                                <asp:Button CssClass="main_con_p" ID="submit" runat="server" Text="Submit" OnClick="submit_Click" />
                            </td>
                            
                        </tr>
                       
                        <tr>
                            <td>
                                <asp:Label runat="server" ID="submitsms" CssClass="list" Font-Bold="True" Font-Italic="True" Font-Names="Tahoma" Font-Size="16px" ForeColor="Red"></asp:Label>

                            </td>
                        </tr>
                    </table>
                </div>
            </div>
            
        </div>

       <div id="footer_div">
        <footer id="the_footer">
            <p id="footer_p">
                Copyright: MD RIFAT ANWAR
            </p>
        </footer>
        </div>
    </form>
</body>
</html>
