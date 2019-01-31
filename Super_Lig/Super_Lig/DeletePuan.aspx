<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DeletePuan.aspx.cs" Inherits="Super_Lig.DeletePuan" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        #form1 {
            height: 144px;
        }
    </style>
</head>
<body style="height: 353px">
    <form id="form1" runat="server">
    <div style="height: 2px">
    
        <br />
    
    </div>
        &nbsp;<asp:Label ID="Label1" runat="server" Text="Takım No :"></asp:Label>
        <asp:TextBox ID="takımno" runat="server" style="margin-left: 93px; margin-bottom: 0px" Height="22px"></asp:TextBox>
        <br />
        <br />
        <br />
&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Kaydet" runat="server" OnClick="Kaydet_Click" style="height: 26px; margin-left: 212px" Text="Sil" Width="61px" />
        <br />
    </form>
</body>
</html>
