<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SignUpPage.aspx.cs" Inherits="Super_Lig.SignUpPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body style="height: 209px">
    <form id="form1" runat="server">
    <div>
    
        <asp:Label ID="Label1" runat="server" Font-Bold="True" Text="Username"></asp:Label>
        <asp:TextBox ID="Username" runat="server" style="margin-left: 47px" Width="157px"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="Label2" runat="server" Font-Bold="True" Text="UserSurname"></asp:Label>
        <asp:TextBox ID="surname" runat="server" style="margin-left: 22px" Width="157px"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="Label3" runat="server" Font-Bold="True" Text="Mail"></asp:Label>
        <asp:TextBox ID="mail" runat="server" style="margin-left: 80px" Width="157px"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="Label4" runat="server" Font-Bold="True" Text="Password"></asp:Label>
        <asp:TextBox ID="password" runat="server" style="margin-left: 47px" Width="157px"></asp:TextBox>
        <br />
        <br />
        <asp:Button ID="Save" runat="server" OnClick="Save_Click" style="margin-left: 268px" Text="Save" Width="84px" />
        <br />
    
    </div>
    </form>
</body>
</html>
