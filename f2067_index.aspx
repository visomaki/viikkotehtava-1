<%@ Page Language="C#" AutoEventWireup="true" CodeFile="f2067_index.aspx.cs" Inherits="f2067_index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>

        <h1>Main Page</h1>

        <asp:HyperLink ID="db" runat="server" NavigateUrl="~/f2067_DBDemo.aspx">DB Demo</asp:HyperLink> <br />
        <asp:HyperLink ID="localdb" runat="server" NavigateUrl="~/f2067_localDBDemo.aspx">Local DB Demo</asp:HyperLink> <br />
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/f2067_valuutta.aspx">Kotitehtävä 1</asp:HyperLink> <br />
        <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/f2067_elakelaskuri.aspx">Kotitehtävä 2</asp:HyperLink> <br />
    </div>

    </form>
</body>
</html>
