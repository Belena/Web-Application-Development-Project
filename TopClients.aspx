<%@ Page Language="VB" Debug="true"%>
<%@ Import Namespace="System.Xml" %>
<%@ Import Namespace="System.Data" %>
<%@ Import Namespace="System.Data.OleDb" %>

<script runat="server">
   private i, j as integer
   private strOutput as string = ""
   public xmldoc as new XMLDataDocument()
   
   sub Page_Load(Sender as Object, e as EventArgs)
      if not Page.IsPostBack then
         GetData()
         BindControl()
      end if
   end sub
   
   sub UpdateBtn_Click(Sender as Object, e as EventArgs)
        Dim CompanyName As TextBox
        Dim ContactName As TextBox
        Dim Address As TextBox
        Dim Phone As TextBox
            
      GetData()
      'update data
      For i = 0 To DataGrid1.Items.Count-1
            CompanyName = DataGrid1.Items(i).FindControl("CompanyName")
            ContactName = DataGrid1.Items(i).FindControl("ContactName")
            Address = DataGrid1.Items(i).FindControl("Address")
            Phone = DataGrid1.Items(i).FindControl("Phone")
      
            xmldoc.DataSet.Tables(0).Rows(i)("CompanyName") = CompanyName.Text
            xmldoc.DataSet.Tables(0).Rows(i)("ContactName") = ContactName.Text
            xmldoc.DataSet.Tables(0).Rows(i)("Address") = Address.Text
            xmldoc.DataSet.Tables(0).Rows(i)("Phone") = Phone.Text
      Next
      
      try
            xmldoc.Save(Server.MapPath("XmlForTopClients.xml"))
      catch
         output.Text = "Error updating data"
      end try
      
      BindControl()
   end sub
   
   sub GetData()
      try
            xmldoc.DataSet.ReadXml(Server.MapPath("XmlForTopClients.xml"))
      catch ex as Exception
         output.Text = "Error accessing XML file"
      end try
   end sub
   
   sub BindControl()
        DataGrid1.DataSource = xmldoc.DataSet
      DataGrid1.DataMember = xmldoc.DataSet.Tables(0).TableName
      DataGrid1.DataBind()
   end sub

    Protected Sub DataGrid1_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs)

    End Sub
</script>

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



<center><div style="width: 100%; padding-top: 30px;">
<h3>Top clients</h3>
<p>edit and update entry!</p>
   <asp:Label id="output" runat="server" />
  
   
   <asp:DataGrid id="DataGrid1" runat="server" 
      BorderColor="Black" 
      GridLines="Vertical" 
      Width="600px"
       
      
      AutogenerateColumns="False" 
       onselectedindexchanged="DataGrid1_SelectedIndexChanged" >
      <Columns>
         <asp:TemplateColumn HeaderText="CompanyName">
            <ItemTemplate>
               <asp:TextBox id="CompanyName" runat="server" 
                  Text='<%# Container.DataItem("CompanyName") %>' Width="220px" />
            </ItemTemplate>
             <HeaderStyle Width="25%" />
         </asp:TemplateColumn>

         <asp:TemplateColumn HeaderText="ContactName">
            <ItemTemplate>
               <asp:TextBox id="ContactName" runat="server" 
                  Text='<%# Container.DataItem("ContactName") %>' 
                  width="90%" />
            </ItemTemplate>
             <HeaderStyle Width="25%" />
         </asp:TemplateColumn>

         <asp:TemplateColumn HeaderText="Address">
            <ItemTemplate>
               <asp:TextBox id="Address" runat="server" 
                  Text='<%# Container.DataItem("Address") %>'
                  width="90%" />
            </ItemTemplate>
             <HeaderStyle Width="25%" />
         </asp:TemplateColumn>
         <asp:TemplateColumn HeaderText="Phone">
            <ItemTemplate>
               <asp:TextBox id="Phone" runat="server" 
                  Text='<%# Container.DataItem("Phone") %>'
                  width="90%" />
            </ItemTemplate>
             <HeaderStyle Width="25%" />
         </asp:TemplateColumn>
      </Columns>     
       <EditItemStyle Width="25%" />
       <ItemStyle Width="90%" />
   </asp:DataGrid>
   <br />
   
  
   <asp:Button id="update" runat="server"
      OnClick="UpdateBtn_Click"
      text="Update!" />


      </div></center>
   
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
