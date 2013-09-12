<%@ Page Language="C#" AutoEventWireup="true" CodeFile="f2067_localDBDemo.aspx.cs" Inherits="f2067_localDBDemo" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Paikalliset videot</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <h1>Tässä kotimaisia rainoja (oliokokoelma)</h1>

        <asp:Button ID="btnGetMovies" runat="server" Text="Hae elokuvat (oliokokoelma)" OnClick="btnGetMovies_Click" />

        <asp:DataList ID="myDataList" runat="server">
            <ItemTemplate>Elokuva <%#Eval("Title") %> Ohjannut <%#Eval("Director") %></ItemTemplate>
        </asp:DataList>
    </div>
    </form>
</body>
</html>
