<%@ Page Title="" Language="C#" MasterPageFile="~/Hakemler.Master" AutoEventWireup="true" CodeBehind="UpdateReferee.aspx.cs" Inherits="Super_Lig.UpdateReferee" %>
<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="contentBody" runat="server">
    <asp:Label ID="Label1" runat="server" Font-Bold="True" Text="Lisans No"></asp:Label>
    <asp:TextBox ID="lisans" runat="server" style="margin-left: 63px" Width="124px"></asp:TextBox>
    <br />
    <br />
    <asp:Label ID="Label2" runat="server" Font-Bold="True" Text="Lisans Name"></asp:Label>
    <asp:TextBox ID="lisansname" runat="server" style="margin-left: 46px" Width="124px"></asp:TextBox>
    <br />
    <br />
    <asp:Label ID="Label3" runat="server" Font-Bold="True" Text="Adı Soyadı"></asp:Label>
    <asp:TextBox ID="name" runat="server" style="margin-left: 60px" Width="127px"></asp:TextBox>
    <br />
    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <br />
    <asp:Label ID="Label5" runat="server" Font-Bold="True" Text="Area"></asp:Label>
    <asp:TextBox ID="area" runat="server" style="margin-left: 91px" Width="128px"></asp:TextBox>
    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="Button1" runat="server" Height="31px" style="margin-left: 171px" Text="Güncelle" Width="69px" BackColor="#00CCFF" OnClick="Button1_Click" />
    <br />
    <br />
</asp:Content>
