<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="YorumDetay.aspx.cs" Inherits="YemekTarifSitesi.YorumDetay" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style13 {
            height: 26px;
            text-align: right;
        }
        .auto-style11 {
            height: 26px;
        }
        .auto-style12 {
            height: 23px;
            text-align: right;
        }
        .auto-style10 {
            font-weight: bold;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
        <ItemTemplate>
            <table class="auto-style7">
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style13"><strong>Ad Soyad:</strong></td>
                    <td class="auto-style11">
                        <asp:TextBox ID="TextBox1" runat="server" Width="200px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style12"><strong>Mail Adresi:</strong></td>
                    <td class="auto-style9">
                        <asp:TextBox ID="TextBox2" runat="server" Width="200px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style12"><strong>İçerik:</strong></td>
                    <td class="auto-style9">
                        <asp:TextBox ID="TextBox3" runat="server" Height="100px" TextMode="MultiLine" Width="200px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style12"><strong>Yemek:</strong></td>
                    <td class="auto-style9">
                        <asp:TextBox ID="TextBox4" runat="server" Width="200px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style9">&nbsp;</td>
                    <td class="auto-style9"><strong>
                        <asp:Button ID="Button1" runat="server" CssClass="auto-style10" Text="Onayla" Width="150px" OnClick="Button1_Click" />
                        </strong></td>
                </tr>
            </table>
        </ItemTemplate>

</asp:Content>
