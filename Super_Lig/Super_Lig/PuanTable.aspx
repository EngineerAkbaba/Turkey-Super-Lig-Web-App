<%@ Page Language="C#" MasterPageFile="~/PuanTable.Master" AutoEventWireup="true" CodeBehind="PuanTable.aspx.cs" Inherits="Super_Lig.PuanTable" %>

<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
    Anasayfa
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="contentBody" runat="server">

    <asp:GridView ID="PuanView" runat="server" BorderStyle="Dotted">
    </asp:GridView>

</asp:Content>
