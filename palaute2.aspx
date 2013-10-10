<%@ Page Language="C#" AutoEventWireup="true" CodeFile="palaute2.aspx.cs" Inherits="palaute2" MasterPageFile="f2067_MasterPage.master" Theme="theme" %>

<asp:Content ID="Content1" ContentPlaceHolderId="CPH1" runat="server">
    <form id="Form1" runat="server">
		<div id="text">
			

           <h1> Kaikki palautteet </h1>




            <asp:Repeater id="palautteet" runat="server">

            <HeaderTemplate>
            <table border="1" width="100%">
            <tr>
            <th>Päivämäärä</th>
            <th>Tekijä</th>
            <th>Opittu</th>
            <th>Haluan oppia</th>
            <th>Hyvää</th>
            <th>Parannettavaa</th>
            <th>Muuta</th>
            </tr>
            </HeaderTemplate>

            <ItemTemplate>
                <tr>
                    <td><%#Eval("pvm") %></td>
                    <td><%#Eval("tekija") %></td>
                    <td><%#Eval("opittu") %></td>
                    <td><%#Eval("haluanoppia") %></td>
                    <td><%#Eval("hyvaa") %></td>
                    <td><%#Eval("parannettavaa") %></td>
                    <td><%#Eval("muuta") %></td>
                </tr>
            </ItemTemplate>

            <FooterTemplate>
            </table>
            </FooterTemplate>

            </asp:Repeater>




		</div>
    </form>
</asp:Content>
