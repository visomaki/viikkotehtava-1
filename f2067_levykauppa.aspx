<%@ Page Language="C#" AutoEventWireup="true" CodeFile="f2067_levykauppa.aspx.cs" Inherits="f2067_levykauppa" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:XmlDataSource ID="XmlDataSource" runat="server" DataFile="~/App_Data/LevykauppaX.xml" XPath="Records/genre/record"></asp:XmlDataSource>
            <table>
                <asp:Repeater ID="Repeater" runat="server" DataSourceID="XmlDataSource">
                    <ItemTemplate>
                        <tr>
                        <td>
                            <img src="images/<%# XPath("@ISBN") %>.jpg" />
                        </td>

                        <td>
                            <%# XPath("@Artist") %> : <%# XPath("@Title") %> <br />
                            ISBN: <a href="f2067_levykauppa2.aspx?ISBN=<%# XPath("@ISBN") %>"><%# XPath("@ISBN") %></a>   <br />
                            Hinta: <%# XPath("@Price") %> <br /> <br />
                        </td>
                        </tr>
                    </ItemTemplate>
                </asp:Repeater>
            </table>
        </div>
    </form>
</body>
</html>
