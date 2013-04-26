<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Home.aspx.vb" Inherits="Home" %>
<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="asp" %>

<%@ Import Namespace="System.Data" %>
<%@ Import Namespace="System.Data.OleDb" %>

<script language="VB" runat="server">

  Sub Page_Load(Sender As Object, E As EventArgs)

    Dim strConnection As String
    Dim strSQL        As String
    Dim objDataSet    As New DataSet()
    Dim objConnection As OleDbConnection
    Dim objAdapter    As OleDbDataAdapter

    ' set the connection and query details
        strConnection = "Provider=Microsoft.Jet.OLEDB.4.0; " & _
                        "Data Source=|DataDirectory|Northwind.mdb;"
        strSQL = "SELECT ProductName, CategoryID, SupplierId, UnitsInStock, UnitPrice FROM Products;"

    ' open the connection and set the command
    objConnection = New OledbConnection(strConnection)
    objAdapter = New OledbDataAdapter(strSQL, objConnection)

    ' fill the dataset with the data
        objAdapter.Fill(objDataSet, "Products")
        ' create an XML file called Stock.xml and fill this with our data
        objDataSet.WriteXml(Server.MapPath("Stock.xml"))
    ' add a link to our web page to the XML file created
        Response.Write("<a href='Stock.xml'>View XML file</a>")

  End Sub

</script>
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
						<li><a href='Stock.xml'">Current Stock (xml)</a></li>
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
			<li><a href="">Customers</a>
            <div class="sub_menu">
					<ul>
						<li><a href="Member pages/CustomersOrders.aspx">Customers' Orders</a></li>
                        <li><a href="AddNewCustomer.aspx">Add new Customer</a></li>
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

       <div>
<<<<<<< HEAD

=======
>>>>>>> 62cb6a593f9528b5881a53bb61d4e6eaf7868189
    
        <asp:Xml ID="Xml1" runat="server" DocumentSource="~/Stock.xml" 
            TransformSource="~/XSLTFile.xslt"></asp:Xml>
        <br />
    
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

