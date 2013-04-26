<%@ Page Language="VB" AutoEventWireup="false" CodeFile="CustomersOrders.aspx.vb" Inherits="CustomersOrders" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<<<<<<< HEAD

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <link href="../Styles/Site.css" rel="stylesheet" type="text/css" />
    <title></title>
=======
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="../Styles/Site.css" rel="stylesheet" type="text/css" />
    
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
<<<<<<< HEAD
                   <div class="log"><a href="../Register.aspx">Register</a>
=======
                   <div class="log"><a href="Register.aspx">Register</a>
>>>>>>> 62cb6a593f9528b5881a53bb61d4e6eaf7868189
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
						<li><a href="CustomersOrders.aspx">Customers' Orders</a></li>
                        <li><a href="../TopClients.aspx">Our top clients</a></li>
                        
						
					</ul>
				</div>
                </li>
=======
			<li class="active"><a href="../Home.aspx">Home</a></li>
			<li><a href="Home.aspx">About </a>
            <div class="sub_menu">
					<ul>
						<li><a href="#">Lorem ipsum dolor sit ame</a></li>
						<li><a href="#">Lorem ipsum dolor sit ame</a></li>
						<li><a href="#">Lorem ipsum dolor sit ame</a></li>
						<li><a href="#">Lorem ipsum dolor sit ame</a></li>
					</ul>
				</div>
            </li>
			<li><a href="#">Products</a>
            <div class="sub_menu">
					<ul>
						<li><a href="#">Lorem ipsum dolor sit ame</a></li>
						<li><a href="#">Lorem ipsum dolor sit ame</a></li>
						<li><a href="#">Lorem ipsum dolor sit ame</a></li>
						<li><a href="#">Lorem ipsum dolor sit ame</a></li>
					</ul>
				</div>
            </li>
			<li><a href="../Home.aspx">Contacts</a></li>
            
>>>>>>> 62cb6a593f9528b5881a53bb61d4e6eaf7868189
		</ul>
	</div>
    
<!--/header-->

<!--content-->


	<div class="main_content">
		<div class="content">
        <center><h1>All Orders:</h1>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" 
            SelectCommand="SELECT Orders.OrderID, Orders.ShipAddress, Customers.CompanyName, Orders.OrderDate, Orders.ShippedDate, Customers.CustomerID, Customers.Phone FROM (Orders INNER JOIN Customers ON Orders.CustomerID = Customers.CustomerID)">
        
        </asp:SqlDataSource>
            
        <div style="width: 100%; font-size: 15px;">
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
            AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="OrderID,ShipAddress,CompanyName,OrderDate,ShippedDate,CustomerID,Phone" 
            DataSourceID="SqlDataSource1" Height="312px" Width="100%">
            <Columns>
                <asp:CommandField ShowSelectButton="True" />
                <asp:BoundField DataField="OrderID" HeaderText="OrderID" InsertVisible="False" 
                    SortExpression="OrderID" />
                <asp:BoundField DataField="ShipAddress" HeaderText="ShipAddress" 
                    SortExpression="ShipAddress" />
                <asp:BoundField DataField="CompanyName" HeaderText="CompanyName" 
                    SortExpression="CompanyName" />
                <asp:BoundField DataField="OrderDate" HeaderText="OrderDate" 
                    SortExpression="OrderDate" />
                <asp:BoundField DataField="ShippedDate" HeaderText="ShippedDate" 
                    SortExpression="ShippedDate" />
                <asp:BoundField DataField="CustomerID" HeaderText="CustomerID" 
                    SortExpression="CustomerID" />
                <asp:BoundField DataField="Phone" HeaderText="Phone" SortExpression="Phone" />
            </Columns>
        </asp:GridView>
        </div>
        </center>
        
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
        ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" 
        
        
    SelectCommand="SELECT [Order Details].OrderID, [Order Details].ProductID, [Order Details].UnitPrice, [Order Details].Quantity, [Order Details].Discount, Products.ProductName FROM ([Order Details] INNER JOIN Products ON [Order Details].ProductID = Products.ProductID) WHERE ([Order Details].OrderID = ?)">
        <SelectParameters>
            <asp:ControlParameter ControlID="GridView1" Name="OrderID" 
                PropertyName="SelectedValue" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
    <center><h1>See order details:</h1>
    <div style="width: 100%; font-size: 15px; padding: 0 0 50px 0;">
    <asp:GridView ID="GridView2" runat="server" AllowSorting="True" 
        AutoGenerateColumns="False" 
        DataSourceID="SqlDataSource2"
        Width="70%">
        <Columns>
<<<<<<< HEAD
            <asp:CommandField ShowSelectButton="True" />
=======
<<<<<<< HEAD
            <asp:CommandField ShowSelectButton="True" />
=======
<<<<<<< HEAD
            <asp:CommandField ShowSelectButton="True" />
=======
<<<<<<< HEAD
            <asp:CommandField ShowSelectButton="True" />
=======
<<<<<<< HEAD
            <asp:CommandField ShowSelectButton="True" />
=======
>>>>>>> 876da39e625ef8e0edfffd5d0267e67ac9561862
>>>>>>> 7a80d1e6388f2690c19cccf12367c12b95c63a43
>>>>>>> 5babef656c925d51345aa95983e850e9bbaed808
>>>>>>> 003ea30751263061869ca035e88690bf81da34c2
>>>>>>> 62cb6a593f9528b5881a53bb61d4e6eaf7868189
            <asp:BoundField DataField="OrderID" HeaderText="OrderID" 
                SortExpression="OrderID" />
            <asp:BoundField DataField="ProductID" HeaderText="ProductID" 
                SortExpression="ProductID" />
            <asp:BoundField DataField="UnitPrice" HeaderText="UnitPrice" 
                SortExpression="UnitPrice" />
            <asp:BoundField DataField="Quantity" HeaderText="Quantity" 
                SortExpression="Quantity" />
            <asp:BoundField DataField="Discount" HeaderText="Discount" 
                SortExpression="Discount" />
            <asp:BoundField DataField="ProductName" HeaderText="ProductName" 
                SortExpression="ProductName" />
        </Columns>
    </asp:GridView>
    </div>
    </center>
    <br />

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
