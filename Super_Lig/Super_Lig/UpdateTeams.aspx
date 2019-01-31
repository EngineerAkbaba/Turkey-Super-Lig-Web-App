<%@ Page Language="C#" MasterPageFile="~/Takımlar.Master" AutoEventWireup="true" CodeBehind="UpdateTeams.aspx.cs" Inherits="Super_Lig.UpdateTeams" %>

<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="contentBody" runat="server">
    <asp:Label ID="Label1" runat="server" Font-Bold="True" Text="Takım Adı :"></asp:Label>
    <asp:TextBox ID="takımadı" runat="server" style="margin-left: 63px" Width="124px"></asp:TextBox>
    <br />
    <br />
    <asp:Label ID="Label2" runat="server" Font-Bold="True" Text="Kuruluş Yılı :"></asp:Label>
    <asp:TextBox ID="kurulus" runat="server" style="margin-left: 56px" Width="124px"></asp:TextBox>
    <br />
    <br />
    <asp:Label ID="Label3" runat="server" Font-Bold="True" Text="Forma Rengi :"></asp:Label>
    <asp:TextBox ID="color" runat="server" style="margin-left: 46px" Width="127px"></asp:TextBox>
    <br />
    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <br />
    <asp:Label ID="Label5" runat="server" Font-Bold="True" Text="Şampiyonluk Sayısı"></asp:Label>
    <asp:TextBox ID="champs" runat="server" style="margin-left: 16px" Width="128px"></asp:TextBox>
    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="Button1" runat="server" Height="31px" style="margin-left: 171px" Text="Güncelle" Width="69px" BackColor="#00CCFF" OnClick="Button1_Click" />
    <br />
    <br />
</asp:Content>
