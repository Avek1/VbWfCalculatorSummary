Public Class Calculate
    Inherits System.Web.UI.Page

    Public ReadOnly Property pbTextBoxSum() As TextBox
        Get
            Return TextBoxSum
        End Get
    End Property

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub ButtonCalculate_Click(sender As Object, e As EventArgs) Handles ButtonCalculate.Click

        Dim ValueForTextBox1 = TextBoxNum1.Text
        Dim ValueForTextBox2 = TextBoxNum2.Text

        Dim numTxtBx1 = Convert.ToInt32(ValueForTextBox1)
        Dim numTxtBx2 = Convert.ToInt32(ValueForTextBox2)
        Dim sumTotal = numTxtBx1 + numTxtBx2
        TextBoxSum.Text = sumTotal

    End Sub

End Class