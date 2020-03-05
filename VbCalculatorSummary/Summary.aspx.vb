Imports System.Data

Public Class Summary
    Inherits System.Web.UI.Page

    Dim arrList As New ArrayList

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        If Not IsPostBack Then

            Dim MySession As ArrayList = CType(Session("MySession"), ArrayList)

            If PreviousPage IsNot Nothing AndAlso PreviousPage.IsCrossPagePostBack Then

                Dim Sum = PreviousPage.pbTextBoxSum.Text

                If MySession Is Nothing Then
                    arrList.Add(Sum)
                    ListBoxOfSums.DataSource = arrList
                    ListBoxOfSums.DataBind()
                    MySession = arrList
                    Session("MySession") = MySession
                Else
                    MySession.Add(Sum)
                    ListBoxOfSums.DataSource = MySession
                    ListBoxOfSums.DataBind()
                    Session("MySession") = MySession
                End If
            Else
                MsgBox("Previous page data missing.")
            End If

        End If

    End Sub

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click

        Server.Transfer("Calculate.aspx")

    End Sub

    Protected Sub Button2_Click(sender As Object, e As EventArgs) Handles Button2.Click

        ListBoxOfSums.Items.Clear()
        Session.RemoveAll()

    End Sub
End Class