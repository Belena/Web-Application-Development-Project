<%@ Page Language="VB" AutoEventWireup="true" CodeFile="AllSuppliers.aspx.vb"
    Inherits="AllSuppliers" %>


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
<!--header-->
 <div class="cl"></div>
	<div class="header">
		
		<ul class="main_menu">
			<li class="active"><a href="Home.aspx">Home</a></li>
			
			<li><a href="Products.aspx">Products</a>
            <div class="sub_menu">
					<ul>
						<li><a href="#">Lorem ipsum dolor sit ame</a></li>
						<li><a href="#">Lorem ipsum dolor sit ame</a></li>
						<li><a href="#">Lorem ipsum dolor sit ame</a></li>
						<li><a href="#">Lorem ipsum dolor sit ame</a></li>
					</ul>
				</div>
            </li>
            <li><a href="AllSuppliers.aspx">Suppliers</a>
            <div class="sub_menu">
					<ul>
						<li><a href="dataentry.aspx">Edit Supplisers</a></li>
						
					</ul>
				</div>
            </li>
			<li><a href="Home.aspx">Customers</a></li>
            
		</ul>
	</div>
    
<!--/header-->

<!--content-->


<<<<<<< HEAD
=======
<<<<<<< HEAD
>>>>>>> 5babef656c925d51345aa95983e850e9bbaed808
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
        </div>
        </div>
        <div class="cl"></div>
       </div>
<!--/content-->

</div>


<!--footer-->
<div class="footer">

	<div class="footer_menu">
		
		<a href="#">Home</a>       <a href="#">About</a>       <a href="#">FAQ</a>       <a href="#">Contacts</a>
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
