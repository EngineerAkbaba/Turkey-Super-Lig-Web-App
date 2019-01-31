<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminPage.aspx.cs" Inherits="Super_Lig.AdminPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        #form1 {
            height: 60px;
        }
    </style>
</head>
<body style="height: 104px">
    <form id="form1" runat="server">
    <div>
    
    &nbsp;&nbsp;&nbsp;
        <asp:Label ID="labelInfo" runat="server"></asp:Label>
        <br />
    
    </div>
    &nbsp;&nbsp;&nbsp;
        <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">LinkButton</asp:LinkButton>
    </form>
</body>
</html>
