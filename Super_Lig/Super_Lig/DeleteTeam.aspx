<%@ Page Language="C#" MasterPageFile="~/Takımlar.Master" AutoEventWireup="true" CodeBehind="DeleteTeam.aspx.cs" Inherits="Super_Lig.DeleteTeam" %>

<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="contentBody" runat="server">
    

    
    <br />
    <asp:Label ID="Label1" runat="server" Font-Bold="True" Text="Takım No :" Font-Size="Medium"></asp:Label>

    
    

    
    <br />
    <asp:TextBox ID="takımno" runat="server" BackColor="#00CCFF" ForeColor="Black" Width="158px" Height="22px"></asp:TextBox>
    

    
    <br />
    <br />
    <asp:Label ID="Label2" runat="server" Font-Bold="True" Text="Takım İsmi :" Font-Size="Medium"></asp:Label>
    <br />

    <asp:TextBox ID="AdıSoyadı" runat="server" BackColor="#00CCFF" Width="156px" Height="26px" style="margin-left: 2px"></asp:TextBox>
    <br />
    

    
    <br />
    <br />

    <asp:Button ID="sil" runat="server" Text="Sil" Width="93px" style="margin-left: 68px" BackColor="#00CCFF" BorderColor="Black" ForeColor="Black" Height="31px" OnClick="sil_Click" />
    <br />
    <br />
    

    
</asp:Content>
