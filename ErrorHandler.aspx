<%@ Page Language="VB" AutoEventWireup="false" CodeFile="ErrorHandler.aspx.vb" Inherits="ErrorHandler" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <center><h3>Sorry, there has been an error. Please click here to continue.<asp:Button 
            ID="Button1" runat="server" PostBackUrl="~/Home.aspx" Text="continue" />
        </h3></center>
    </div>
    </form>
</body>
</html>
