
Partial Class search
    Inherits System.Web.UI.Page

    Protected Sub tb_search_TextChanged(sender As Object, e As EventArgs) Handles tb_search.TextChanged

        Dim searchWord As String
        searchWord = "Select * From kboyda_HW7 where (name Like '%" + tb_search.Text.ToString() + "%')"
        ToolDataSource.SelectCommand = searchWord

    End Sub

    Protected Sub tb_search2_TextChanged(sender As Object, e As EventArgs) Handles tb_search2.TextChanged

        Dim searchWord As String
        searchWord = "Select * From kboyda_HW7 where (name Like '%" + tb_search.Text.ToString() + "%')"
        ToolDataSource.SelectCommand = searchWord

    End Sub
End Class
