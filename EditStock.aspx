<%@ Page Language="C#" Debug="true" %>
<script runat="server">

    //the dataset that will keep the data
    System.Data.DataSet myDataSet = new System.Data.DataSet();
    
    void Page_Load(object sender, EventArgs e) {
        FillData();
        if (!Page.IsPostBack) {
            dgCatalog.DataBind();
        }
    }
    
    //populate the dataset from XML
    void FillData() {
        //read the XML into the DataSet
        myDataSet.ReadXml(Server.MapPath("Stock.xml"));
        //set the grid's DataSource to DataSet
        dgCatalog.DataSource = myDataSet;
    }
    
    //write XML back to disk
    void SaveData() {
        myDataSet.WriteXml(Server.MapPath("Stock.xml"));
    }
    
    //event occurs when Cancel link is clicked
    void dgCatalog_CancelCommand(object sender, DataGridCommandEventArgs e) {
        //put the link title back to "Update"
        EditCommandColumn ecc = (EditCommandColumn) dgCatalog.Columns[5];
        ecc.UpdateText = "Update";
    
        //reset the selection
        dgCatalog.EditItemIndex = -1;
        dgCatalog.DataBind();
    }
    
    //event occurs when Delete link is clicked
    void dgCatalog_DeleteCommand(object sender, DataGridCommandEventArgs e) {
        //delete from DataSet
        myDataSet.Tables[0].Rows[e.Item.ItemIndex].Delete();
        //Write the changes to disk
        SaveData();
        //rebind the data
        dgCatalog.DataBind();
        dgCatalog.EditItemIndex = -1;
        dgCatalog.DataBind();
    }
    
    //event occurs when Edit link is clicked
    void dgCatalog_EditCommand(object sender, DataGridCommandEventArgs e) {
        //turn the selected Item in Edit mode
        dgCatalog.EditItemIndex = e.Item.ItemIndex;
        dgCatalog.DataBind();
    }
    
    //event occurs when Update or Insert link is clicked
    void dgCatalog_UpdateCommand(object sender, DataGridCommandEventArgs e) {
        System.Data.DataRow dr;
        //we must use the catch to identify a wrong index
        try {
            //if this event is called from Update
            dr = myDataSet.Tables[0].Rows[e.Item.ItemIndex];
        }
        catch {
            //if the event is called from Insert
            myDataSet.Tables[0].Rows.InsertAt( myDataSet.Tables[0].NewRow(), myDataSet.Tables[0].Rows.Count);
            dr = myDataSet.Tables[0].Rows[e.Item.ItemIndex];
        }
    
        //pupulate the dataRow cells with the supplied values
        dr[0] = ((TextBox) (e.Item.Cells[0].Controls[0])).Text;
        dr[1] = ((TextBox) (e.Item.Cells[1].Controls[0])).Text;
        dr[2] = ((TextBox) (e.Item.Cells[2].Controls[0])).Text;
        dr[3] = ((TextBox)(e.Item.Cells[3].Controls[0])).Text;
        dr[4] = ((TextBox)(e.Item.Cells[4].Controls[0])).Text;
        //save dataset
        SaveData();
    
        //put the link title back to "Update"
        EditCommandColumn ecc = (EditCommandColumn) dgCatalog.Columns[5];
        ecc.UpdateText = "Update";
    
        //rebind
        dgCatalog.DataBind();
        dgCatalog.EditItemIndex = -1;
        dgCatalog.DataBind();
    }
    
    //event occurs when "Add new row" button is pressed
    void btnAdd_Click(object sender, EventArgs e) {
        //add an extra row to the dataSet
        InsertEmpty();
        //the new row is the last one in the dataset
        dgCatalog.EditItemIndex = myDataSet.Tables[0].Rows.Count - 1;
    
        //change the update button title to "Insert"
        EditCommandColumn ecc = (EditCommandColumn) dgCatalog.Columns[5];
        ecc.UpdateText = "Insert";
    
        //rebind
        dgCatalog.DataBind();
    }
    
    //procedure that add an empty row to the DataSet
    private void InsertEmpty() {
        //insert a new row at the end of the dataSet
        myDataSet.Tables[0].Rows.InsertAt(myDataSet.Tables[0].NewRow(), myDataSet.Tables[0].Rows.Count);
    }

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
        <div style="width:100%; float:left;height:600px; overflow:auto;">
        
            <center><h3>Add, Update, Delete stock itmes:</h3></center>
            <p>DataGrid &amp; XML DataSource</p>
            <br />
            <asp:Button id="btnAdd" onclick="btnAdd_Click" runat="server" Text="Add new row"></asp:Button>
            <br />
            <asp:DataGrid id="dgCatalog" runat="server" 
            HorizontalAlign="Center" Font-Size="16px"  
            AutoGenerateColumns="False" OnCancelCommand="dgCatalog_CancelCommand" 
            OnDeleteCommand="dgCatalog_DeleteCommand" 
            OnEditCommand="dgCatalog_EditCommand" 
            OnUpdateCommand="dgCatalog_UpdateCommand" 
            Width="100%" BorderColor="Gray" BorderWidth="1px">
                
               
                <Columns>
                    <asp:BoundColumn DataField="ProductName" HeaderText="ProductName"></asp:BoundColumn>
                    <asp:BoundColumn DataField="CategoryID" HeaderText="CategoryID"></asp:BoundColumn>
                    <asp:BoundColumn DataField="SupplierId" HeaderText="SupplierId"></asp:BoundColumn>
                    <asp:BoundColumn DataField="UnitsInStock" HeaderText="UnitsInStock"></asp:BoundColumn>
                    <asp:BoundColumn DataField="UnitPrice" HeaderText="UnitPrice"></asp:BoundColumn>

                    <asp:EditCommandColumn CancelText="Cancel" UpdateText="Update" EditText="Edit"></asp:EditCommandColumn>
                    <asp:ButtonColumn CommandName="Delete" Text="Delete"></asp:ButtonColumn>
                </Columns>
                <HeaderStyle Font-Bold="True" Font-Italic="False" Font-Overline="False" 
                    Font-Strikeout="False" Font-Underline="False" HorizontalAlign="Center" />
                <ItemStyle Font-Bold="False" Font-Italic="False" Font-Overline="False" 
                    Font-Strikeout="False" Font-Underline="False" HorizontalAlign="Center" />
            </asp:DataGrid>
      
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

