<%@ Page Title="" Language="C#" MasterPageFile="~/Hakemler.Master" AutoEventWireup="true" CodeBehind="DeleteReferee.aspx.cs" Inherits="Super_Lig.DeleteReferee" %>
<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="contentBody" runat="server">
    

    
    <br />
    <asp:Label ID="Label1" runat="server" Font-Bold="True" Text="Sicil Numarası" Font-Size="Medium"></asp:Label>

    
    

    
    <br />
    <asp:TextBox ID="Sicil" runat="server" BackColor="#00CCFF" ForeColor="Black" Width="153px" Height="22px"></asp:TextBox>
    

    
    <br />
    <br />
    <asp:Label ID="Label2" runat="server" Font-Bold="True" Text="Adı Soyadı" Font-Size="Medium"></asp:Label>
    <br />

    <asp:TextBox ID="AdıSoyadı" runat="server" BackColor="#00CCFF" Width="156px" Height="26px" style="margin-left: 2px"></asp:TextBox>
    <br />
    <br />
    <asp:Button ID="Button1" runat="server" BackColor="Lime" Height="35px" OnClick="Button1_Click" style="margin-left: 0px" Text="Sorgula" Width="87px" />
    <br />
    <br />
    <asp:GridView ID="SorgulaGried" runat="server" style="margin-left: 0px">
    </asp:GridView>
    

    
    <br />
    <br />

    <asp:Button ID="sil" runat="server" Text="Sil" Width="93px" style="margin-left: 0px" BackColor="#00CCFF" BorderColor="Black" ForeColor="Black" Height="31px" OnClick="sil_Click" />
    <br />
    <br />
    

    
</asp:Content>
