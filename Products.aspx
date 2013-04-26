<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Products.aspx.vb" Inherits="Products" %>

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
			<li class="active"><a href="Home.aspx">Home</a>
            <div class="sub_menu">
					<ul>
						<li><a href="ErrorHandler.aspx">error page test</a></li>
						
					</ul>
				</div>
            </li>
			
			<li><a href="Products.aspx">Products</a>
            <div class="sub_menu">
					<ul>
						<li><a href='Stockxml.aspx'">Current Stock (xml)</a></li>
                        <li><a href='EditStock.aspx'">Manage Stock Items(xml)</a></li>
						
					</ul>
				</div>
            </li>
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
                        
						
					</ul>
				</div>
                </li>
		</ul>
	</div>
    
<!--/header-->

<!--content-->


	<div class="main_content">
		<div class="content">
        
        <asp:ScriptManager ID="ScriptManager1" runat="server">
        </asp:ScriptManager>
   
    <p style="padding-top: 20px;">
       
        <asp:TextBox ID="TextBoxSearch" runat="server"></asp:TextBox>
       
         <asp:Label ID="Label1" runat="server" 
            Text="Search for product by name (or ID)"></asp:Label>
        <br />

        <asp:AutoCompleteExtender ServiceMethod="SearchProducts" MinimumPrefixLength="2"
            CompletionInterval="100" EnableCaching="false" CompletionSetCount="10" TargetControlID="TextBoxSearch"
            ID="AutoCompleteExtender1" runat="server" FirstRowSelected = "false" ></asp:AutoCompleteExtender>

        <asp:Button ID="btnProductSubmit" runat="server" Text="Submit" />
    </p>

     <asp:AccessDataSource ID="ProductDataSourceRepeater" runat="server" 
        DataFile="~/App_Data/Northwind.mdb" SelectCommand="SELECT * FROM [Products]">
    </asp:AccessDataSource>

        <asp:Repeater ID="productDataRepeater" runat="server" 
        DataSourceID="ProductDataSourceRepeater">
    </asp:Repeater>

   <asp:AccessDataSource ID="searchProductDataSource" runat="server" 
            DataFile="~/App_Data/Northwind.mdb" 
            
            
        
    
        SelectCommand="SELECT ProductID, ProductName, CategoryID, QuantityPerUnit, UnitPrice, UnitsInStock, UnitsOnOrder, ReorderLevel, Discontinued, SupplierID FROM Products WHERE (ProductName LIKE '%' + ? + '%') OR (ProductID LIKE '%' + ? + '%')">
            <SelectParameters>
                <asp:ControlParameter ControlID="TextBoxSearch" Name="ProductName" 
                    PropertyName="Text" Type="String" />
                <asp:ControlParameter ControlID="TextBoxSearch" Name="ProductID" 
                    PropertyName="Text" Type="String" />
            </SelectParameters>
        </asp:AccessDataSource>

   <center><asp:Label ID="LabelStatusText" runat="server" Text="All Products" 
           Font-Bold="True" Font-Size="X-Large"></asp:Label>
            <asp:AccessDataSource ID="AccessDataSource1" runat="server" 
                DataFile="~/App_Data/Northwind.mdb" 
                DeleteCommand="DELETE FROM [Products] WHERE [ProductID] = ?" 
                InsertCommand="INSERT INTO [Products] ([ProductID], [ProductName], [SupplierID], [CategoryID], [QuantityPerUnit], [UnitPrice], [UnitsInStock], [UnitsOnOrder], [ReorderLevel], [Discontinued]) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?)" 
                SelectCommand="SELECT * FROM [Products]" 
                UpdateCommand="UPDATE [Products] SET [ProductName] = ?, [SupplierID] = ?, [CategoryID] = ?, [QuantityPerUnit] = ?, [UnitPrice] = ?, [UnitsInStock] = ?, [UnitsOnOrder] = ?, [ReorderLevel] = ?, [Discontinued] = ? WHERE [ProductID] = ?">
                <DeleteParameters>
                    <asp:Parameter Name="ProductID" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="ProductID" Type="Int32" />
                    <asp:Parameter Name="ProductName" Type="String" />
                    <asp:Parameter Name="SupplierID" Type="Int32" />
                    <asp:Parameter Name="CategoryID" Type="Int32" />
                    <asp:Parameter Name="QuantityPerUnit" Type="String" />
                    <asp:Parameter Name="UnitPrice" Type="Decimal" />
                    <asp:Parameter Name="UnitsInStock" Type="Int16" />
                    <asp:Parameter Name="UnitsOnOrder" Type="Int16" />
                    <asp:Parameter Name="ReorderLevel" Type="Int16" />
                    <asp:Parameter Name="Discontinued" Type="Boolean" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="ProductName" Type="String" />
                    <asp:Parameter Name="SupplierID" Type="Int32" />
                    <asp:Parameter Name="CategoryID" Type="Int32" />
                    <asp:Parameter Name="QuantityPerUnit" Type="String" />
                    <asp:Parameter Name="UnitPrice" Type="Decimal" />
                    <asp:Parameter Name="UnitsInStock" Type="Int16" />
                    <asp:Parameter Name="UnitsOnOrder" Type="Int16" />
                    <asp:Parameter Name="ReorderLevel" Type="Int16" />
                    <asp:Parameter Name="Discontinued" Type="Boolean" />
                    <asp:Parameter Name="ProductID" Type="Int32" />
                </UpdateParameters>
            </asp:AccessDataSource>

            </center>

   
   <p>Select a product if you would like to edit or delete it</p> 


    <div style="width:100%; float:left;height:400px; overflow:auto; font-size: 17px; padding: 0 0 30px 0;border-width: 1px;
