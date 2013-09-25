<%@ Page Language="C#" AutoEventWireup="true" CodeFile="f2067_valuutta.aspx.cs" Inherits="valuutta" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        Nimesi, kiitos: <asp:textbox ID="tbName" runat="server"></asp:textbox>
    </div>

        <div>

            <asp:Button ID="btnParam" runat="server" Text="Välitä parametrinä" OnClick="btnParam_Click" />
            <asp:Button ID="btnSession" runat="server" Text="Tallenna Session" OnClick="btnSession_Click" />
            <asp:Button ID="btnCookie" runat="server" Text="Tallenna Cookie" OnClick="btnCookie_Click" />
        </div>

    </form>
</body>
</html>

