<%@ Page Language="C#" AutoEventWireup="true" CodeFile="f2067_index.aspx.cs" Inherits="f2067_index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>F2067 - Vesa Isomäki</title>
    <style>
        body
        {
            font-family: Arial;
            background-color: rgb(16, 16, 16);
            text-align: center;
        }

        .container
        {
            background-color: rgb(30, 30, 30);
            margin-top: 60px;
            margin-left: auto;
            margin-right: auto;
            width: 400px;
            border: 1px solid;
            border-top-left-radius: 6px;
            border-top-right-radius: 6px;
            box-shadow: 4px 4px rgb(4, 4, 4);
        }

        h1
        {
            text-align: center;
            margin: 4px;
        }

        .link
        {
            margin-top: 2px;
            background-color: rgb(52, 52, 52);
        }

        a
        {
            color: green;
        }

        .name
        {
            color: gray;
            margin: 30px;
            
        }

    </style>
</head>

<body>
    <form id="form1" runat="server">

    <div class="container">
        <h1>Viikkotehtävät</h1>
        <div class="link"><asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/f2067_valuutta.aspx">Viikkotehtävä 1 (valuuttamuunnin)</asp:HyperLink></div>
        <div class="link"><asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/f2067_elakelaskuri.aspx">Viikkotehtävä 2 (eläkelaskuri)</asp:HyperLink></div>
        <div class="link"><asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="~/page1.aspx">Viikkotehtävä 3 (Oma sivusto)</asp:HyperLink></div>
        <div class="link"><asp:HyperLink ID="HyperLink4" runat="server" NavigateUrl="~/palaute.aspx">VäliPalaute-tehtävä</asp:HyperLink></div>
        <div class="link"><asp:HyperLink ID="HyperLink5" runat="server" NavigateUrl="~/f2067_wanhatautot.aspx">Viikkotehtävä 4 (WanhatAutot)</asp:HyperLink></div>
        <div class="link"><asp:HyperLink ID="HyperLink6" runat="server" NavigateUrl="~/f2067_levykauppa.aspx">Viikkotehtävä 5 (levykauppa)</asp:HyperLink></div>
    </div>

    <div class="name">
        <p>  <asp:Image ID="Image1" runat="server" ImageUrl="~/images/coding.gif" /> </p>
        F2067 - Vesa Isomäki
    </div>

    </form>
</body>
</html>
