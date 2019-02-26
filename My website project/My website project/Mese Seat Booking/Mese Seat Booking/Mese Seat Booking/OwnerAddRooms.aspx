<%@ Page Language="C#" AutoEventWireup="true" CodeFile="OwnerAddRooms.aspx.cs" Inherits="Mese_Seat_Booking_OwnerAddRooms" %>

<%@ Register Src="~/Mese Seat Booking/OwnerControl.ascx" TagPrefix="uc1" TagName="OwnerControl" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Add your roooms</title>
    
    <link href="StyleOwner.css" rel="stylesheet" type="text/css" />
    
    <link href="../OwneraddroomsStyle.css" rel="stylesheet" type="text/css" />
    
</head>
<body id="main">
    <form id="form1" runat="server">
        <div id="big_wrapper">
            <uc1:OwnerControl runat="server" ID="OwnerControl" /> 
            <div id="reg_box">
                <div id="head_div">
                <header id="head_reg">
                    <h1 id="head_h1">Add your mess rooms here</h1>
                </header>
                </div>
                <div id="margin"></div>
                <div id="logo">
                    <section id="logo_img">
                        <img id="imgg" src="addrooms.jpg" />
                    </section>
                </div>
                <div id="main_content">
                    <table>
                       <tr>
                           <td>
                               <p class="main_con_p">Add your Floor Number :</p>
                           </td>
                       
                       
                            <td>
                                <asp:DropDownList ID="DropDownListfloor" CssClass="tp" runat="server" BackColor="#3333FF" Font-Bold="True" Font-Names="Tahoma" Font-Size="18px" ForeColor="White">
                                    <asp:ListItem Text="First" Value="1" Enabled="true" Selected="True"></asp:ListItem>
                                    <asp:ListItem Text="Second" Value="2" Enabled="true" Selected="False"></asp:ListItem>
                                    <asp:ListItem Text="Third" Value="3" Enabled="true" Selected="False"></asp:ListItem>
                                    <asp:ListItem Text="Fourth" Value="4" Enabled="true" Selected="False"></asp:ListItem>
                                    <asp:ListItem Text="Fifth" Value="5" Enabled="true" Selected="False"></asp:ListItem>
                                    <asp:ListItem Text="Sixth" Value="6" Enabled="true" Selected="False"></asp:ListItem>
                                   
                                </asp:DropDownList>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <p class="main_con_p">Add your room number :</p>
                            </td>
                            <td>
                                <asp:TextBox ID="TextBoxroomnum" placeholder="Enter room number" CssClass="tp" runat="server" BackColor="White" Font-Bold="True" Font-Names="Tahoma" Font-Size="18px" Height="25px"></asp:TextBox>
                            </td>
                             <td>
                                <asp:CompareValidator ID="CompareValidator1" runat="server" 
                                ErrorMessage="Must be integer" CssClass="validatorc"
                                ForeColor="Red" ControlToValidate="TextBoxroomnum"
                                 Display="Dynamic" Font-Bold="True" Font-Italic="True" Font-Names="Tahoma" Font-Size="14px"
                                 Operator="DataTypeCheck" Type="Integer"></asp:CompareValidator>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <p class="main_con_p">Add Catagory :</p>
                            </td>
                            <td>
                                <asp:DropDownList ID="DropDownListbookedunbooked" CssClass="tp" runat="server" BackColor="#3333FF" Font-Bold="True" Font-Names="Tahoma" Font-Size="18px" ForeColor="White">
                                    <asp:ListItem Text="Unbooked" Value="1" Enabled="true" Selected="True"></asp:ListItem>
                                    <asp:ListItem Text="Booked" Value="2" Enabled="true" Selected="False"></asp:ListItem>
                                </asp:DropDownList>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Button ID="Buttonadd" CssClass="main_con_p" runat="server" Text="Add" BackColor="#FFFF99" ForeColor="#003300" Width="70px" OnClick="Buttonadd_Click" />
                            </td>
                            <td>
                                <asp:Button ID="Buttonfinish" CssClass="main_con_p" runat="server" Text="Finish" BackColor="White" ForeColor="#003300" />
                            </td>
                        </tr>
                    </table>
                </div>
            </div>
        </div>
    </form>
</body>
</html>
