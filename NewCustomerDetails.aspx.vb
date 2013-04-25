
Partial Class NewCustomerDetails
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        'This logic on target page, note checking via PreviousPage property
        Dim customerid As TextBox = CType(Page.PreviousPage.FindControl("customerid"), TextBox)
        Label1.Text = customerid.Text
        Dim companyname As TextBox = CType(Page.PreviousPage.FindControl("companyname"), TextBox)
        Label2.Text = companyname.Text
        Dim contactname As TextBox = CType(Page.PreviousPage.FindControl("contactname"), TextBox)
        Label3.Text = contactname.Text
        Dim contacttitle As TextBox = CType(Page.PreviousPage.FindControl("contacttitle"), TextBox)
        Label4.Text = contacttitle.Text
        Dim address As TextBox = CType(Page.PreviousPage.FindControl("address"), TextBox)
        Label5.Text = address.Text
        Dim city As TextBox = CType(Page.PreviousPage.FindControl("city"), TextBox)
        Label6.Text = city.Text
        Dim region As TextBox = CType(Page.PreviousPage.FindControl("region"), TextBox)
        Label7.Text = region.Text
        Dim postalcode As TextBox = CType(Page.PreviousPage.FindControl("postalcode"), TextBox)
        Label8.Text = postalcode.Text
        Dim country As TextBox = CType(Page.PreviousPage.FindControl("country"), TextBox)
        Label9.Text = country.Text
        Dim phone As TextBox = CType(Page.PreviousPage.FindControl("phone"), TextBox)
        Label10.Text = phone.Text
    End Sub
End Class
