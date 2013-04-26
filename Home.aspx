<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Home.aspx.vb" Inherits="Home" %>
<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="asp" %>


<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

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
=======
			<li class="active"><a href="Home.aspx">Home</a></li>
			
			<li><a href="Products.aspx">Products</a>
            <div class="sub_menu">
					<ul>
<<<<<<< HEAD
						<li><a href='Stockxml.aspx'">Current Stock (xml)</a></li>
=======
<<<<<<< HEAD
						<li><a href='Stockxml.aspx'">Current Stock (xml)</a></li>
=======
						<li><a href="#">Lorem ipsum dolor sit ame</a></li>
>>>>>>> 5babef656c925d51345aa95983e850e9bbaed808
>>>>>>> 003ea30751263061869ca035e88690bf81da34c2
>>>>>>> 62cb6a593f9528b5881a53bb61d4e6eaf7868189
						
					</ul>
				</div>
            </li>
<<<<<<< HEAD
			
			<li><a href="Products.aspx">Products</a>
            <div class="sub_menu">
					<ul>
						<li><a href='Stockxml.aspx'">Current Stock (xml)</a></li>
                        <li><a href='EditStock.aspx'">Manage Stock Items(xml)</a></li>
=======
            <li><a href="AllSuppliers.aspx">Suppliers</a>
            <div class="sub_menu">
					<ul>
						<li><a href="dataentry.aspx">Edit Supplisers</a></li>
>>>>>>> 62cb6a593f9528b5881a53bb61d4e6eaf7868189
						
					</ul>
				</div>
            </li>
<<<<<<< HEAD
            <li><a href="AllSuppliers.aspx">Suppliers</a>
            <div class="sub_menu">
					<ul>
						<li><a href="EditSuppliers.aspx">Manage Supplisers</a></li>
						
					</ul>
				</div>
            </li>
			<li><a href="AddNewCustomer.aspx">Customers</a>
            <div class="sub_menu">
					<ul>
						<li><a href="Member pages/CustomersOrders.aspx">Customers' Orders</a></li>
                        <li><a href="TopClients.aspx">Our top clients</a></li>
                        
=======
<<<<<<< HEAD
=======
<<<<<<< HEAD
=======
<<<<<<< HEAD
=======
<<<<<<< HEAD
>>>>>>> 7a80d1e6388f2690c19cccf12367c12b95c63a43
>>>>>>> 5babef656c925d51345aa95983e850e9bbaed808
>>>>>>> 003ea30751263061869ca035e88690bf81da34c2
			<li><a href="">Customers</a>
            <div class="sub_menu">
					<ul>
						<li><a href="Member pages/CustomersOrders.aspx">Customers' Orders</a></li>
                        <li><a href="AddNewCustomer.aspx">Add new Customer</a></li>
<<<<<<< HEAD
                        <li><a href="TopClients.aspx">Our top clients</a></li>
                        
=======
                        
<<<<<<< HEAD
=======
<<<<<<< HEAD
=======
=======
			<li><a href="Home.aspx">Customers</a>
            <div class="sub_menu">
					<ul>
						<li><a href="../CustomersOrders.aspx">Customers' Orders</a></li>
>>>>>>> 876da39e625ef8e0edfffd5d0267e67ac9561862
>>>>>>> 7a80d1e6388f2690c19cccf12367c12b95c63a43
>>>>>>> 5babef656c925d51345aa95983e850e9bbaed808
>>>>>>> 003ea30751263061869ca035e88690bf81da34c2
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
        
<<<<<<< HEAD
         <center><h2>Welcome to Inventory Manager!</h2></center>
=======
         <center><h2>Welcome to Inventory Manager Site!</h2></center>
>>>>>>> 62cb6a593f9528b5881a53bb61d4e6eaf7868189


          <p>An efficient stock management depends upon accurate record 

keeping. Keeping records will save you time – you should know 

the quantity in stock without counting. Proper inventory records 

allow easy handover of the “store” to your colleague if you are 

not at work. They also allow you to observe the pattern of 

consumption</p> 
<h3>Save you Time</h3>
<br />
<<<<<<< HEAD
<div class="imgtimer"><img src="images/penman.jpeg"  alt="timer image"/></div>
=======
<div class="imgtimer"><img src="images/laikradis.jpg"  alt="timer image"/></div>
>>>>>>> 62cb6a593f9528b5881a53bb61d4e6eaf7868189
<div class="hometext">
<p style="padding-top: 0;">Keeping records will protect you. You are protected against 

accusations of theft. You can also keep track of deliveries when 

they arrive, in case of disputes. Keeping records also prevents 

over-stocking and under-stocking. This allows for estimation of 

supplies for a year for budgeting purposes. 

It is important to establish an accounting system that tracks 

items that come in, items that are used, and items that are 

remaining in the stock. Ideally, the number of a certain item 

remaining in the stock should equal the number of the item that 

came in minus the number used.</p>
<p>This inventory tracking and management a huge time-suck for you 
and the people you work with? Bad software makes it hard to do simple tasks, 
collaborate with others, is frustrating to use, and difficult to learn and train 
others to use.
</p>

        
<p>To determine how much to re-order, you must establish the 

proper full stock level. Re-order to reach that level. When 

establishing the quantity of full stock, you should: 

 Consider stock consumed, borrowed, expired, wasted, 

pilferage 

 Never order more than your storage space can hold 

 Never order more supplies than you can use before they 

are expired 

 Consider maximum usage plus minimum stock level </p>
</div>
</div>
        </div>
        <div class="cl"></div>
       </div>

<!--/content-->

</div>


<!--footer-->
<div class="footer">

	<div class="footer_menu">
		<a href="Home.aspx">Home</a>       <a href="Products.aspx">Products</a>       <a href="AllSuppliers.aspx">Suppliers</a>       <a href="AddNewCustomer.aspx">Customers</a>
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
