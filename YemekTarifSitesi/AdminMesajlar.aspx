<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="AdminMesajlar.aspx.cs" Inherits="YemekTarifSitesi.AdminMesajlar" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style14 {
            width: 209px;
        }

        .auto-style12 {
            font-size: large;
        }

        .auto-style13 {
            text-align: right;
        }

        .auto-style17 {
            height: 28px;
            width: 36px;
        }

        .auto-style18 {
            height: 28px;
            width: 35px;
        }

        .auto-style15 {
            height: 28px;
            width: 365px;
        }

        .auto-style20 {
            width: 100%;
            background-color: #CCCCFF;
        }

        .auto-style16 {
            font-weight: bold;
            font-size: large;
        }

        .auto-style19 {
            font-weight: bold;
            font-size: large;
            margin-left: 0px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <asp:Panel ID="Panel1" runat="server">
        <table class="auto-style20">
            <tr>
                <td class="auto-style17"><strong>
                    <asp:Button ID="Button1" runat="server" CssClass="auto-style16" Height="30px" Text="+" Width="30px" OnClick="Button1_Click" />
                </strong></td>
                <td class="auto-style18"><strong>
                    <asp:Button ID="Button2" runat="server" CssClass="auto-style19" Height="30px" Text="-" Width="30px" OnClick="Button2_Click" />
                </strong></td>
                <td class="auto-style15">MESAJ LİSTESİ</td>
            </tr>
        </table>
    </asp:Panel>


    <asp:Panel ID="Panel2" runat="server">
        <asp:DataList ID="DataList1" runat="server" Width="442px">
            <ItemTemplate>
                <table class="auto-style7">
                    <tr>
                        <td class="auto-style14">
                            <asp:Label ID="Label1" runat="server" CssClass="auto-style12" Text='<%# Eval("MesajGonderen") %>'></asp:Label>
                        </td>
                        <td class="auto-style13">
                            <a href="AdminMesajDetay.aspx?MesajId=<%#Eval("MesajId") %>">
                                <asp:Image ID="Image3" runat="server" Height="30px" ImageUrl="~/ikonlar/güncelle.png" Width="30px" />
                            </a>
                                    </td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
    </asp:Panel>

</asp:Content>
