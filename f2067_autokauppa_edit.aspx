<%@ Page Language="C#" AutoEventWireup="true" CodeFile="f2067_autokauppa_edit.aspx.cs" Theme="autokauppa" Inherits="f2067_autokauppa_edit" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>

        <h1>
        <asp:Label ID="header" runat="server" Text="Label"></asp:Label>
        </h1>

        ID: <asp:TextBox ID="tbId" runat="server"></asp:TextBox>

        Merkki: <asp:TextBox ID="tbMerkki" runat="server"></asp:TextBox>

        Vuosimalli: <asp:TextBox ID="tbVuosiMalli" runat="server"></asp:TextBox>

        Rekisterinumero: <asp:TextBox ID="tbRekkari" runat="server"></asp:TextBox>
        Malli: <asp:TextBox ID="tbMalli" runat="server"></asp:TextBox>

        Myyntihinta: <asp:TextBox ID="tbMyyntiHinta" runat="server"></asp:TextBox>
        Sisäänostohinta: <asp:TextBox ID="tbSisaanOstoHinta" runat="server"></asp:TextBox>


        <asp:Button ID="btnSave" runat="server" Text="Tallenna" OnClick="btnSave_Click" CssClass="clean-gray" />
        <asp:Button ID="btnDelete" runat="server" Text="Poista auto" OnClick="btnDelete_Click" CssClass="clean-gray"  />



    </div>
    </form>
</body>
</html>
