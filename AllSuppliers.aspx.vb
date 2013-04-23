
Partial Class AllSuppliers
    Inherits System.Web.UI.Page



        Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) _
            Handles Me.Load
        Dim suppliersAdapter As New DataSet1TableAdapters.SuppliersTableAdapter
        GridView1.DataSource = suppliersAdapter.GetSuppliers()
            GridView1.DataBind()
        End Sub

    Protected Sub GridView1_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles GridView1.SelectedIndexChanged

    End Sub


End Class
