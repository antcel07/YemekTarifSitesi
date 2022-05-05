<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="AdminTarifOneri.aspx.cs" Inherits="YemekTarifSitesi.AdminTarifOneri" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">


        .auto-style20 {
            width: 100%;
            background-color: #CCCCFF;
        
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

        .auto-style21 {
            text-align: right;
        }

        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style20" __designer:mapid="0">
        <tr __designer:mapid="1">
            <td class="auto-style17" __designer:mapid="2"><strong __designer:mapid="3">
                <asp:Button ID="Button1" runat="server" CssClass="auto-style16" Height="30px" Text="+" Width="30px" OnClick="Button1_Click"   />
                </strong></td>
            <td class="auto-style18" __designer:mapid="5"><strong __designer:mapid="6">
                <asp:Button ID="Button2" runat="server" CssClass="auto-style19" Height="30px" Text="-" Width="30px" OnClick="Button2_Click"  />
                </strong></td>
            <td class="auto-style15" __designer:mapid="8">ONAYSIZ TARİF ÖNERİ LİSTESİ</td>
        </tr>
    </table>

    
    <asp:Panel ID="Panel2" runat="server">
        <asp:DataList ID="DataList1" runat="server" Width="442px">
            <ItemTemplate>
                <table class="auto-style7">
                    <tr>
                        <td class="auto-style14">
                            <asp:Label ID="Label1" runat="server" CssClass="auto-style12" Text='<%# Eval("TarifAd") %>'></asp:Label>
                        </td>
                        <td class="auto-style21">
                            <a href="AdminTarifOnerDetay.aspx?Tarifid=<%#Eval("Tarifid") %>">
                                <asp:Image ID="Image3" runat="server" Height="30px" ImageUrl="~/ikonlar/güncelle.png" Width="30px" />
                            </a>
                                    </td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
      
    </asp:Panel>


      <table class="auto-style20" style="margin-top:20px;">
            <tr>
                <td class="auto-style17"><strong>
                    <asp:Button ID="Button3" runat="server" CssClass="auto-style16" Height="30px" Text="+" Width="30px" OnClick="Button3_Click"  />
                    </strong></td>
                <td class="auto-style18"><strong>
                    <asp:Button ID="Button4" runat="server" CssClass="auto-style19" Height="30px" Text="-" Width="30px" OnClick="Button4_Click"  />
                    </strong></td>
                <td class="auto-style15">ONAYLI TARİF ÖNERİ LİSTESİ</td>
            </tr>
        </table>

     <asp:Panel ID="Panel1" runat="server">
        <asp:DataList ID="DataList2" runat="server" Width="442px">
            <ItemTemplate>
                <table class="auto-style7">
                    <tr>
                        <td class="auto-style14">
                            <asp:Label ID="Label1" runat="server" CssClass="auto-style12" Text='<%# Eval("TarifAd") %>'></asp:Label>
                        </td>
                        <td class="auto-style21">
                            <a href="AdminTarifOnerDetay.aspx?Tarifid=<%#Eval("Tarifid") %>">
                                <asp:Image ID="Image3" runat="server" Height="30px" ImageUrl="~/ikonlar/güncelle.png" Width="30px" />
                            </a>
                                    </td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
      
    </asp:Panel>

</asp:Content>
