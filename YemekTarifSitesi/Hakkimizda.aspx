<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.Master" AutoEventWireup="true" CodeBehind="Hakkimizda.aspx.cs" Inherits="YemekTarifSitesi.Hakkimizda" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style7 {
            font-size: x-large;
            color: #000000;
        text-align: center;
    }
        .auto-style8 {
            font-size: medium;
            color: #000000;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" runat="server" contentplaceholderid="ContentPlaceHolder1">
    <p class="auto-style7">
        <strong>HAKKIMIZDA</strong></p>
<br />
    <asp:DataList ID="DataList2" runat="server">
            <ItemTemplate>
                <asp:Label ID="Label3" runat="server" Text='<%# Eval("Metin") %>' CssClass="auto-style8"></asp:Label>
            </ItemTemplate>
        </asp:DataList>
    <br />
    <asp:Image ID="Image1" runat="server" Height="149px" ImageUrl="~/resimler/blog.jpg" Width="449px" />
    
</asp:Content>

