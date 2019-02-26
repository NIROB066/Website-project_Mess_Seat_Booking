 <%@ Page Language="C#" AutoEventWireup="true" CodeFile="Registration.aspx.cs" Inherits="Mese_Seat_Booking_Registration" %>

<%@ Register Src="~/Mese Seat Booking/MainControl.ascx" TagPrefix="uc1" TagName="MainControl" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <title>Registration</title>
    <link href="../Generic_Design.css" rel="stylesheet" type="text/css" />  
    <link href="Registration_Style.css" rel="stylesheet" type="text/css" />
</head>
<body id="main">
   <form  runat="server">

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
        <uc1:MainControl runat="server" ID="MainControl" />
            <div id="reg_box">
                <div id="head_div">
                <header id="head_reg">
                    <h1 id="head_h1">Welcome To Registration Section</h1>
                </header>
                </div>
                <div id="margin"></div>
                <div id="logo">
                    <section id="logo_img">
                        <img id="imgg" src="reg.jpg" />
                    </section>
                </div>
                <div id="main_content">
                    <table>
                        <tr>
                            <td><p class="main_con_p">Name:</p>
                                <asp:TextBox class="tp" ID="main_p1" runat="server" OnTextChanged="main_p1_TextChanged" placeholder="Enter your name" Font-Bold="True"></asp:TextBox>

                            </td>
                            <td>
                                 <asp:RequiredFieldValidator ID="RequiredFieldValidatorfirstname" CssClass="validatorc" runat="server" 
                                 ErrorMessage="Name Is Required" 
                                 ForeColor="Red" ControlToValidate="main_p1"
                                 Display="Dynamic" Font-Bold="True" Font-Italic="True" Font-Names="Tahoma" Font-Size="14px"></asp:RequiredFieldValidator>

                            </td>
                        </tr>
                      
                        <tr>
                            <td><p class="main_con_p">User Name:</p>
                                <asp:TextBox class="tp" ID="main_p2" runat="server" placeholder="Enter your username" Font-Bold="True"></asp:TextBox>
                            </td>
                            <td>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" CssClass="validatorc" runat="server" 
                                 ErrorMessage="Name Is Required" 
                                 ForeColor="Red" ControlToValidate="main_p2"
                                 Display="Dynamic" Font-Bold="True" Font-Italic="True" Font-Names="Tahoma" Font-Size="14px"></asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td><p class="main_con_p">Email Id:</p>
                                <asp:TextBox class="tp" ID="email" runat="server" placeholder="Enter your Email" Font-Bold="True"></asp:TextBox>
                            </td>
                            <td>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" CssClass="validatorc" runat="server" 
                                 ErrorMessage="Email Is Required" 
                                 ForeColor="Red" ControlToValidate="email"
                                 Display="Dynamic" Font-Bold="True" Font-Italic="True" Font-Names="Tahoma" Font-Size="14px"></asp:RequiredFieldValidator>
                               
                                <asp:RegularExpressionValidator ID="RegularExpressionValidatoremail" runat="server" 
                                ErrorMessage="Invalid Email" CssClass="validatorc"
                                 ForeColor="Red" ControlToValidate="email"
                                 Display="Dynamic" Font-Bold="True" Font-Italic="True" Font-Names="Tahoma" Font-Size="14px" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"
                                 ></asp:RegularExpressionValidator>
                            </td>
                        </tr>
                        <tr>
                            <td><p class="main_con_p">Address:</p>
                                <asp:TextBox class="tp" ID="address" runat="server" placeholder="Enter your Address" Font-Bold="True"></asp:TextBox>
                            </td>
                            <td>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" CssClass="validatorc" runat="server" 
                                 ErrorMessage="Address Is Required"
                                 ForeColor="Red" ControlToValidate="address"
                                 Display="Dynamic" Font-Bold="True" Font-Italic="True" Font-Names="Tahoma" Font-Size="14px"></asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td><p class="main_con_p">Contact Number:</p>
                                <asp:TextBox class="tp" ID="con_num" runat="server" placeholder="Enter contact number" Font-Bold="True"></asp:TextBox>
                            </td>
                            <td>
                                <asp:CompareValidator ID="CompareValidator1" runat="server" 
                                ErrorMessage="Must be integer" CssClass="validatorc"
                                ForeColor="Red" ControlToValidate="con_num"
                                 Display="Dynamic" Font-Bold="True" Font-Italic="True" Font-Names="Tahoma" Font-Size="14px"
                                 Operator="DataTypeCheck" Type="Integer"></asp:CompareValidator>
                            </td>
                        </tr>
                        <tr>
                            <td><p class="main_con_p">Password:</p>
                                <asp:TextBox ID="Password1" runat="server" CssClass="tp" TextMode="Password" placeholder="Enter your Password" Font-Bold="True"></asp:TextBox>
                            </td>
                            <td>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" CssClass="validatorc" runat="server" 
                                 ErrorMessage="Password Required"
                                 ForeColor="Red" ControlToValidate="Password1"
                                 Display="Dynamic" Font-Bold="True" Font-Italic="True" Font-Names="Tahoma" Font-Size="14px"></asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td><p class="main_con_p">Confirm Password:</p>
                                <asp:TextBox ID="PasswordC" runat="server" CssClass="tp" TextMode="Password" placeholder="Re-enter your Password" Font-Bold="True"></asp:TextBox>
                            </td>
                            <td>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" CssClass="validatorc" runat="server" 
                                 ErrorMessage="Password Required"
                                 ForeColor="Red" ControlToValidate="PasswordC"
                                 Display="Dynamic" Font-Bold="True" Font-Italic="True" Font-Names="Tahoma" Font-Size="14px"></asp:RequiredFieldValidator>
                            </td>
                            <td>
                                <asp:CompareValidator ID="CompareValidator2" runat="server" 
                                 ErrorMessage="Password Not matched" CssClass="validatorc"
                                 ForeColor="Red" ControlToValidate="PasswordC" ControlToCompare="Password1"
                                 Display="Dynamic" Font-Bold="True" Font-Italic="True" Font-Names="Tahoma" Font-Size="14px"
                                 Operator="Equal" Type="String" ></asp:CompareValidator>
                            </td>
                        </tr>
                        <tr>
                            <td><p class="main_con_p">User Gender:</p>
                                <asp:CheckBoxList ID="CheckBoxList1"  CssClass="checkbox" runat="server" CellPadding="5" CellSpacing="5" Font-Bold="True" Font-Names="Tahoma" Font-Size="18px" Font-Strikeout="False" RepeatDirection="Horizontal" TextAlign="Left" Width="200px" padding="10px">
                                    <asp:ListItem Text="Male" Enabled="true" ></asp:ListItem>
                                    <asp:ListItem Text="Female" Enabled="true" ></asp:ListItem>

                                </asp:CheckBoxList>
                            </td>
                        </tr>
                        <tr>
                            <td><p class="main_con_p">Type of user:</p>
                                
                               <asp:CheckBoxList ID="CheckBoxList2" CssClass="list" runat="server" CellPadding="5" CellSpacing="5" Font-Bold="True" Font-Names="Tahoma" Font-Size="18px" Font-Strikeout="False" RepeatDirection="Horizontal" TextAlign="Left" Width="200px">
                                    <asp:ListItem Text="Student" Enabled="true"></asp:ListItem>
                                    <asp:ListItem Text="Owner" Enabled="true"></asp:ListItem>
                                </asp:CheckBoxList>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Button CssClass="main_con_p" ID="submit" runat="server" Text="Register" OnClick="submit_Click" />
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
