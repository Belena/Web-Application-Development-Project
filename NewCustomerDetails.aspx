<%@ Page Language="VB" AutoEventWireup="false" CodeFile="NewCustomerDetails.aspx.vb" Inherits="NewCustomerDetails" %>
<%@ PreviousPageType VirtualPath="~/AddNewCustomer.aspx" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<<<<<<< HEAD

=======
>>>>>>> 62cb6a593f9528b5881a53bb61d4e6eaf7868189
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <link href="Styles/Site.css" rel="stylesheet" type="text/css" />
    <title></title>
<<<<<<< HEAD
=======
    <style type="text/css">
        .style1
        {
            width: 338px;
        }
        .style2
        {
            width: 137px;
        }
    </style>
>>>>>>> 62cb6a593f9528b5881a53bb61d4e6eaf7868189
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
        
<<<<<<< HEAD
       <center><table style="width: 230px; padding-top:40px; margin:auto;">
=======
<<<<<<< HEAD
       <center><table style="width: 230px; padding-top:40px; margin:auto;">
=======
<<<<<<< HEAD
       <center><table style="width: 230px; padding-top:40px; margin:auto;">
=======
<<<<<<< HEAD
       <center><table style="width: 230px; padding-top:40px; margin:auto;">
=======
       <center><table style="width: 60%; padding-top:40px;">
>>>>>>> 7a80d1e6388f2690c19cccf12367c12b95c63a43
>>>>>>> 5babef656c925d51345aa95983e850e9bbaed808
>>>>>>> 003ea30751263061869ca035e88690bf81da34c2
>>>>>>> 62cb6a593f9528b5881a53bb61d4e6eaf7868189
        <tr>
            <td>
                <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
            </td>
            <td class="style2">
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
            </td>
            <td class="style2">
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
            </td>
            <td class="style2">
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label4" runat="server" Text="Label"></asp:Label>
            </td>
            <td class="style2">
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label5" runat="server" Text="Label"></asp:Label>
            </td>
            <td class="style2">
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label6" runat="server" Text="Label"></asp:Label>
            </td>
            <td class="style2">
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label7" runat="server" Text="Label"></asp:Label>
            </td>
            <td class="style2">
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label8" runat="server" Text="Label"></asp:Label>
            </td>
            <td class="style2">
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label9" runat="server" Text="Label"></asp:Label>
            </td>
            <td class="style2">
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label10" runat="server" Text="Label"></asp:Label>
            </td>
            <td class="style2">
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td class="style2">
                &nbsp;</td>
        </tr>
    </table>
    </center>

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
