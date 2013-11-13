<%@ Page Language="C#" AutoEventWireup="true" EnableTheming="true" StylesheetTheme="autokauppa" CodeFile="f2067_autokauppa.aspx.cs" Inherits="f2067_autokauppa" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>

</head>
<body>
    <form id="form1" runat="server">
    <div>

        <h1>Autokauppa</h1>

        <asp:Repeater id="carList" runat="server">
            <HeaderTemplate>
                <table class="bordered">
                    <tr>
                        <th>ID</th>
                        <th>Merkki</th>
                        <th>Malli</th>
                         <th>Rekisterinumero</th>
                        <th>VM</th>
                        <th>Myyntihinta</th>
                        <th>Sisäänostohinta</th>
                    </tr>
            </HeaderTemplate>

            <ItemTemplate>
                <tr>

                    <%

                    %>

                    <td> <a href="f2067_autokauppa_edit.aspx?id=<%#Eval("ID") %>" ><%#Eval("ID") %></a>    </td>

                    <td><%#Eval("Merkki") %></td>
                    <td><%#Eval("Malli") %></td>
                    <td><%#Eval("Rekkari") %></td>
                    <td><%#Eval("VuosiMalli") %></td>
                    <td><%#Eval("MyyntiHinta") %></td>
                    <td><%#Eval("SisaanOstoHinta") %></td>

                </tr>
            </ItemTemplate>
            <FooterTemplate>
                </table>
            </FooterTemplate>
        </asp:Repeater>

        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/f2067_autokauppa_edit.aspx" CssClass="clean-gray">Lisää uusi auto</asp:HyperLink>

    </div>
    </form>
</body>
</html>
