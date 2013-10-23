<%@ Page Language="C#" AutoEventWireup="true" CodeFile="f2067_wanhatautot.aspx.cs" Inherits="f2067_wanhatautot" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
    <head runat="server">
        <title></title>
    </head>
    <body>
        <form id="form1" runat="server">
            <div>
                <h1> Wanhat Autot </h1>

                Hakusana:
                <asp:TextBox ID="tbKeyword" runat="server"></asp:TextBox> <br />
                Järjestys:
                <asp:RadioButton ID="rb1" runat="server" Text="Halvin ensin" GroupName="priceOrderGroup" />
                <asp:RadioButton ID="rb2" runat="server" Text="Kallein ensin" GroupName="priceOrderGroup" /> <br />
                Malli:
                <asp:DropDownList ID="ddCarModel" runat="server" DataTextField="Title" DataValueField="Year"></asp:DropDownList> 

                <br />
                <asp:Button ID="btnSearch" runat="server" Text="Hae!" OnClick="Button1_Click" />

                <asp:Repeater id="autot" runat="server">
                    <HeaderTemplate>
                        <table border="1" width="100%">
                            <tr>
                                <th>ID</th>
                            <th>Merkki</th>
                        <th>Malli</th>
                        <th>VM</th>
                        <th>Myyntihinta</th>
                        <th>Sisäänostohinta</th>
                        </tr>
                    </HeaderTemplate>

                    <ItemTemplate>
                        <tr>
                            <td><%#Eval("aid") %></td>
                            <td><%#Eval("merkki") %></td>
                            <td><%#Eval("malli") %></td>
                            <td><%#Eval("vm") %></td>
                            <td><%#Eval("myyntiHinta") %></td>
                            <td><%#Eval("sisaanOstoHinta") %></td>
                        </tr>
                    </ItemTemplate>
                    <FooterTemplate>
                        </table>
                    </FooterTemplate>
                </asp:Repeater>
            </div>
        </form>
    </body>
</html>
