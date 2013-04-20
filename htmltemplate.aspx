<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Home.aspx.vb" Inherits="Home" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <link href="Styles/Site.css" rel="stylesheet" type="text/css" />
    <title></title>
</head>
<body>


    <form id="form1" runat="server">


<!--top-->
	<div class="top"><div class="top_inner">
		<asp:LoginView ID="LoginView1" runat="server">
            <AnonymousTemplate>
                You are not logged in. Click the Login link
            </AnonymousTemplate>
            <LoggedInTemplate>
                Welcome,
            </LoggedInTemplate>
        </asp:LoginView>
		<div class="log"><a href="#">Register</a></div>
		<div class="log">
			<a href="#">Log In</a>
		</div>
		<asp:LoginName ID="LoginName1" runat="server" />
		<asp:LoginStatus ID="LoginStatus1" runat="server" />
		<span class="website"></span>
	</div></div>
<!--/top-->
<div class="container">
<!--header-->
	<div class="header">
		
		<ul class="main_menu">
			<li class="active"><a href="#">Home</a></li>
			<li><a href="#">About</a>
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
			<li><a href="#">Contacts</a></li>
            
		</ul>
	</div>
<!--/header-->

<!--content-->


	<div class="main_content">
		<div class="content">


        
        


        </div>
       </div>
<!--/content-->
<div class="cl"></div>
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

    </form>

</body>
</html>
