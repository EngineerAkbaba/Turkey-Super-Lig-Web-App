<%@ Page Title="" Language="C#" MasterPageFile="~/NormalUser.Master" AutoEventWireup="true" CodeBehind="ListReferee.aspx.cs" Inherits="Super_Lig.ListReferee" %>
<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="contentBody" runat="server">
    <asp:GridView ID="GridViewReferee" runat="server" BorderStyle="Double" CellPadding="1">
        <HeaderStyle BackColor="#0066FF" BorderStyle="Dotted" />
        <SelectedRowStyle BorderStyle="Dashed" />
    </asp:GridView>
</asp:Content>
