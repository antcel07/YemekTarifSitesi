<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="YemekDuzenle.aspx.cs" Inherits="YemekTarifSitesi.YemekDuzenle" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style10 {
        height: 26px;
    }
    .auto-style11 {
        height: 26px;
        text-align: right;
        font-size: large;
    }
    .auto-style12 {
        text-align: right;
        font-size: large;
    }
    .auto-style13 {
        text-align: center;
    }
    .auto-style15 {
        text-align: left;
    }
    .auto-style14 {
        font-size: medium;
        font-weight: bold;
    }
        .auto-style16 {
            text-align: right;
        }
        .auto-style17 {
            font-size: large;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style7">
    <tr>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style12"><strong>Yemek Ad:</strong></td>
        <td>
            <asp:TextBox ID="TextBox1" runat="server" Width="250px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style12"><strong>Malzeme:</strong></td>
        <td>
            <asp:TextBox ID="TextBox2" runat="server" Height="100px" Width="250px" TextMode="MultiLine"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style12"><strong>Tarif:</strong></td>
        <td>
            <asp:TextBox ID="TextBox3" runat="server" Height="200px" Width="250px" TextMode="MultiLine"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style11"><strong>Kategori</strong></td>
        <td class="auto-style10">
            <asp:DropDownList ID="DropDownList1" runat="server" Width="250px" AutoPostBack="True">
            </asp:DropDownList>
        </td>
    </tr>
    <tr>
        <td class="auto-style16"><strong><span class="auto-style17">Yemek Resim</span></strong>:</td>
        <td class="auto-style15">
            <asp:FileUpload ID="FileUpload1" runat="server" Width="250px" />
        </td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td class="auto-style13">&nbsp;</td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td class="auto-style13"><strong>
            <asp:Button ID="Button1" runat="server" CssClass="auto-style14" Height="25px" Text="Güncelle" Width="250px" OnClick="Button1_Click" />
            </strong></td>
    </tr>
</table>
</asp:Content>
