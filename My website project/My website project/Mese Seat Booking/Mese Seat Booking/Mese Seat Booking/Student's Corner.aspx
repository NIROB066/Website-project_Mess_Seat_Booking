<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Student's Corner.aspx.cs" Inherits="Student_s_Corner" %>

<%@ Register Src="~/Mese Seat Booking/MainControl.ascx" TagPrefix="uc1" TagName="MainControl" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <title>Student Corner</title>
    <link href="Generic_Design.css" rel="stylesheet" type="text/css" />
    <link href="../Generic_Design.css" rel="stylesheet" type="text/css" />
</head>
<body id="main">
    <form  runat="server">
       <div id="big_wrapper">
        <uc1:MainControl runat="server" ID="MainControl" />
           <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:RegistrationConnectionString %>" SelectCommand="SELECT * FROM [Table1]"></asp:SqlDataSource>
           <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="Id" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None">
               <AlternatingRowStyle BackColor="White" />
               <Columns>
                   <asp:BoundField DataField="Id" HeaderText="Id" ReadOnly="True" SortExpression="Id" />
                   <asp:BoundField DataField="Firstname" HeaderText="Firstname" SortExpression="Firstname" />
                   <asp:BoundField DataField="Username" HeaderText="Username" SortExpression="Username" />
                   <asp:BoundField DataField="Address" HeaderText="Address" SortExpression="Address" />
                   <asp:BoundField DataField="Phone" HeaderText="Phone" SortExpression="Phone" />
                   <asp:BoundField DataField="Password" HeaderText="Password" SortExpression="Password" />
                   <asp:BoundField DataField="Gender" HeaderText="Gender" SortExpression="Gender" />
                   <asp:BoundField DataField="Usertype" HeaderText="Usertype" SortExpression="Usertype" />
                   <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
               </Columns>
               <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
               <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
               <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
               <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
               <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
               <SortedAscendingCellStyle BackColor="#FDF5AC" />
               <SortedAscendingHeaderStyle BackColor="#4D0000" />
               <SortedDescendingCellStyle BackColor="#FCF6C0" />
               <SortedDescendingHeaderStyle BackColor="#820000" />
           </asp:GridView>
           <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:RegistrationConnectionString %>" SelectCommand="SELECT * FROM [Table]"></asp:SqlDataSource>
           <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="White" BorderStyle="Ridge" BorderWidth="2px" CellPadding="3" CellSpacing="1" DataKeyNames="userid" DataSourceID="SqlDataSource2" GridLines="None">
               <Columns>
                   <asp:BoundField DataField="userid" HeaderText="userid" ReadOnly="True" SortExpression="userid" />
                   <asp:BoundField DataField="mesename" HeaderText="mesename" SortExpression="mesename" />
                   <asp:BoundField DataField="meselocation" HeaderText="meselocation" SortExpression="meselocation" />
                   <asp:BoundField DataField="age" HeaderText="age" SortExpression="age" />
                   <asp:BoundField DataField="profession" HeaderText="profession" SortExpression="profession" />
               </Columns>
               <FooterStyle BackColor="#C6C3C6" ForeColor="Black" />
               <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#E7E7FF" />
               <PagerStyle BackColor="#C6C3C6" ForeColor="Black" HorizontalAlign="Right" />
               <RowStyle BackColor="#DEDFDE" ForeColor="Black" />
               <SelectedRowStyle BackColor="#9471DE" Font-Bold="True" ForeColor="White" />
               <SortedAscendingCellStyle BackColor="#F1F1F1" />
               <SortedAscendingHeaderStyle BackColor="#594B9C" />
               <SortedDescendingCellStyle BackColor="#CAC9C9" />
               <SortedDescendingHeaderStyle BackColor="#33276A" />
           </asp:GridView>
           <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:RegistrationConnectionString %>" SelectCommand="SELECT * FROM [rooms]"></asp:SqlDataSource>
       </div>

    </form>
</body>
</html>
