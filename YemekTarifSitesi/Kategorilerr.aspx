<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="Kategorilerr.aspx.cs" Inherits="YemekTarifSitesi.Kategorilerr" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style10 {
            background-color: #CCCCCC;
        }
    .auto-style12 {
        font-size: large;
    }
        .auto-style13 {
            text-align: right;
        }
        .auto-style14 {
            width: 209px;
        }
        .auto-style15 {
            height: 28px;
            width: 365px;
        }
        .auto-style16 {
            font-weight: bold;
            font-size: large;
        }
        .auto-style17 {
            height: 28px;
            width: 36px;
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
        .auto-style20 {
            height: 28px;
            width: 365px;
            background-color: #CCCCCC;
        }
        .auto-style21 {
            width: 100%;
            background-color: #CCCCCC;
        }
        .auto-style22 {
            font-weight: bold;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Panel ID="Panel1" runat="server" CssClass="auto-style10">
        <table class="auto-style7">
            <tr>
                <td class="auto-style17"><strong>
                    <asp:Button ID="Button1" runat="server" CssClass="auto-style16" Height="30px" OnClick="Button1_Click" Text="+" Width="30px" />
                    </strong></td>
                <td class="auto-style18"><strong>
                    <asp:Button ID="Button2" runat="server" CssClass="auto-style19" Height="30px" OnClick="Button2_Click" Text="-" Width="30px" />
                    </strong></td>
                <td class="auto-style15">KATEGORİ LİSTESİ</td>
            </tr>
        </table>
    </asp:Panel>

    <asp:Panel ID="Panel2" runat="server">
        <asp:DataList ID="DataList1" runat="server" Width="442px">
            <ItemTemplate>
                <table class="auto-style7">
                    <tr>
                        <td class="auto-style14">
                            <asp:Label ID="Label1" runat="server" CssClass="auto-style12" Text='<%# Eval("KategoriAd") %>'></asp:Label>
                        </td>
                        <td class="auto-style13">
                            <a href="Kategorilerr.aspx?KategoriId=<%#Eval("KategoriId") %>&islem=sil">
                            <asp:Image ID="Image2" runat="server" Height="30px" ImageUrl="~/ikonlar/sil.png" Width="31px" />
                        </a>
                                </td>
                        <td class="auto-style13">
                            <a href="KategoriDuzenle.aspx?KategoriId=<%#Eval("KategoriId") %>">
                            <asp:Image ID="Image3" runat="server" Height="30px" ImageUrl="~/ikonlar/güncelle.png" Width="30px" />

                            </a>
                        </td>
                    </tr>
                </table>

            </ItemTemplate>
        </asp:DataList>
        </asp:Panel>



        

    <br />
    <asp:Panel ID="Panel3" runat="server" >

        <table class="auto-style21">
            <tr>
                <td class="auto-style17"><strong>
                    <asp:Button ID="Button3" runat="server" CssClass="auto-style16" Height="30px" Text="+" Width="30px" OnClick="Button3_Click1" />
                    </strong></td>
                <td class="auto-style18"><strong>
                    <asp:Button ID="Button4" runat="server" CssClass="auto-style19" Height="30px"  Text="-" Width="30px" OnClick="Button4_Click"  />
                    </strong></td>
                <td class="auto-style20">KATEGORİ EKLEME</td>
            </tr>
        </table>
        
    </asp:Panel>
    <asp:Panel ID="Panel4" runat="server">
<br />
        <table class="auto-style7">
            <tr>
                <td class="auto-style9"></td>
                <td class="auto-style9"></td>
            </tr>
            <tr>
                <td>KATEGORİ AD:</td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>KATEGORİ İKON:</td>
                <td>
                    <asp:FileUpload ID="FileUpload1" runat="server" />
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td><strong>
                    <asp:Button ID="BtnEkle" runat="server" CssClass="auto-style22" Text="EKLE" Width="100px" OnClick="BtnEkle_Click" />
                    </strong></td>
            </tr>
        </table>


    </asp:Panel>

</asp:Content>
