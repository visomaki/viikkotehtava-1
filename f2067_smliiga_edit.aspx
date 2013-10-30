<%@ Page Language="C#" AutoEventWireup="true" CodeFile="f2067_smliiga_edit.aspx.cs" Inherits="f2067_smliiga_edit" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 128px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>

        <h2>Pelaajan lisäys / muokkaus</h2>

        <table>
            <tr>
                <td>Etunimi:</td>
                <td class="auto-style1"><asp:TextBox ID="tbEtunimi" runat="server"></asp:TextBox></td>
            </tr>

            <tr>
                <td>Sukunimi:</td>
                <td class="auto-style1"><asp:TextBox ID="tbSukunimi" runat="server"></asp:TextBox></td>
            </tr>

            <tr>
                <td>Joukkue:</td>
                <td class="auto-style1"><asp:DropDownList ID="ddSeura" runat="server" DataSourceID="SqlDataSource2" DataValueField="seura" DataTextField="seura"></asp:DropDownList></td>
            </tr>

            <tr>
                <td>Pelipaikka:</td>
                <td class="auto-style1"><asp:DropDownList ID="ddPelipaikka" runat="server" DataSourceID="SqlDataSource3" DataValueField="pelipaikka" DataTextField="pelipaikka"></asp:DropDownList></td>
            </tr>

            <tr>
            <td><asp:Button ID="btnSave" runat="server" Text="Tallenna" OnClick="btnSave_Click" />

            </tr>


        </table>

        <asp:Label ID="statusLabel" runat="server" Text=""></asp:Label>

        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT DISTINCT * FROM [Seurat]"></asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT DISTINCT [pelipaikka] FROM [Pisteet]"></asp:SqlDataSource>
    </div>
    </form>
</body>
</html>
