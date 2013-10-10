

<%@ Page Language="C#" AutoEventWireup="true" CodeFile="palaute.aspx.cs" Inherits="palaute" MasterPageFile="f2067_MasterPage.master" Theme="theme" %>

<asp:Content ID="Content1" ContentPlaceHolderId="CPH1" runat="server">


    
    <form id="form1" runat="server">

        <div id="text">

        <h1>Anna palautetta</h1>

        <div style="margin:20px;">

        <div>
            <div>Päivämäärä:</div>
            <asp:TextBox ID="tbDate" runat="server" TextMode="Date" Width="300px"></asp:TextBox>

            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Täytä kenttä!" ControlToValidate="tbDate">
            </asp:RequiredFieldValidator>
        </div>

            <div>
            <div>Nimi:</div>
            <asp:TextBox ID="tbName" runat="server" Width="300px"></asp:TextBox>

            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Täytä kenttä!" ControlToValidate="tbName">
            </asp:RequiredFieldValidator>
        </div>

        <div>
            <div> Olen oppinut:</div>
            <asp:TextBox ID="tbLearn1" runat="server" Rows="5" TextMode="MultiLine" Width="300px" Wrap="True"></asp:TextBox>

            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Täytä kenttä!" ControlToValidate="tbLearn1">
            </asp:RequiredFieldValidator>
        </div>

        <div>
            <div>Haluan oppia:</div>
            <asp:TextBox ID="tbLearn2" runat="server" Rows="5" TextMode="MultiLine" Width="300px"></asp:TextBox>

            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Täytä kenttä!" ControlToValidate="tbLearn2">
            </asp:RequiredFieldValidator>
        </div>

        <div>
            <div>Hyvää:</div>
            <asp:TextBox ID="tbGood" runat="server" Rows="5" TextMode="MultiLine" Width="300px"></asp:TextBox>

            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Täytä kenttä!" ControlToValidate="tbGood">
            </asp:RequiredFieldValidator>
        </div>

        <div>
            <div>Parannettavaa:</div>
            <asp:TextBox ID="tbBad" runat="server" Rows="5" TextMode="MultiLine" Width="300px"></asp:TextBox>

            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="Täytä kenttä!" ControlToValidate="tbBad">
            </asp:RequiredFieldValidator>
        </div>

        <div>
            <div>Muuta:</div>
            <asp:TextBox ID="tbOther" runat="server" Rows="5" TextMode="MultiLine" Width="300px"></asp:TextBox>

            <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ErrorMessage="Täytä kenttä!" ControlToValidate="tbOther">
            </asp:RequiredFieldValidator>
        </div>

        <asp:Button ID="btnSend" runat="server" Text="Lähetä" OnClick="btnSend_Click" />
    </div>


    <div>
    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="palaute2.aspx">Palautteen selaus</asp:HyperLink>
    </div>


        </div>
    </form>







</asp:Content>