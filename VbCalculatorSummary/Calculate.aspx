<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Calculate.aspx.vb" Inherits="VbCalculatorSummary.Calculate" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Calculate</title>
</head>
<body>
    <form id="form1" runat="server">
        <h3>Calculate</h3>
        <p>
            <asp:TextBox ID="TextBoxNum1" runat="server" placeholder="Field 1"></asp:TextBox>
        </p>
        <p>
            <asp:TextBox ID="TextBoxNum2" runat="server" placeholder="Field 2"></asp:TextBox>
        </p>
        <p>
            <asp:Button ID="ButtonCalculate" runat="server" Text="Calculate" OnClientClick="return validate();" />
        </p>
        <p>
            <asp:TextBox ID="TextBoxSum" runat="server" placeholder="Sum" ReadOnly="True"></asp:TextBox>
        </p>
        <asp:Button ID="ButtonViewSummary" runat="server" Text="View Summary"  PostBackUrl="~/Summary.aspx" />
    </form>
</body>

<script type="text/javascript">  

    function validate() {

        var valueOne = document.getElementById("<%=TextBoxNum1.ClientID%>").value;
        var valueTwo = document.getElementById("<%=TextBoxNum2.ClientID%>").value;
        if (valueOne == "" || valueTwo == "") {
            alert("Field(s) can not be empty.");
            return false;
        }
        if (isNaN(valueOne) && isNaN(valueTwo)) {
            alert("Field 1 and Field 2 are not a valid numbers.");
            return false;
        }
        if (isNaN(valueOne)) {
            alert("Field 1 is not a valid number.");
            return false;
        }
        if (isNaN(valueTwo)) {
            alert("Field 2 is not a valid number.");
            return false;
        }
        if (valueOne < 0 && valueTwo < 0) {
            alert("Field 1 and Field 2 can not be a negative numbers.");
            return false;
        }
        if (valueOne < 0) {
            alert("Field 1 can not be a negative number.");
            return false;
        }
        if (valueTwo < 0) {
            alert("Field 2 can not be a negative number.");
            return false;
        }

    }
</script>
</html>
