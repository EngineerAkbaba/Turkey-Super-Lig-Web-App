<%@ Page Language="C#" MasterPageFile="~/Takımlar.Master" AutoEventWireup="true" CodeBehind="AddTeams.aspx.cs" Inherits="Super_Lig.AddTeams" %>

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
    .auto-style3 {
        height: 41px;
    }
    .auto-style4 {
        width: 150px;
        height: 34px;
    }
    .auto-style5 {
        width: 118px;
        height: 34px;
    }
    </style>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="contentBody" runat="server">
    <table width="380px" border="1">
            <tr>
                <td class="auto-style1">Takım Adı:</td>
                <td class="auto-style2"><asp:TextBox ID="teamName" runat="server"></asp:TextBox></td>
            </tr>
            <tr>
                <td class="auto-style1">Kuruluş Tarihi</td>
                <td class="auto-style2"><asp:TextBox ID="foundation" runat="server"></asp:TextBox></td>
            </tr>
            <tr>
                <td class="auto-style1">Takım Rengi</td>
                <td class="auto-style2"><asp:TextBox ID="color" runat="server"></asp:TextBox></td>
            </tr>
            <tr>
                <td class="auto-style4">Şampiyonluk Sayısı</td>
                <td class="auto-style5"><asp:TextBox ID="championNum" runat="server"></asp:TextBox></td>
            </tr>       
            <tr>
                <td colspan="2" class="auto-style3"><asp:Button ID="btnKaydet" runat="server" Text="Kaydet" OnClick="btnRefereeSave_Click" Width="171px" /></td>
            </tr>
            
        </table>
</asp:Content>
