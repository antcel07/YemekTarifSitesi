<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="AdminTarifOnerDetay.aspx.cs" Inherits="YemekTarifSitesi.AdminTarifOnerDetay" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style24 {
            width: 326px;
        }
        .auto-style21 {
            text-align: right;
        }
        .auto-style22 {
            font-weight: bold;
            font-size: large;
        }
        .auto-style25 {
            text-align: right;
            height: 23px;
        }
        .auto-style26 {
            width: 326px;
            height: 23px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style7" __designer:mapid="5e">
        <tr __designer:mapid="5f">
            <td __designer:mapid="60">&nbsp;</td>
            <td __designer:mapid="61" class="auto-style24">&nbsp;</td>
        </tr>
        <tr __designer:mapid="62">
            <td class="auto-style21" __designer:mapid="63">Tarif Ad:</td>
            <td __designer:mapid="64" class="auto-style24">
                <asp:TextBox ID="TxtAdSoyad" runat="server" Width="200px"></asp:TextBox>
            </td>
        </tr>
        <tr __designer:mapid="66">
            <td class="auto-style21" __designer:mapid="67">Tarif Malzemeler:</td>
            <td __designer:mapid="68" class="auto-style24">
                <asp:TextBox ID="TxtMalzemeler" runat="server" Width="200px"></asp:TextBox>
            </td>
        </tr>
        <tr __designer:mapid="6a">
            <td class="auto-style21" __designer:mapid="6b">Yapılış:</td>
            <td __designer:mapid="6c" class="auto-style24">
                <asp:TextBox ID="TxtYapilis" runat="server" Height="100px" TextMode="MultiLine" Width="200px"></asp:TextBox>
            </td>
        </tr>
        <tr __designer:mapid="6e">
            <td __designer:mapid="6f" class="auto-style21">Tarif Resim:</td>
            <td __designer:mapid="70" class="auto-style24">
                <asp:FileUpload ID="FileUpload1" runat="server" />
            </td>
        </tr>
        <tr __designer:mapid="73">
            <td __designer:mapid="74" class="auto-style25">Tarif Öneren:</td>
            <td __designer:mapid="75" class="auto-style26">
                <asp:TextBox ID="TxtOneren" runat="server" Width="200px"></asp:TextBox>
            </td>
        </tr>
        <tr __designer:mapid="73">
            <td __designer:mapid="74" class="auto-style21">Öneren Mail:</td>
            <td __designer:mapid="75" class="auto-style24">
                <asp:TextBox ID="TxtMail" runat="server" Width="200px"></asp:TextBox>
            </td>
        </tr>
        <tr __designer:mapid="73">
            <td __designer:mapid="74" class="auto-style21">Kategori:</td>
            <td __designer:mapid="75" class="auto-style24">
                <asp:DropDownList ID="DropDownList1" runat="server" Width="200px">
                </asp:DropDownList>
            </td>
        </tr>
        <tr __designer:mapid="73">
            <td __designer:mapid="74">&nbsp;</td>
            <td __designer:mapid="75" class="auto-style24"><strong __designer:mapid="71">
                <asp:Button ID="Button1" runat="server" CssClass="auto-style22"  Text="Onayla" Width="200px" OnClick="Button1_Click" />
                </strong></td>
        </tr>
    </table>
</asp:Content>
