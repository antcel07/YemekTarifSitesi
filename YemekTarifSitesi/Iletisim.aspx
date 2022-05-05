<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.Master" AutoEventWireup="true" CodeBehind="Iletisim.aspx.cs" Inherits="YemekTarifSitesi.Iletisim" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">

        .auto-style7 {
            width: 100%;
        }
        .auto-style8 {
            height: 24px;
        }
        .auto-style9 {
            height: 26px;
            text-align: right;
        }
        .auto-style10 {
            height: 26px;
            margin-left: 560px;
        }
        .auto-style11 {
            margin-left: 680px;
        }
        .auto-style13 {
            text-align: right;
        }
        .auto-style14 {
            font-size: x-large;
            color: #FFCCFF;
        }

        
.tb5 {
    border: 2px solid #456879;
    border-radius: 10px;
    height: 22px;
    width: 230px;
}


.fb8 {
    border: 2px solid #777;
    border-radius: 10px;
    outline: none;
    height:40px;
    
    font-weight: bold;
}
        
    </style>
</asp:Content>
<asp:Content ID="Content2" runat="server" contentplaceholderid="ContentPlaceHolder1">
    <link href="Style.css" rel="stylesheet" />

    <table class="auto-style7">
        <tr>
            <td class="auto-style14" colspan="2"><strong>MESAJ PANELİ</strong></td>
        </tr>
        <tr>
            <td class="auto-style8"></td>
            <td class="auto-style8"></td>
        </tr>
        <tr>
            <td class="auto-style9"><strong>Ad Soyad:</strong></td>
            <td class="auto-style10">
                <asp:TextBox ID="TxtMesajAdSoyad" runat="server" Width="150px" class="tb5"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style13"><strong>Mesaj Konu:</strong></td>
            <td class="auto-style11">
                <asp:TextBox ID="TxtMesajBaslik" runat="server" Width="150px" class="tb5"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style13"><strong>Mail Adresiniz:</strong></td>
            <td>
                <asp:TextBox ID="TxtMesajMail" runat="server" Width="150px" class="tb5"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style13"><strong>Mesaj:</strong></td>
            <td>
                <asp:TextBox ID="TxtMesajIcerik" runat="server" Width="150px" class="tb5" Height="150px" TextMode="MultiLine"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>
                <asp:Button ID="Button1" runat="server" class="fb8" Text="Gönder" Width="150px" CssClass="fb8" OnClick="Button1_Click" />
                </td>
        </tr>
    </table>
</asp:Content>

