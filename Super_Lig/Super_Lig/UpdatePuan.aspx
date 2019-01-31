<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UpdatePuan.aspx.cs" Inherits="Super_Lig.UpdatePuan" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body style="height: 469px">
    <form id="form1" runat="server">
    <div style="height: 463px">
    
        <asp:Label ID="Label1" runat="server" Text="Takım No:"></asp:Label>
        <asp:TextBox ID="TextBox1" runat="server" style="margin-left: 47px"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="Label2" runat="server" Text="Maç Sayısı :"></asp:Label>
        <asp:TextBox ID="TextBox2" runat="server" style="margin-left: 39px"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="Label3" runat="server" Text="Galibiyet"></asp:Label>
        <asp:TextBox ID="TextBox3" runat="server" style="margin-left: 59px"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="Label4" runat="server" Text="Beraberlik"></asp:Label>
        <asp:TextBox ID="TextBox4" runat="server" style="margin-left: 50px"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="Label5" runat="server" Text="Mağlubiyet"></asp:Label>
        <asp:TextBox ID="TextBox5" runat="server" style="margin-left: 47px"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="Label6" runat="server" Text="Atılan Gol:"></asp:Label>
        <asp:TextBox ID="TextBox6" runat="server" style="margin-left: 47px"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="Label7" runat="server" Text="Yenilen Gol :"></asp:Label>
        <asp:TextBox ID="TextBox7" runat="server" style="margin-left: 36px"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="Label8" runat="server" Text="Averaj"></asp:Label>
        <asp:TextBox ID="TextBox8" runat="server" OnTextChanged="TextBox8_TextChanged" style="margin-left: 71px"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="Label9" runat="server" Text="Puan"></asp:Label>
        <asp:TextBox ID="TextBox9" runat="server" style="margin-left: 81px"></asp:TextBox>
        <br />
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" style="margin-left: 48px" Text="Kaydet" Width="104px" />
    
    </div>
    </form>
</body>
</html>
