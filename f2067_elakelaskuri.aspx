<%@ Page Language="C#" Theme="elakelaskuri" AutoEventWireup="true" CodeFile="f2067_elakelaskuri.aspx.cs" Inherits="f2067_elakelaskuri" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div style="width: 300px; padding: 6px; border: 1px solid; border-radius: 4px; font-family: Arial;">
            <div style="font-size: 30px;">Eläkelaskuri</div>

            <hr />

            <div>Ikä</div>
            <asp:TextBox ID="ageTb" runat="server" Text="20"></asp:TextBox>
            vuotta

            <div style="color: red; font-size: 12px;">
                <asp:RangeValidator id="Range1"
                    ControlToValidate="ageTb"
                    MinimumValue="18"
                    MaximumValue="63"
                    Type="Integer"
                    EnableClientScript="false"
                    Text="Ikä täytyy olla väliltä 18-63!"
                    runat="server"/>
            </div>

            <div style="margin-top: 4px;">Palkka</div>
            <asp:TextBox ID="salaryTb" runat="server" Text="2000"></asp:TextBox>
            euroa/kk

            <div style="color: red; font-size: 12px;">
                <asp:RangeValidator id="RangeValidator2"
                    ControlToValidate="salaryTb"
                    MinimumValue="100"
                    MaximumValue="100000"
                    Type="Integer"
                    EnableClientScript="false"
                    Text="Palkka täytyy olla väliltä 100-100,000!"
                    runat="server"/>
            </div>

            <div style="margin-top: 4px;">    
                 <asp:Button ID="calcBtn" runat="server" Text="Laske" OnClick="calcBtn_Click" />
            </div>

            <hr />

            <div>
                <div>Arvio lakisääteisestä eläkkeestä </div>
                <asp:TextBox ID="resultTb" runat="server" ReadOnly="True"></asp:TextBox> €
            </div>
        </div>
    </form>
</body>
</html>
