<%@ Page Language="C#" AutoEventWireup="true" CodeFile="F2067_smliiga.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <h2>SM-liiga</h2>

        <div>
            Valitse joukkue:
            <asp:DropDownList ID="ddSeurat" DataSourceID="SqlDataSource2" runat="server" DataValueField="seura" DataTextField="seura">
            </asp:DropDownList>
        </div>
        <div>
            Valitse pelipaikka:
            <asp:DropDownList ID="ddPelipaikka" DataSourceID="SqlDataSource3" runat="server" DataValueField="pelipaikka" DataTextField="pelipaikka">
            </asp:DropDownList>
        </div>
        <div>
            Järjestä:
            <asp:DropDownList ID="ddOrder" runat="server">
            </asp:DropDownList>
         </div>

        <asp:Button ID="btnSeurat" Text="Listaa pelaajat" runat="server" OnClick="btnSeurat_Click"  /> 

        <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource">
            <HeaderTemplate>
                <table border="1">
                    <tr>
                        <th>Etunimi</th>
                        <th>Sukunimi</th>
                        <th>Seura</th>
                        <th>Pelipaikka</th>
                        <th>Pisteet</th>
                    </tr>
            </HeaderTemplate>

            <ItemTemplate>
                <tr>
                    <td><%#Eval("etunimi") %></td>

                    <td>
                        <a href="f2067_smliiga_edit.aspx?id=<%#Eval("id") %>">
                            <%#Eval("sukunimi") %>
                        </a>
                    </td>

                    <td><%#Eval("seura") %></td>
                    <td><%#Eval("pelipaikka") %></td>
                    <td><%#Eval("pisteet") %></td>
                </tr>
            </ItemTemplate>

            <FooterTemplate>
                </table>
            </FooterTemplate>
        </asp:Repeater>

        <asp:SqlDataSource ID="SqlDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT * FROM [Pisteet]"></asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT DISTINCT * FROM [Seurat]"></asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT DISTINCT [pelipaikka] FROM [Pisteet]"></asp:SqlDataSource>



    </div>

    </form>
</body>
</html>
