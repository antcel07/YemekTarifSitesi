<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.Master" AutoEventWireup="true" CodeBehind="TarifOner.aspx.cs" Inherits="YemekTarifSitesi.TarifOner" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    
        
        .auto-style7 {
            width: 120px;
     
            float: left;
            margin-left: 30px;
            text-align: right;
           
        }
        .auto-style8 {
            width: 78px;
        }
        
        .auto-style9 {
            text-align: right;
            width: 120px;
           
            float: left;
            margin-left: 30px;
            margin-top:110px;
        }
        
        .auto-style10 {
            width: 120px;
           
            float: left;
            margin-left: 30px;
            text-align: right;
            height: 50px;
        }
        .auto-style11 {
            height: 50px;
        }
        .auto-style12 {
            font-weight: bold;
            font-style: italic;
            font-size: small;
            background-color: #FFCCCC;
            float:left;
            margin-left:30px;
        }
        
    </style>
</asp:Content>
<asp:Content ID="Content2" runat="server" contentplaceholderid="ContentPlaceHolder1">
    <table class="auto-style21">
        <tr>
            
            <td class="auto-style7"><strong>Tarif&nbsp; Ad:</strong></td>
            <td>
                <asp:TextBox ID="TxtTarifAd" runat="server" Width="248px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style9"><strong>
               
                Malzemeler:</strong></td>
            <td>
                <asp:TextBox ID="TxtMalzemeler" runat="server" Width="250px" Height="200px" TextMode="MultiLine"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style9">
                <strong>
                
                <asp:Label ID="Label3" runat="server" Width="50px"   Text="Yapılış:"></asp:Label>
                </strong>
            </td>
            <td>
                <asp:TextBox ID="TxtYapilis" runat="server" Width="250px" Height="200px" TextMode="MultiLine" ></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style7"><strong>Resim:</strong></td>
            <td>
                <asp:FileUpload ID="FileUpload1" Width="250px" runat="server" />
            </td>
        </tr>
        <tr>
            <td class="auto-style10"><br /><strong>Tarif Öneren:</strong></td>
            <td class="auto-style11">
                <asp:TextBox ID="TxtTarifOneren" Width="248px" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style7"><strong>Mail Öneren:</strong></td>
            <td>
                <asp:TextBox ID="TxtMailAdres" Width="248px" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style8"></td>
            <td>
                <strong><em>
                <asp:Button ID="BtnTarifOner" runat="server" Text="Tarif Öner" Width="200px" CssClass="auto-style12" Height="50px" OnClick="BtnTarifOner_Click1" />
                </em></strong>
            </td>
        </tr>
    </table>
</asp:Content>

