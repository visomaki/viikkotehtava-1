<%@ Page Language="C#" AutoEventWireup="true" CodeFile="f2067_valuutta2.aspx.cs" Inherits="f2067_valuutta2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>

    <h1>Tervetuloa:</h1>

    <form id="form1" runat="server">
    <div>
        <asp:TextBox ID="name" runat="server" ReadOnly="true" Width="200px"></asp:TextBox>
    </div>

    <div>
        <asp:TextBox ID="tbValuutta" runat="server" text="100" Width="200px"></asp:TextBox>
    </div>

        <div>
            <asp:Button runat="server" Text="Markat euroksi" OnClick="Unnamed1_Click" /> 
        </div>


    </form>
</body>
</html>
