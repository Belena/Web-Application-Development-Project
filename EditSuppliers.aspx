﻿<%@ Page Language="VB" AutoEventWireup="false" CodeFile="EditSuppliers.aspx.vb" Inherits="dataentry" %>

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
    <div style="padding: 20px 10px">
    <h2>Manage Suppliers (Add new/Edit record/Delete record):</h2>
    <center>
   
        <asp:FormView ID="FormView1" runat="server" AllowPaging="True" 
            DataKeyNames="SupplierID" DataSourceID="ObjectDataSource1" 
             BorderWidth="1px" 
            CellPadding="4" ForeColor="Black" GridLines="Vertical" Width="700px">

            <EditItemTemplate>
                <table>
                <tr>
                <td>SupplierID:</td>
                <td>
                <asp:Label ID="SupplierIDLabel1" runat="server" 
                    Text='<%# Eval("SupplierID") %>' />
               </td>
               </tr>
                <tr>
                <td>
                CompanyName:</td>
                <td><asp:TextBox ID="CompanyNameTextBox" runat="server" 
                    Text='<%# Bind("CompanyName") %>' /></td>
                 </tr>
                <tr>
                <td>ContactName:</td>
                <td><asp:TextBox ID="ContactNameTextBox" runat="server" 
                    Text='<%# Bind("ContactName") %>' /></td>
                     </tr>
                <tr>
                <td>ContactTitle:</td>
                <td><asp:TextBox ID="ContactTitleTextBox" runat="server" 
                    Text='<%# Bind("ContactTitle") %>' /></td>
                 </tr>
                <tr>
                <td> Address:</td>
                <td><asp:TextBox ID="AddressTextBox" runat="server" Text='<%# Bind("Address") %>' />
                </td>
                </tr>
                 <tr>
                <td>City:</td>
                <td><asp:TextBox ID="CityTextBox" runat="server" Text='<%# Bind("City") %>' />
                 </td>
                 </tr>
                 <tr>
                <td>Region:</td>
               <td> <asp:TextBox ID="RegionTextBox" runat="server" Text='<%# Bind("Region") %>' />
                </td>
               
                 <tr>
                <td>PostalCode:</td>
               <td> <asp:TextBox ID="PostalCodeTextBox" runat="server" 
                    Text='<%# Bind("PostalCode") %>' /></td>
                 </tr>
                 <tr>
                <td>Country:</td>
               <td> <asp:TextBox ID="CountryTextBox" runat="server" Text='<%# Bind("Country") %>' />
                 </td></tr>
                 <tr>
               <td>Phone:</td>
               <td> <asp:TextBox ID="PhoneTextBox" runat="server" Text='<%# Bind("Phone") %>' />
                </td>
                 </tr>
                 <tr>
                <td>Fax:</td>
                <td><asp:TextBox ID="FaxTextBox" runat="server" Text='<%# Bind("Fax") %>' />
               </td>
                 </tr>
                 <tr>
                <td>HomePage:</td>
               <td> <asp:TextBox ID="HomePageTextBox" runat="server" 
                    Text='<%# Bind("HomePage") %>' /></td>
                
                 </tr>
                 <tr>
               <td><asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" 
                    CommandName="Update" Text="Update" /></td> 
               <td><asp:LinkButton ID="UpdateCancelButton" runat="server" 
                    CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </td>
            </tr>

            </table>
            </EditItemTemplate>

           
            
            <HeaderStyle BackColor="" Font-Bold="True" ForeColor="White" />
            <InsertItemTemplate>
               
               
                <table class="style1" align="center" 
                    
                    style="width: 100%; color: #000000; font-weight: normal;">
                <tr>
                <td>CompanyName:</td>
                <td class="style3"><asp:TextBox ID="CompanyNameTextBox" runat="server" 
                    Text='<%# Bind("CompanyName") %>' /></td>
                <td><asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Enter Company name, please" ControlToValidate="CompanyNameTextBox" SetFocusOnError="True"></asp:RequiredFieldValidator>
               </td>
               </tr>

               <tr>
                <td>ContactName:</td>
                <td class="style3"><asp:TextBox ID="ContactNameTextBox" runat="server" 
                    Text='<%# Bind("ContactName") %>' /></td>
                <td><asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Enter contact name, please" ControlToValidate="ContactNameTextBox"></asp:RequiredFieldValidator>
                </td>
                </tr>
                
                 <tr>
                <td> ContactTitle:</td>
               <td class="style3"><asp:TextBox ID="ContactTitleTextBox" runat="server" 
                    Text='<%# Bind("ContactTitle") %>' /></td>
                <td><asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                    ControlToValidate="ContactTitleTextBox" EnableTheming="False" 
                    ErrorMessage="please, enter contact title" SetFocusOnError="True"></asp:RequiredFieldValidator>
                </td>
                </tr>
                
                <tr>
                <td>Address:</td>
                <td class="style3"><asp:TextBox ID="AddressTextBox" runat="server" Text='<%# Bind("Address") %>' /></td>
                <td><asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="enter address, please" ControlToValidate="AddressTextBox" SetFocusOnError="True"></asp:RequiredFieldValidator><br />
                </td>
                </tr>

                <tr>
                <td>City:</td>
                <td class="style3"><asp:TextBox ID="CityTextBox" runat="server" Text='<%# Bind("City") %>' /></td><td>
                    &nbsp;</td>
                </tr>

                <tr>
                <td>Region:</td>
                <td class="style3"><asp:TextBox ID="RegionTextBox" runat="server" Text='<%# Bind("Region") %>' />
                </td><td></td>
               </tr>
                
                <tr>
                <td>PostalCode:</td>
                <td class="style3"><asp:TextBox ID="PostalCodeTextBox" runat="server" 
                    Text='<%# Bind("PostalCode") %>' ViewStateMode="Enabled" /></td>
                <td><asp:RangeValidator ID="RangeValidator1" runat="server"
                        ErrorMessage="Post code should consist of number between 0 and 100" 
                    ControlToValidate="PostalCodeTextBox" MinimumValue="0" MaximumValue="100" 
                    Type="Integer" SetFocusOnError="True"></asp:RangeValidator>
                    </td>
                </tr>
               
               <tr>
                <td>Country:</td>
                <td class="style3"><asp:TextBox ID="CountryTextBox" runat="server" Text='<%# Bind("Country") %>' />
               </td><td></td>
               </tr>
                
                <tr>
                <td>Phone:</td>
                <td class="style3"><asp:TextBox ID="PhoneTextBox" runat="server" Text='<%# Bind("Phone") %>' /></td>
                <td>
               </td>
               </tr>
                
                <tr>
                <td class="style1">Fax:</td>
                <td class="style1"><asp:TextBox ID="FaxTextBox" runat="server" Text='<%# Bind("Fax") %>' /></td>
                    <td class="style1"></td>
                </tr>
                
                <tr>
                <td>HomePage:</td>
                <td class="style3"><asp:TextBox ID="HomePageTextBox" runat="server" 
                    Text='<%# Bind("HomePage") %>' /></td>
                    <td>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                            ErrorMessage=" enter url address" ControlToValidate="HomePageTextBox" 
                            ValidationExpression="([\w-]+\.)+[\w-]+(/[\w- ./?%&amp;=]*)?"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <caption>
                <tr>
                <td><asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" 
                    CommandName="Insert" Text="Insert" /></td>
              
                        
                             <td class="style3">
                                 <asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" 
                                     CommandName="Cancel" Text="Cancel" />
                             </td>
                         </tr>
                    </caption>
                     </table>
            </InsertItemTemplate>
            <HeaderStyle Font-Bold="True" ForeColor="White" />
            <ItemTemplate>
                SupplierID:
                <asp:Label ID="SupplierIDLabel" runat="server" 
                    Text='<%# Eval("SupplierID") %>' />
                <br />
                <b>CompanyName:</b>
                <asp:Label ID="CompanyNameLabel" runat="server" 
                    Text='<%# Bind("CompanyName") %>' />
                <br />
                 <b>ContactName:</b>
                <asp:Label ID="ContactNameLabel" runat="server" 
                    Text='<%# Bind("ContactName") %>' />
                <br />
                 <b>ContactTitle:</b>
                <asp:Label ID="ContactTitleLabel" runat="server" 
                    Text='<%# Bind("ContactTitle") %>' />
                <br />
                <b>Address:</b>
                <asp:Label ID="AddressLabel" runat="server" Text='<%# Bind("Address") %>' />
                <br />
                City:
                <asp:Label ID="CityLabel" runat="server" Text='<%# Bind("City") %>' />
                <br />
                 <b>Region:</b>
                <asp:Label ID="RegionLabel" runat="server" Text='<%# Bind("Region") %>' />
                <br />
                 <b>PostalCode:</b>
                <asp:Label ID="PostalCodeLabel" runat="server" 
                    Text='<%# Bind("PostalCode") %>' />
                <br />
                 <b>Country:</b>
                <asp:Label ID="CountryLabel" runat="server" Text='<%# Bind("Country") %>' />
                <br />
                 <b>Phone:</b>
                <asp:Label ID="PhoneLabel" runat="server" Text='<%# Bind("Phone") %>' />
                
                <br />
                 <b> Fax:</b>
                <asp:Label ID="FaxLabel" runat="server" Text='<%# Bind("Fax") %>' />
                <br />
                 <b>HomePage:</b>
                <asp:Label ID="HomePageLabel" runat="server" Text='<%# Bind("HomePage") %>' />
               
                <br />
                 <hr />
                <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" 
                    CommandName="Edit" Text="Edit" />
                &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" 
                    CommandName="Delete" Text="Delete" />
                &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" 
                    CommandName="New" Text="New" />
            </ItemTemplate>
            <PagerStyle BackColor="" ForeColor="Black" HorizontalAlign="Center" />
            <RowStyle BackColor="" />
            <HeaderStyle Font-Bold="True" ForeColor="White" />
        </asp:FormView>
       
        </center>
        <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" 
            DeleteMethod="Delete" InsertMethod="Insert" 
            OldValuesParameterFormatString="original_{0}" SelectMethod="GetSuppliers" 
            TypeName="DataSet1TableAdapters.SuppliersTableAdapter" UpdateMethod="Update">
            <DeleteParameters>
                <asp:Parameter Name="Original_SupplierID" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="CompanyName" Type="String" />
                <asp:Parameter Name="ContactName" Type="String" />
                <asp:Parameter Name="ContactTitle" Type="String" />
                <asp:Parameter Name="Address" Type="String" />
                <asp:Parameter Name="City" Type="String" />
                <asp:Parameter Name="Region" Type="String" />
                <asp:Parameter Name="PostalCode" Type="String" />
                <asp:Parameter Name="Country" Type="String" />
                <asp:Parameter Name="Phone" Type="String" />
                <asp:Parameter Name="Fax" Type="String" />
                <asp:Parameter Name="HomePage" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="CompanyName" Type="String" />
                <asp:Parameter Name="ContactName" Type="String" />
                <asp:Parameter Name="ContactTitle" Type="String" />
                <asp:Parameter Name="Address" Type="String" />
                <asp:Parameter Name="City" Type="String" />
                <asp:Parameter Name="Region" Type="String" />
                <asp:Parameter Name="PostalCode" Type="String" />
                <asp:Parameter Name="Country" Type="String" />
                <asp:Parameter Name="Phone" Type="String" />
                <asp:Parameter Name="Fax" Type="String" />
                <asp:Parameter Name="HomePage" Type="String" />
                <asp:Parameter Name="Original_SupplierID" Type="Int32" />
            </UpdateParameters>
        </asp:ObjectDataSource>
    
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

