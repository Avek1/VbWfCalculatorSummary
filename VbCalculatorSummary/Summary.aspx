<%@ PreviousPageType VirtualPath="~/Calculate.aspx" %>

<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Summary.aspx.vb" Inherits="VbCalculatorSummary.Summary" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
         <h3>Summary</h3>
        <div>
            <asp:ListBox ID="ListBoxOfSums" runat="server" Height="168px" Width="103px"></asp:ListBox>
        </div>
        <p>
            <asp:Button ID="Button1" runat="server" Text="Back To Calculate Page" />
        </p>
        <p>
            <asp:Button ID="Button2" runat="server" Text="Clear Cache" />
        </p>

    </form>
</body>
</html>
