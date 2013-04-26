<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Test.aspx.vb" Inherits="Test" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:AccessDataSource ID="AccessDataSource1" runat="server" 
            DataFile="~/App_Data/Northwind.mdb" 
            DeleteCommand="DELETE FROM [Products] WHERE [ProductID] = ?" 
            InsertCommand="INSERT INTO [Products] ([ProductID], [ProductName], [UnitsOnOrder], [QuantityPerUnit], [CategoryID], [UnitPrice]) VALUES (?, ?, ?, ?, ?, ?)" 
            SelectCommand="SELECT [ProductID], [ProductName], [UnitsOnOrder], [QuantityPerUnit], [CategoryID], [UnitPrice] FROM [Products]" 
            UpdateCommand="UPDATE [Products] SET [ProductName] = ?, [UnitsOnOrder] = ?, [QuantityPerUnit] = ?, [CategoryID] = ?, [UnitPrice] = ? WHERE [ProductID] = ?">
            <DeleteParameters>
                <asp:Parameter Name="ProductID" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="ProductID" Type="Int32" />
                <asp:Parameter Name="ProductName" Type="String" />
                <asp:Parameter Name="UnitsOnOrder" Type="Int16" />
                <asp:Parameter Name="QuantityPerUnit" Type="String" />
                <asp:Parameter Name="CategoryID" Type="Int32" />
                <asp:Parameter Name="UnitPrice" Type="Decimal" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="ProductName" Type="String" />
                <asp:Parameter Name="UnitsOnOrder" Type="Int16" />
                <asp:Parameter Name="QuantityPerUnit" Type="String" />
                <asp:Parameter Name="CategoryID" Type="Int32" />
                <asp:Parameter Name="UnitPrice" Type="Decimal" />
                <asp:Parameter Name="ProductID" Type="Int32" />
            </UpdateParameters>
        </asp:AccessDataSource>
        <asp:FormView ID="FormView1" runat="server" AllowPaging="True" 
            DataKeyNames="ProductID" DataSourceID="AccessDataSource1">
            <EditItemTemplate>
                ProductID:
                <asp:Label ID="ProductIDLabel1" runat="server" 
                    Text='<%# Eval("ProductID") %>' />
                <br />
                ProductName:
                <asp:TextBox ID="ProductNameTextBox" runat="server" 
                    Text='<%# Bind("ProductName") %>' />
                <br />
                UnitsOnOrder:
                <asp:TextBox ID="UnitsOnOrderTextBox" runat="server" 
                    Text='<%# Bind("UnitsOnOrder") %>' />
                <br />
                QuantityPerUnit:
                <asp:TextBox ID="QuantityPerUnitTextBox" runat="server" 
                    Text='<%# Bind("QuantityPerUnit") %>' />
                <br />
                CategoryID:
                <asp:TextBox ID="CategoryIDTextBox" runat="server" 
                    Text='<%# Bind("CategoryID") %>' />
                <br />
                UnitPrice:
                <asp:TextBox ID="UnitPriceTextBox" runat="server" 
                    Text='<%# Bind("UnitPrice") %>' />
                <br />
                <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" 
                    CommandName="Update" Text="Update" />
                &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" 
                    CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </EditItemTemplate>
            <InsertItemTemplate>
                ProductName:
                <asp:TextBox ID="ProductNameTextBox" runat="server" 
                    Text='<%# Bind("ProductName") %>' />
                <br />
                UnitsOnOrder:
                <asp:TextBox ID="UnitsOnOrderTextBox" runat="server" 
                    Text='<%# Bind("UnitsOnOrder") %>' />
                <br />
                QuantityPerUnit:
                <asp:TextBox ID="QuantityPerUnitTextBox" runat="server" 
                    Text='<%# Bind("QuantityPerUnit") %>' />
                <br />
                CategoryID:
                <asp:TextBox ID="CategoryIDTextBox" runat="server" 
                    Text='<%# Bind("CategoryID") %>' />
                <br />
                UnitPrice:
                <asp:TextBox ID="UnitPriceTextBox" runat="server" 
                    Text='<%# Bind("UnitPrice") %>' />
                <br />
                <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" 
                    CommandName="Insert" Text="Insert" />
                &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" 
                    CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </InsertItemTemplate>
            <ItemTemplate>
                ProductID:
                <asp:Label ID="ProductIDLabel" runat="server" Text='<%# Eval("ProductID") %>' />
                <br />
                ProductName:
                <asp:Label ID="ProductNameLabel" runat="server" 
                    Text='<%# Bind("ProductName") %>' />
                <br />
                UnitsOnOrder:
                <asp:Label ID="UnitsOnOrderLabel" runat="server" 
                    Text='<%# Bind("UnitsOnOrder") %>' />
                <br />
                QuantityPerUnit:
                <asp:Label ID="QuantityPerUnitLabel" runat="server" 
                    Text='<%# Bind("QuantityPerUnit") %>' />
                <br />
                CategoryID:
                <asp:Label ID="CategoryIDLabel" runat="server" 
                    Text='<%# Bind("CategoryID") %>' />
                <br />
                UnitPrice:
                <asp:Label ID="UnitPriceLabel" runat="server" Text='<%# Bind("UnitPrice") %>' />
                <br />
                <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" 
                    CommandName="Edit" Text="Edit" />
                &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" 
                    CommandName="Delete" Text="Delete" />
                &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" 
                    CommandName="New" Text="New" />
            </ItemTemplate>
        </asp:FormView>
    
    </div>
    </form>
</body>
</html>
