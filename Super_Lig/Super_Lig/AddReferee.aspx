<%@ Page Title="" Language="C#" MasterPageFile="~/Hakemler.Master" AutoEventWireup="true" CodeBehind="AddReferee.aspx.cs" Inherits="Super_Lig.AddReferee" %>
<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 150px;
        }
        .auto-style2 {
            width: 118px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="contentBody" runat="server">
    <table width="380px" border="1">
            <tr>
                <td class="auto-style1"><asp:Label ID="lblRefereeLicenceNo" runat="server" Text="Lisans Numarası : "></asp:Label></td>
                <td class="auto-style2"><asp:TextBox ID="txtRefereeLicenceNo" runat="server"></asp:TextBox></td>
            </tr>
            <tr>
                <td class="auto-style1"><asp:Label ID="lblRefereeLicenceName" runat="server" Text="Lisans Adı : "></asp:Label></td>
                <td class="auto-style2"><asp:TextBox ID="txtRefereeLicenceName" runat="server"></asp:TextBox></td>
            </tr>
            <tr>
                <td class="auto-style1"><asp:Label ID="lblRefereeName" runat="server" Text="Adı : "></asp:Label></td>
                <td class="auto-style2"><asp:TextBox ID="txtRefereeName" runat="server"></asp:TextBox></td>
            </tr>
            <tr>
                <td class="auto-style1"><asp:Label ID="lblRefereeSurName" runat="server" Text="Soyadı : "></asp:Label></td>
                <td class="auto-style2"><asp:TextBox ID="txtRefereeSurName" runat="server"></asp:TextBox></td>
            </tr>
            <tr>
                <td class="auto-style1"><asp:Label ID="lblRefereeBirthDate" runat="server" Text="Doğum Tarihi : "></asp:Label></td>
                <td class="auto-style2"><asp:TextBox ID="txtRefereeBirthDate" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style1"><asp:Label ID="lblRefereeArea" runat="server" Text="Bölgesi : "></asp:Label></td>
                <td class="auto-style2"><asp:TextBox ID="txtRefereeArea" runat="server"></asp:TextBox></td>
            </tr>
            <tr>
                <td colspan="2"><asp:Button ID="btnKaydet" runat="server" Text="Kaydet" OnClick="btnRefereeSave_Click" Width="171px" /></td>
            </tr>
            
        </table>
</asp:Content>
