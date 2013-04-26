<%@ Page Language="VB" AutoEventWireup="true" CodeFile="AllSuppliers.aspx.vb"
    Inherits="AllSuppliers" %>


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

<<<<<<< HEAD
<div class="container">
=======
<<<<<<< HEAD
<div class="container">
=======
<<<<<<< HEAD
<div class="container">
=======
<<<<<<< HEAD
<div class="container">
=======
<<<<<<< HEAD
<div class="container" style="width: 100%;">
=======
<div class="container">
>>>>>>> 876da39e625ef8e0edfffd5d0267e67ac9561862
>>>>>>> 7a80d1e6388f2690c19cccf12367c12b95c63a43
>>>>>>> 5babef656c925d51345aa95983e850e9bbaed808
>>>>>>> 003ea30751263061869ca035e88690bf81da34c2
>>>>>>> 62cb6a593f9528b5881a53bb61d4e6eaf7868189
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
						<li><a href="#">Lorem ipsum dolor sit ame</a></li>
						<li><a href="#">Lorem ipsum dolor sit ame</a></li>
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
                        
						
					</ul>
				</div>
                </li>
=======
			<li><a href="Home.aspx">Customers</a></li>
            
>>>>>>> 62cb6a593f9528b5881a53bb61d4e6eaf7868189
		</ul>
	</div>
    
<!--/header-->

<!--content-->


<<<<<<< HEAD
=======
<<<<<<< HEAD
=======
<<<<<<< HEAD
=======
<<<<<<< HEAD
>>>>>>> 5babef656c925d51345aa95983e850e9bbaed808
>>>>>>> 003ea30751263061869ca035e88690bf81da34c2
>>>>>>> 62cb6a593f9528b5881a53bb61d4e6eaf7868189
	<div class="main_content">
		<div class="content">

        <center><h2>All Suppliers:</h2></center>
        <div style="width:100%; float:left;height:550px; overflow:auto;">
        
        <asp:GridView ID="GridView1" runat="server" CssClass="DataWebControlStyle">
               <HeaderStyle CssClass="HeaderStyle" />
               <AlternatingRowStyle CssClass="AlternatingRowStyle" />
            </asp:GridView>

        </div>
<<<<<<< HEAD
=======
<<<<<<< HEAD
=======
<<<<<<< HEAD
=======
=======
<<<<<<< HEAD
	<div class="main_content" style="background: none;">
		<div class="content">
        
        <asp:GridView ID="GridView1" runat="server" Width="100%">
=======
	<div class="main_content">
		<div class="content">
        
        <asp:GridView ID="GridView1" runat="server" Width="753px">
>>>>>>> 876da39e625ef8e0edfffd5d0267e67ac9561862
        </asp:GridView>


>>>>>>> 7a80d1e6388f2690c19cccf12367c12b95c63a43
>>>>>>> 5babef656c925d51345aa95983e850e9bbaed808
>>>>>>> 003ea30751263061869ca035e88690bf81da34c2
>>>>>>> 62cb6a593f9528b5881a53bb61d4e6eaf7868189
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
