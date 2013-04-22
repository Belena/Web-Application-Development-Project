<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Products.aspx.vb" Inherits="Products" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="asp" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="Styles/Site.css" rel="stylesheet" type="text/css" />
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
			<li class="active"><a href="Home.aspx">Home</a></li>
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
			<li><a href="Home.aspx">Contacts</a></li>
            
		</ul>
	</div>
    
<!--/header-->

<!--content-->


	<div class="main_content">
		<div class="content">
        
        <center> <h1>Products:</h1> </center>
    
        <asp:ScriptManager ID="ScriptManager1" runat="server">
        </asp:ScriptManager>
   
    <p>
       
        <asp:TextBox ID="TextBoxSearch" runat="server"></asp:TextBox>
       
         <asp:Label ID="Label1" runat="server" 
            Text="Search for products by name (or ID)"></asp:Label>
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

   <center><asp:Label ID="LabelStatusText" runat="server" Text="All Products"></asp:Label></center>
    <br />
    Select a product if you would like to edit or delete it

    <br />
    <div style="width: 100%; font-size: 14px; padding: 0 0 40px 0;">
    <hr />
        <asp:GridView 
        ID="ProductsGridView" 
        runat="server" 
        AllowPaging="True" 
        AllowSorting="True" 
        AutoGenerateColumns="False" 
        DataKeyNames="ProductID" 
        DataSourceID="ProductDataSourceRepeater" 
        CellPadding="2" 
        ForeColor="Black" 
        GridLines="Vertical" 
        BackColor="White" 
        BorderColor="#DEDFDE" 
        BorderStyle="None" 
        BorderWidth="1px" 
        Width="175px">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="ProductID" HeaderText="ProductID" 
                   SortExpression="ProductID" InsertVisible="False" ReadOnly="True" />
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
            <FooterStyle BackColor="#CCCC99" />
            <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
            <RowStyle BackColor="#F7F7DE" />
            <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#FBFBF2" />
            <SortedAscendingHeaderStyle BackColor="#848384" />
            <SortedDescendingCellStyle BackColor="#EAEAD3" />
            <SortedDescendingHeaderStyle BackColor="#575357" />

           
        </asp:GridView>
       <hr />
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
