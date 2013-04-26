﻿<%@ Page Language="VB" AutoEventWireup="false" CodeFile="login.aspx.vb" Inherits="Login" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="../Styles/Site.css" rel="stylesheet" type="text/css" />
</head>
<body>
   
   <div class="main_global">
    <!--top-->
	<div class="top"><div class="top_inner">
		<div class="log"><a href="#">Register</a></div>
		<div class="log">
			<a href="Login.aspx">Log In </a>
		</div>
        <div class="cl"></div>
		<span class="website"></span>
	</div></div>
<!--/top-->
<div class="container">
<!--header-->
	<div class="header">
		
		<ul class="main_menu">
			<li class="active"><a href="../Home.aspx">Home</a>
            <div class="sub_menu">
					<ul>
						<li><a href="../ErrorHandler.aspx">error page test</a></li>
						
					</ul>
				</div>
            </li>
			
			<li><a href="../Products.aspx">Products</a>
            <div class="sub_menu">
					<ul>
						<li><a href='../Stockxml.aspx'">Current Stock (xml)</a></li>
                        <li><a href='../EditStock.aspx'">Manage Stock Items(xml)</a></li>
						
					</ul>
				</div>
            </li>
            <li><a href="../AllSuppliers.aspx">Suppliers</a>
            <div class="sub_menu">
					<ul>
						<li><a href="../EditSuppliers.aspx">Manage Supplisers</a></li>
						
					</ul>
				</div>
            </li>
			<li><a href="../AddNewCustomer.aspx">Customers</a>
            <div class="sub_menu">
					<ul>
						<li><a href="../Member pages/CustomersOrders.aspx">Customers' Orders</a></li>
                        <li><a href="../TopClients.aspx">Our top clients</a></li>
                        
						
					</ul>
				</div>
                </li>
		</ul>
	</div>
<!--/header-->

<!--content-->
	<div class="main_content">
    <div class="content">

		<form id="form1" runat="server">
    <center><div style="height: 181px; width: 292px">
    
    &nbsp;
&nbsp;
        <asp:Login ID="Login1" runat="server" Width="296px">
        </asp:Login>
        <asp:ValidationSummary ID="ValidationSummary1" runat="server" 
            ValidationGroup="Login1" Width="295px" />
    
    </div>
    </center>
    </form>
    </div>
    </div>
<!--/content-->
<div class="cl"></div>
</div>


<!--footer-->
<div class="footer">

	<div class="footer_menu">
		<a href="Home.aspx">Home</a>       <a href="Products.aspx">Products</a>       <a href="AllSuppliers.aspx">Suppliers</a> <a href="AddNewCustomer.aspx">Customers</a>
	<div class="copy">
		&copy; NCI 2013 &nbsp;&nbsp; 
	</div>
    </div>
	
</div>
</div>
<!--/footer-->

</body>

</html>