border-collapse: collapse;
border-color: #636363;
font-size: 17px;
line-height: 1.7;
color: #000;
font-family: Arial, Tahoma, sans-serif;">
    
        <asp:GridView 
        ID="ProductsGridView" 
        runat="server" 
        AllowPaging="True" 
        AllowSorting="True" 
        AutoGenerateColumns="False" 
        DataKeyNames="ProductID" 
        DataSourceID="AccessDataSource1" 
        CellPadding="2" 
        
         
        
        BorderColor="" 
        
        BorderWidth="1px" 
        Width="175px">
            
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" 
                    ShowSelectButton="True" />
                <asp:BoundField DataField="ProductID" HeaderText="ProductID" 
                   SortExpression="ProductID" InsertVisible="True" ReadOnly="False" />
                <asp:BoundField DataField="ProductName" HeaderText="ProductName" 
                    SortExpression="ProductName" />
                <asp:BoundField DataField="SupplierID" HeaderText="SupplierID" 
                    SortExpression="SupplierID" />
                <asp:BoundField DataField="CategoryID" HeaderText="CategoryID" 
                    SortExpression="CategoryID" />
                <asp:BoundField DataField="QuantityPerUnit" HeaderText="QuantityPerUnit" 
                    SortExpression="QuantityPerUnit" />
                <asp:BoundField DataField="UnitPrice" HeaderText="UnitPrice" SortExpression="UnitPrice" />
                <asp:BoundField DataField="UnitsInStock" HeaderText="UnitsInStock" 
                    SortExpression="UnitsInStock" />
                <asp:BoundField DataField="UnitsOnOrder" HeaderText="UnitsOnOrder" 
                    SortExpression="UnitsOnOrder" />
                <asp:BoundField DataField="ReorderLevel" HeaderText="ReorderLevel" 
                    SortExpression="ReorderLevel" />
                <asp:CheckBoxField DataField="Discontinued" HeaderText="Discontinued" 
                    SortExpression="Discontinued" />
            </Columns>
            <FooterStyle BackColor="" />
            <HeaderStyle BackColor=""/>
            <PagerStyle BackColor="" ForeColor="Black" HorizontalAlign="Center" />
            <RowStyle BackColor="" HorizontalAlign="Center"/>
            <SelectedRowStyle BackColor="#FFD685" Font-Bold="True" />
            

           
        </asp:GridView>
      
        </div>
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
		<a href="Home.aspx">Home</a>       <a href="Products.aspx">Products</a>       <a href="AllSuppliers.aspx">Suppliers</a> <a href="AddNewCustomer.aspx">Customers</a>
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
