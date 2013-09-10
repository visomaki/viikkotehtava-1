<%@ Page Language="C#" AutoEventWireup="true" CodeFile="VKTeht1.aspx.cs" Inherits="VKTeht1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Viikkotehtävä 1</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <h1>Tehtävä on ratkaistu</h1>
        <asp:Button ID="btnPress" runat="server" Text="Paina Tästä" OnClick="btnPress_Click" />
        <div runat="server" id="tulos"></div>
    </div>
    
    </form>
</body>
</html>
