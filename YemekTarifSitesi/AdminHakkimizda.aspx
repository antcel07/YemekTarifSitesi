<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="AdminHakkimizda.aspx.cs" Inherits="YemekTarifSitesi.AdminHakkimizda" %>
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
        .auto-style20 {
            margin-left: 80px;
        }
        .auto-style21 {
            font-weight: bold;
        }
        .auto-style22 {
            text-align: center;
            margin-left: 80px;
        }
        .auto-style23 {
            font-style: italic;
            font-size: medium;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Panel ID="Panel1" runat="server" CssClass="auto-style10">
        <table class="auto-style7">
            <tr>
                <td class="auto-style17"><strong>
                    <asp:Button ID="Button1" runat="server" CssClass="auto-style16" Height="30px"  Text="+" Width="30px" OnClick="Button1_Click"  />
                    </strong></td>
                <td class="auto-style18"><strong>
                    <asp:Button ID="Button2" runat="server" CssClass="auto-style19" Height="30px"  Text="-" Width="30px" OnClick="Button2_Click"  />
                    </strong></td>
                <td class="auto-style15">HAKKIMIZDA</td>
            </tr>
        </table>
    </asp:Panel>

    <asp:Panel ID="Panel2" runat="server">
        <table class="auto-style7">
            <tr>
                <td class="auto-style20"><em>
                    <asp:TextBox ID="TextBox1" runat="server" CssClass="auto-style23" Height="200px" TextMode="MultiLine" Width="435px"></asp:TextBox>
                    </em></td>
            </tr>
            <tr>
                <td class="auto-style22"><strong>
                    <asp:Button ID="Button3" runat="server" CssClass="auto-style21" OnClick="Button3_Click" Text="GÜNCELLE" Width="150px" />
                    </strong></td>
            </tr>
        </table>


    </asp:Panel>

</asp:Content>
