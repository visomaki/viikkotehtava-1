<%@ Page Language="C#" AutoEventWireup="true" CodeFile="f2067_levykauppa2.aspx.cs" Inherits="f2067_levykauppa2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:Image ID="img" runat="server" />

        <h2>
        <asp:Label ID="header" runat="server" Text="Label"></asp:Label>
        </h2>

        <b>ISBN:</b><asp:Label ID="labelISBN" runat="server" Text="Label"></asp:Label> <br />
        <b>Hinta:</b><asp:Label ID="labelPrice" runat="server" Text="Label"></asp:Label>

        <h3>Levyn biisit:</h3>

        <asp:Repeater ID="songList" runat="server">
            <ItemTemplate>
            <%# Eval("name") %> <br />
            </ItemTemplate>
        </asp:Repeater>

        <div>
            <a href ="f2067_levykauppa.aspx" >Takaisin</a>
        </div>
    </div>
    </form>
</body>
</html>
