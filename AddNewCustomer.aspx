﻿<%@ Page Language="VB" AutoEventWireup="false" CodeFile="AddNewCustomer.aspx.vb" Inherits="AddNewCustomer" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<<<<<<< HEAD

=======
>>>>>>> 62cb6a593f9528b5881a53bb61d4e6eaf7868189
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <link href="Styles/Site.css" rel="stylesheet" type="text/css" />
    <title></title>
</head>
<body class="main_body">
 <form id="form1" runat="server">


<div class="main_global">

<!--top-->
	<div class="top">
    <div class="top_inner">
		
         
		<div class="log">

			 <asp:LoginStatus ID="LoginStatus1" runat="server" />
        </div>
		
		
	       <asp:LoginView ID="LoginView1" runat="server">
                <AnonymousTemplate>
                   <span style="font-size: 15px;"> You are not logged in</span>
                   <div class="log"><a href="Register.aspx">Register</a>
        </div>
                </AnonymousTemplate>
                <LoggedInTemplate>
                   <span style="font-size: 15px;"> Welcome,<asp:LoginName ID="LoginName1" runat="server" />
                </span></LoggedInTemplate>
            </asp:LoginView>
          
	</div>
    </div>
<!--/top-->

<div class="container">
<!--header-->
 <div class="cl"></div>
	<div class="header">
		
		<ul class="main_menu">
<<<<<<< HEAD
			<li class="active"><a href="Home.aspx">Home</a>
            <div class="sub_menu">
					<ul>
						<li><a href="ErrorHandler.aspx">error page test</a></li>
						
					</ul>
				</div>
            </li>
=======
			<li class="active"><a href="Home.aspx">Home</a></li>
>>>>>>> 62cb6a593f9528b5881a53bb61d4e6eaf7868189
			
			<li><a href="Products.aspx">Products</a>
            <div class="sub_menu">
					<ul>
<<<<<<< HEAD
						<li><a href='Stockxml.aspx'">Current Stock (xml)</a></li>
                        <li><a href='EditStock.aspx'">Manage Stock Items(xml)</a></li>
=======
						<li><a href="#">Lorem ipsum dolor sit ame</a></li>
>>>>>>> 62cb6a593f9528b5881a53bb61d4e6eaf7868189
						
					</ul>
				</div>
            </li>
            <li><a href="AllSuppliers.aspx">Suppliers</a>
            <div class="sub_menu">
					<ul>
<<<<<<< HEAD
						<li><a href="EditSuppliers.aspx">Manage Supplisers</a></li>
=======
						<li><a href="dataentry.aspx">Edit Supplisers</a></li>
>>>>>>> 62cb6a593f9528b5881a53bb61d4e6eaf7868189
						
					</ul>
				</div>
            </li>
<<<<<<< HEAD
			<li><a href="AddNewCustomer.aspx">Customers</a>
            <div class="sub_menu">
					<ul>
						<li><a href="Member pages/CustomersOrders.aspx">Customers' Orders</a></li>
                        <li><a href="TopClients.aspx">Our top clients</a></li>
                        
=======
			<li><a href="Home.aspx">Customers</a>
            <div class="sub_menu">
					<ul>
						<li><a href="../CustomersOrders.aspx">Customers' Orders</a></li>
>>>>>>> 62cb6a593f9528b5881a53bb61d4e6eaf7868189
						
					</ul>
				</div>
                </li>
		</ul>
	</div>
    
<!--/header-->

<!--content-->


	<div class="main_content">
		<div class="content">
        
        <center style="padding-top: 40px;"> <table style="width: 60%; ">
        <h2>Add new Customer:</h2>
        <tr>
            <td class="style2">
                <asp:Label ID="Label1" runat="server" Text="Customer ID"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="customerid" runat="server" style="margin-left: 0px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style2">
                <asp:Label ID="Label2" runat="server" Text="Company Name"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="companyname" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style2">
                <asp:Label ID="Label3" runat="server" Text="Contact Name"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="contactname" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style2">
                <asp:Label ID="Label4" runat="server" Text="Contact Title"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="contacttitle" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style2">
                <asp:Label ID="Label5" runat="server" Text="Address"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="address" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style2">
                <asp:Label ID="Label6" runat="server" Text="City"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="city" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style2">
                <asp:Label ID="Label7" runat="server" Text="Region"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="region" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style2">
                <asp:Label ID="Label8" runat="server" Text="Postal Code"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="postalcode" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style2">
                <asp:Label ID="Label9" runat="server" Text="Country"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="country" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style2">
               <asp:Label ID="Label10" runat="server" Text="Phone"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="phone" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style2">
                <asp:Button ID="Button1" runat="server" Text="Add new Customer" 
                    PostBackUrl="~/NewCustomerDetails.aspx" Width="120px" />
            </td>
            <td>
                &nbsp;</td>
        </tr>
        </table></center>

        </div>
        </div>
        <div class="cl"></div>
       </div>
<!--/content-->

</div>


<!--footer-->
<div class="footer">

	<div class="footer_menu">
<<<<<<< HEAD
		<a href="Home.aspx">Home</a>       <a href="Products.aspx">Products</a>       <a href="AllSuppliers.aspx">Suppliers</a> <a href="AddNewCustomer.aspx">Customers</a>
=======
		<a href="#">Home</a>       <a href="#">About</a>       <a href="#">FAQ</a>       <a href="#">Contacts</a>
>>>>>>> 62cb6a593f9528b5881a53bb61d4e6eaf7868189
	<div class="copy">
		&copy; NCI 2013 &nbsp;&nbsp; 
	</div>
    </div>
	
</div>
<!--/footer-->


<div class="cl"></div>
    </form>
    

</body>
</html>
