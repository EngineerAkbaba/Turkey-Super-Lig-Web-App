<%@ Page Language="C#" MasterPageFile="~/NormalUser.Master" AutoEventWireup="true" CodeBehind="ListStat.aspx.cs" Inherits="Super_Lig.ListStat" %>
<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
    Anasayfa
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="contentBody" runat="server">
    <asp:GridView ID="Statview" runat="server">
    </asp:GridView>
</asp:Content>
