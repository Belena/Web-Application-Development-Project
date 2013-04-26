<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Register.aspx.vb" Inherits="Register" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">


<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <link href="Styles/Site.css" rel="stylesheet" type="text/css" />
    <title></title>
<<<<<<< HEAD
</head>
=======
    </head>
>>>>>>> 62cb6a593f9528b5881a53bb61d4e6eaf7868189
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
        
         <center><div style="height: 181px; width: 292px">
             <p>
                 <asp:CreateUserWizard ID="CreateUserWizard1" runat="server">
                     <WizardSteps>
                         <asp:CreateUserWizardStep runat="server">
                             <ContentTemplate>
                                 <table>
                                     <tr>
                                         <td align="center" colspan="2">
                                             Sign Up for Your New Account</td>
                                     </tr>
                                     <tr>
                                         <td align="right">
                                             <asp:Label ID="UserNameLabel" runat="server" AssociatedControlID="UserName">User Name:</asp:Label>
                                         </td>
                                         <td>
                                             <asp:TextBox ID="UserName" runat="server"></asp:TextBox>
                                             <asp:RequiredFieldValidator ID="UserNameRequired" runat="server" 
                                                 ControlToValidate="UserName" ErrorMessage="User Name is required." 
                                                 ToolTip="User Name is required." ValidationGroup="CreateUserWizard1">*</asp:RequiredFieldValidator>
                                         </td>
                                     </tr>
                                     <tr>
                                         <td align="right">
                                             <asp:Label ID="PasswordLabel" runat="server" AssociatedControlID="Password">Password:</asp:Label>
                                         </td>
                                         <td>
                                             <asp:TextBox ID="Password" runat="server" TextMode="Password"></asp:TextBox>
                                             <asp:RequiredFieldValidator ID="PasswordRequired" runat="server" 
                                                 ControlToValidate="Password" ErrorMessage="Password is required." 
                                                 ToolTip="Password is required." ValidationGroup="CreateUserWizard1">*</asp:RequiredFieldValidator>
                                         </td>
                                     </tr>
                                     <tr>
                                         <td align="right">
                                             <asp:Label ID="ConfirmPasswordLabel" runat="server" 
                                                 AssociatedControlID="ConfirmPassword">Confirm Password:</asp:Label>
                                         </td>
                                         <td>
                                             <asp:TextBox ID="ConfirmPassword" runat="server" TextMode="Password"></asp:TextBox>
                                             <asp:RequiredFieldValidator ID="ConfirmPasswordRequired" runat="server" 
                                                 ControlToValidate="ConfirmPassword" 
                                                 ErrorMessage="Confirm Password is required." 
                                                 ToolTip="Confirm Password is required." ValidationGroup="CreateUserWizard1">*</asp:RequiredFieldValidator>
                                         </td>
                                     </tr>
                                     <tr>
                                         <td align="right">
                                             <asp:Label ID="EmailLabel" runat="server" AssociatedControlID="Email">E-mail:</asp:Label>
                                         </td>
                                         <td>
                                             <asp:TextBox ID="Email" runat="server"></asp:TextBox>
                                             <asp:RequiredFieldValidator ID="EmailRequired" runat="server" 
                                                 ControlToValidate="Email" ErrorMessage="E-mail is required." 
                                                 ToolTip="E-mail is required." ValidationGroup="CreateUserWizard1">*</asp:RequiredFieldValidator>
                                         </td>
                                     </tr>
                                     
                                     <tr>
                                         <td align="center" colspan="2">
                                             <asp:CompareValidator ID="PasswordCompare" runat="server" 
                                                 ControlToCompare="Password" ControlToValidate="ConfirmPassword" 
                                                 Display="Dynamic" 
                                                 ErrorMessage="The Password and Confirmation Password must match." 
                                                 ValidationGroup="CreateUserWizard1"></asp:CompareValidator>
                                         </td>
                                     </tr>
                                     <tr>
                                         <td align="center" colspan="2" style="color:Red;">
                                             <asp:Literal ID="ErrorMessage" runat="server" EnableViewState="False"></asp:Literal>
                                         </td>
                                     </tr>
                                 </table>
                             </ContentTemplate>
                             <CustomNavigationTemplate>
                                 <table border="0" cellspacing="5" style="width:100%;height:100%;">
                                     <tr align="right">
                                         <td align="right" colspan="0">
                                             <asp:Button ID="StepNextButton" runat="server" CommandName="MoveNext" 
                                                 Text="Register" ValidationGroup="CreateUserWizard1" />
                                         </td>
                                     </tr>
                                 </table>
                             </CustomNavigationTemplate>
                         </asp:CreateUserWizardStep>
                         <asp:CompleteWizardStep runat="server">
                             <ContentTemplate>
                                 <table>
                                     <tr>
                                         <td align="center">
                                             Complete</td>
                                     </tr>
                                     <tr>
                                         <td>
                                             Your account has been successfully created, press CONTINUE.</td>
                                     </tr>
                                     <tr>
                                         <td align="right">
                                             <asp:Button ID="ContinueButton" runat="server" CausesValidation="False" 
                                                 CommandName="Continue" Text="Continue" ValidationGroup="CreateUserWizard1" />
                                         </td>
                                     </tr>
                                 </table>
                             </ContentTemplate>
                         </asp:CompleteWizardStep>
                     </WizardSteps>
                     <FinishNavigationTemplate>
                         <asp:Button ID="FinishPreviousButton" runat="server" CausesValidation="False" 
                             CommandName="MovePrevious" Text="Previous" />
                         <asp:Button ID="FinishButton" runat="server" CommandName="MoveComplete" 
                             Text="Finish" />
                     </FinishNavigationTemplate>
                     <StartNavigationTemplate>
                         <asp:Button ID="StartNextButton" runat="server" CommandName="MoveNext" 
                             Text="Next" />
                     </StartNavigationTemplate>
                     <StepNavigationTemplate>
                         <asp:Button ID="StepPreviousButton" runat="server" CausesValidation="False" 
                             CommandName="MovePrevious" Text="Previous" />
                         <asp:Button ID="StepNextButton" runat="server" CommandName="MoveNext" 
                             Text="Next" />
                     </StepNavigationTemplate>
                 </asp:CreateUserWizard>
             </p>
             <p>&nbsp;</p><br />
            </div>
            </center>
            <br />
            <br />
            <br />
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
