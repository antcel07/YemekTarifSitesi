<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.Master" AutoEventWireup="true" CodeBehind="YemekDetay.aspx.cs" Inherits="YemekTarifSitesi.YemekDetay" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style7 {
            width: 100%;
        }
        .auto-style12 {
            height: 23px;
        }
        .auto-style18 {
            width: 200px;
            height: 23px;
            text-align: left;
        }
        .auto-style19 {
            color: #FFFFFF;
            font-size: x-large;
        }
        .auto-style20 {
            background-color: #FFCCCC;
        }
        .auto-style21 {
            text-align: right;
        }
        .auto-style22 {
            font-weight: bold;
            font-size: large;
        }
        .auto-style23 {
            width: 200px;
            text-align: left;
            height: 23px;
        }
        .auto-style24 {
            width: 326px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:DataList ID="DataList2" runat="server">
        <ItemTemplate>
            <td>
                <tr><strong>
                    <asp:Label ID="Label8" runat="server" CssClass="auto-style19" Text='<%# Eval("YemekAd") %>'></asp:Label>
                    </strong>
                    <table class="auto-style7">
                        <tr>
                            <td class="auto-style18"><strong>Yorum Yapan Kullanıcı:</strong></td>
                            <td class="auto-style12">
                                <asp:Label ID="Label4" runat="server" Text='<%# Eval("YorumAdSoyad") %>'></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style23"><strong>Yorum: </strong></td>
                            <td class="auto-style12">
                                <asp:Label ID="Label7" runat="server" Text='<%# Eval("Yorumicerik") %>'></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style23"><strong>Mail Adresi:</strong></td>
                            <td class="auto-style12">
                                <asp:Label ID="Label6" runat="server" Text='<%# Eval("YorumMail") %>'></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style18" style="border-top-style: inherit; border-right-style: inherit; border-bottom-style: groove; border-left-style: inherit; border-bottom-width: thin"><strong>Yorum Tarihi:</strong></td>
                            <td class="auto-style12" style="border-top-style: inherit; border-right-style: inherit; border-bottom-style: groove; border-left-style: inherit; border-bottom-width: thin">
                                <asp:Label ID="Label5" runat="server" Text='<%# Eval("YorumTarih") %>'></asp:Label>
                            </td>
                        </tr>
                    </table>
                </tr>
            </td>
        </ItemTemplate>
    </asp:DataList>
    <div class="auto-style20"><strong>YORUM YAPMA PANELİ</strong></div>
    <asp:Panel ID="Panel1" runat="server">
        <table class="auto-style7">
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style24">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style21">Ad Soyad:</td>
                <td class="auto-style24">
                    <asp:TextBox ID="TxtAdSoyad" runat="server" Width="200px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style21">Mail:</td>
                <td class="auto-style24">
                    <asp:TextBox ID="TxtMail" runat="server" Width="200px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style21">Yorumunuz:</td>
                <td class="auto-style24">
                    <asp:TextBox ID="TxtYorum" runat="server" Height="100px" TextMode="MultiLine" Width="200px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style24"><strong>
                    <asp:Button ID="Button1" runat="server" CssClass="auto-style22" OnClick="Button1_Click1" Text="Yorum Yap" Width="200px" />
                    </strong></td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style24">&nbsp;</td>
            </tr>
        </table>
    </asp:Panel>
</asp:Content>
