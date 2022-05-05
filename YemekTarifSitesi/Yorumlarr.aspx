<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="Yorumlarr.aspx.cs" Inherits="YemekTarifSitesi.Yorumlarr" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">

        .auto-style10 {
            background-color: #CCCCCC;
        }
        .auto-style17 {
            height: 28px;
            width: 36px;
        }
        .auto-style16 {
            font-weight: bold;
            font-size: large;
        }
        .auto-style18 {
            height: 28px;
            width: 35px;
        }
        .auto-style19 {
            font-weight: bold;
            font-size: large;
            margin-left: 0px;
        }
        .auto-style15 {
            height: 28px;
            width: 365px;
        }
        .auto-style14 {
            width: 209px;
        }
        .auto-style12 {
        font-size: large;
    }
        .auto-style13 {
            text-align: right;
        }
        .auto-style20 {
            height: 28px;
            width: 365px;
            background-color: #CCCCFF;
        }
        .auto-style21 {
            height: 28px;
            width: 35px;
            background-color: #CCCCFF;
        }
        .auto-style22 {
            height: 28px;
            width: 36px;
            background-color: #CCCCFF;
        }
        .auto-style23 {
            width: 100%;
            background-color: #CCCCFF;
            margin-top:20px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Panel ID="Panel1" runat="server" CssClass="auto-style10" Width="450px">
        <table class="auto-style7">
            <tr>
                <td class="auto-style17"><strong>
                    <asp:Button ID="Button1" runat="server" CssClass="auto-style16" Height="30px"  Text="+" Width="30px" OnClick="Button1_Click"  />
                    </strong></td>
                <td class="auto-style18"><strong>
                    <asp:Button ID="Button2" runat="server" CssClass="auto-style19" Height="30px"  Text="-" Width="30px" OnClick="Button2_Click" />
                    </strong></td>
                <td class="auto-style15">ONAYLANAN YORUM LİSTESİ</td>
            </tr>
        </table>
    </asp:Panel>
    <asp:Panel ID="Panel2" runat="server">
        <asp:DataList ID="DataList1" runat="server" Width="442px">
            <ItemTemplate>
                <table class="auto-style7">
                    <tr>
                        <td class="auto-style14">
                            <asp:Label ID="Label1" runat="server" CssClass="auto-style12" Text='<%# Eval("YorumAdSoyad") %>'></asp:Label>
                        </td>
                        <td class="auto-style13"><a href="Yorumlarr.aspx?YorumlarId=<%#Eval("YorumId") %>&islem=sil">
                            <asp:Image ID="Image2" runat="server" Height="30px" ImageUrl="~/ikonlar/sil.png" Width="31px" />
                            </a></td>
                        <td class="auto-style13"><a href="YorumDetay.aspx?YorumId=<%#Eval("YorumId") %>">
                            <asp:Image ID="Image3" runat="server" Height="30px" ImageUrl="~/ikonlar/güncelle.png" Width="30px" />
                            </a></td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
    </asp:Panel>

    <table class="auto-style23">
            <tr>
                <td class="auto-style22"><strong>
                    <asp:Button ID="Button3" runat="server" CssClass="auto-style16" Height="30px"  Text="+" Width="30px" OnClick="Button3_Click"  />
                    </strong></td>
                <td class="auto-style21"><strong>
                    <asp:Button ID="Button4" runat="server" CssClass="auto-style19" Height="30px"  Text="-" Width="30px" OnClick="Button4_Click"  />
                    </strong></td>
                <td class="auto-style20">ONAYLANMAYAN YORUM LİSTESİ</td>
            </tr>
        </table>

     <asp:Panel ID="Panel3" runat="server">
        <asp:DataList ID="DataList2" runat="server" Width="442px">
            <ItemTemplate>
                <table class="auto-style7">
                    <tr>
                        <td class="auto-style14">
                            <asp:Label ID="Label1" runat="server" CssClass="auto-style12" Text='<%#Eval("YorumAdSoyad") %>'></asp:Label>
                        </td>
                        <td class="auto-style13"><a href="Yorumlarr.aspx?YorumlarId=<%#Eval("YorumId") %>&islem=sil">
                            <asp:Image ID="Image2" runat="server" Height="30px" ImageUrl="~/ikonlar/sil.png" Width="31px" />
                            </a></td>
                        <td class="auto-style13"><a href="YorumDetay.aspx?YorumId=<%#Eval("YorumId") %>">

                            <asp:Image ID="Image3" runat="server" Height="30px" ImageUrl="~/ikonlar/güncelle.png" Width="30px" />
                            </a></td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
    </asp:Panel>

</asp:Content>
