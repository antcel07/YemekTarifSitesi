<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.Master" AutoEventWireup="true" CodeBehind="GununYemegi.aspx.cs" Inherits="YemekTarifSitesi.GununYemegi" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style5 {
            height: 25px;
            margin-left: 80px;
            text-align: center;
        }
        .auto-style7 {
            font-size: x-large;
        }
        .auto-style8 {
            text-align: center;
        }
        .auto-style9 {
            height: 23px;
        }
        .auto-style10 {
            text-align: right;
            height: 23px;
        }
        .auto-style11 {
            width: 102px;
            height: 23px;
        }
        .auto-style12 {
            width: 310px;
            height: 23px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
  
       
  
        <asp:DataList ID="DataList3" runat="server">
            <ItemTemplate>
                <table class="auto-style1">
                    <tr>
                        <td class="auto-style5">
                            <strong>
                            <asp:Label ID="Label11" runat="server" CssClass="auto-style7" Text='<%# Eval("YemekAd") %>'></asp:Label>
                            </strong>
                           
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <strong>Malzemeler:</strong>
                            <asp:Label ID="Label12" runat="server" Text='<%# Eval("YemekMalzeme") %>'></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style3">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style3"><strong>Tarif: </strong>
                            <asp:Label ID="Label15" runat="server" Text='<%# Eval("YemekYapilis") %>'></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style8">
                            <asp:Image ID="Image1" runat="server" Height="206px" ImageUrl='<%# Eval("YemekResim") %>' Width="386px" />
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style9">
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <table class="auto-style1">
                                <tr>
                                    <td class="auto-style12"><strong>Puan:</strong>&nbsp;<asp:Label ID="Label14" runat="server" Text='<%# Eval("YemekPuan") %>'></asp:Label>
                                        &nbsp;</td>
                                    <td class="auto-style10">&nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="auto-style12">&nbsp;<strong>Eklenme Tarihi: </strong>
                                        <asp:Label ID="Label16" runat="server" Text='<%# Eval("YemekTarih") %>'></asp:Label>
                                    </td>
                                    <td class="auto-style10">&nbsp;</td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
  
       
  
</div>
<br />
</asp:Content>
