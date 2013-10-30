<%@ Page Language="C#" AutoEventWireup="true" CodeFile="f2067_smliiga2.aspx.cs" Inherits="f2067_smliiga2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">

    <div>
        <h2>Pelaajien muokkaus</h2>
        <asp:GridView ID="GridView1" runat="server" DataSourceID="SqlDataSource" AutoGenerateEditButton="true">
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT * FROM [Pisteet]" ConflictDetection="CompareAllValues" DeleteCommand="DELETE FROM [Pisteet] WHERE (([id] = ?) OR ([id] IS NULL AND ? IS NULL)) AND (([sukunimi] = ?) OR ([sukunimi] IS NULL AND ? IS NULL)) AND (([etunimi] = ?) OR ([etunimi] IS NULL AND ? IS NULL)) AND (([seura] = ?) OR ([seura] IS NULL AND ? IS NULL)) AND (([nro] = ?) OR ([nro] IS NULL AND ? IS NULL)) AND (([pelipaikka] = ?) OR ([pelipaikka] IS NULL AND ? IS NULL)) AND (([ottelut] = ?) OR ([ottelut] IS NULL AND ? IS NULL)) AND (([maalit] = ?) OR ([maalit] IS NULL AND ? IS NULL)) AND (([syötöt] = ?) OR ([syötöt] IS NULL AND ? IS NULL)) AND (([pisteet] = ?) OR ([pisteet] IS NULL AND ? IS NULL)) AND (([plus] = ?) OR ([plus] IS NULL AND ? IS NULL)) AND (([miinus] = ?) OR ([miinus] IS NULL AND ? IS NULL)) AND (([plusmiinus] = ?) OR ([plusmiinus] IS NULL AND ? IS NULL)) AND (([jäähyt] = ?) OR ([jäähyt] IS NULL AND ? IS NULL)) AND (([peliaika] = ?) OR ([peliaika] IS NULL AND ? IS NULL))" InsertCommand="INSERT INTO [Pisteet] ([id], [sukunimi], [etunimi], [seura], [nro], [pelipaikka], [ottelut], [maalit], [syötöt], [pisteet], [plus], [miinus], [plusmiinus], [jäähyt], [peliaika]) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)" OldValuesParameterFormatString="original_{0}" UpdateCommand="UPDATE [Pisteet] SET [sukunimi] = ?, [etunimi] = ?, [seura] = ?, [nro] = ?, [pelipaikka] = ?, [ottelut] = ?, [maalit] = ?, [syötöt] = ?, [pisteet] = ?, [plus] = ?, [miinus] = ?, [plusmiinus] = ?, [jäähyt] = ?, [peliaika] = ? WHERE (([id] = ?) OR ([id] IS NULL AND ? IS NULL)) AND (([sukunimi] = ?) OR ([sukunimi] IS NULL AND ? IS NULL)) AND (([etunimi] = ?) OR ([etunimi] IS NULL AND ? IS NULL)) AND (([seura] = ?) OR ([seura] IS NULL AND ? IS NULL)) AND (([nro] = ?) OR ([nro] IS NULL AND ? IS NULL)) AND (([pelipaikka] = ?) OR ([pelipaikka] IS NULL AND ? IS NULL)) AND (([ottelut] = ?) OR ([ottelut] IS NULL AND ? IS NULL)) AND (([maalit] = ?) OR ([maalit] IS NULL AND ? IS NULL)) AND (([syötöt] = ?) OR ([syötöt] IS NULL AND ? IS NULL)) AND (([pisteet] = ?) OR ([pisteet] IS NULL AND ? IS NULL)) AND (([plus] = ?) OR ([plus] IS NULL AND ? IS NULL)) AND (([miinus] = ?) OR ([miinus] IS NULL AND ? IS NULL)) AND (([plusmiinus] = ?) OR ([plusmiinus] IS NULL AND ? IS NULL)) AND (([jäähyt] = ?) OR ([jäähyt] IS NULL AND ? IS NULL)) AND (([peliaika] = ?) OR ([peliaika] IS NULL AND ? IS NULL))">
            <DeleteParameters>
                <asp:Parameter Name="original_id" Type="Int16"></asp:Parameter>
                <asp:Parameter Name="original_sukunimi" Type="String"></asp:Parameter>
                <asp:Parameter Name="original_sukunimi" Type="String"></asp:Parameter>
                <asp:Parameter Name="original_etunimi" Type="String"></asp:Parameter>
                <asp:Parameter Name="original_etunimi" Type="String"></asp:Parameter>
                <asp:Parameter Name="original_seura" Type="String"></asp:Parameter>
                <asp:Parameter Name="original_seura" Type="String"></asp:Parameter>
                <asp:Parameter Name="original_nro" Type="Int16"></asp:Parameter>
                <asp:Parameter Name="original_nro" Type="Int16"></asp:Parameter>
                <asp:Parameter Name="original_pelipaikka" Type="String"></asp:Parameter>
                <asp:Parameter Name="original_pelipaikka" Type="String"></asp:Parameter>
                <asp:Parameter Name="original_ottelut" Type="Int16"></asp:Parameter>
                <asp:Parameter Name="original_ottelut" Type="Int16"></asp:Parameter>
                <asp:Parameter Name="original_maalit" Type="Int16"></asp:Parameter>
                <asp:Parameter Name="original_maalit" Type="Int16"></asp:Parameter>
                <asp:Parameter Name="original_sy&#246;t&#246;t" Type="Int16"></asp:Parameter>
                <asp:Parameter Name="original_sy&#246;t&#246;t" Type="Int16"></asp:Parameter>
                <asp:Parameter Name="original_pisteet" Type="Int16"></asp:Parameter>
                <asp:Parameter Name="original_pisteet" Type="Int16"></asp:Parameter>
                <asp:Parameter Name="original_plus" Type="Int16"></asp:Parameter>
                <asp:Parameter Name="original_plus" Type="Int16"></asp:Parameter>
                <asp:Parameter Name="original_miinus" Type="Int16"></asp:Parameter>
                <asp:Parameter Name="original_miinus" Type="Int16"></asp:Parameter>
                <asp:Parameter Name="original_plusmiinus" Type="Int16"></asp:Parameter>
                <asp:Parameter Name="original_plusmiinus" Type="Int16"></asp:Parameter>
                <asp:Parameter Name="original_j&#228;&#228;hyt" Type="Int16"></asp:Parameter>
                <asp:Parameter Name="original_j&#228;&#228;hyt" Type="Int16"></asp:Parameter>
                <asp:Parameter Name="original_peliaika" Type="DateTime"></asp:Parameter>
                <asp:Parameter Name="original_peliaika" Type="DateTime"></asp:Parameter>
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="id" Type="Int16"></asp:Parameter>
                <asp:Parameter Name="sukunimi" Type="String"></asp:Parameter>
                <asp:Parameter Name="etunimi" Type="String"></asp:Parameter>
                <asp:Parameter Name="seura" Type="String"></asp:Parameter>
                <asp:Parameter Name="nro" Type="Int16"></asp:Parameter>
                <asp:Parameter Name="pelipaikka" Type="String"></asp:Parameter>
                <asp:Parameter Name="ottelut" Type="Int16"></asp:Parameter>
                <asp:Parameter Name="maalit" Type="Int16"></asp:Parameter>
                <asp:Parameter Name="sy&#246;t&#246;t" Type="Int16"></asp:Parameter>
                <asp:Parameter Name="pisteet" Type="Int16"></asp:Parameter>
                <asp:Parameter Name="plus" Type="Int16"></asp:Parameter>
                <asp:Parameter Name="miinus" Type="Int16"></asp:Parameter>
                <asp:Parameter Name="plusmiinus" Type="Int16"></asp:Parameter>
                <asp:Parameter Name="j&#228;&#228;hyt" Type="Int16"></asp:Parameter>
                <asp:Parameter Name="peliaika" Type="DateTime"></asp:Parameter>
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="sukunimi" Type="String"></asp:Parameter>
                <asp:Parameter Name="etunimi" Type="String"></asp:Parameter>
                <asp:Parameter Name="seura" Type="String"></asp:Parameter>
                <asp:Parameter Name="nro" Type="Int16"></asp:Parameter>
                <asp:Parameter Name="pelipaikka" Type="String"></asp:Parameter>
                <asp:Parameter Name="ottelut" Type="Int16"></asp:Parameter>
                <asp:Parameter Name="maalit" Type="Int16"></asp:Parameter>
                <asp:Parameter Name="sy&#246;t&#246;t" Type="Int16"></asp:Parameter>
                <asp:Parameter Name="pisteet" Type="Int16"></asp:Parameter>
                <asp:Parameter Name="plus" Type="Int16"></asp:Parameter>
                <asp:Parameter Name="miinus" Type="Int16"></asp:Parameter>
                <asp:Parameter Name="plusmiinus" Type="Int16"></asp:Parameter>
                <asp:Parameter Name="j&#228;&#228;hyt" Type="Int16"></asp:Parameter>
                <asp:Parameter Name="peliaika" Type="DateTime"></asp:Parameter>
                <asp:Parameter Name="original_id" Type="Int16"></asp:Parameter>
                <asp:Parameter Name="original_sukunimi" Type="String"></asp:Parameter>
                <asp:Parameter Name="original_sukunimi" Type="String"></asp:Parameter>
                <asp:Parameter Name="original_etunimi" Type="String"></asp:Parameter>
                <asp:Parameter Name="original_etunimi" Type="String"></asp:Parameter>
                <asp:Parameter Name="original_seura" Type="String"></asp:Parameter>
                <asp:Parameter Name="original_seura" Type="String"></asp:Parameter>
                <asp:Parameter Name="original_nro" Type="Int16"></asp:Parameter>
                <asp:Parameter Name="original_nro" Type="Int16"></asp:Parameter>
                <asp:Parameter Name="original_pelipaikka" Type="String"></asp:Parameter>
                <asp:Parameter Name="original_pelipaikka" Type="String"></asp:Parameter>
                <asp:Parameter Name="original_ottelut" Type="Int16"></asp:Parameter>
                <asp:Parameter Name="original_ottelut" Type="Int16"></asp:Parameter>
                <asp:Parameter Name="original_maalit" Type="Int16"></asp:Parameter>
                <asp:Parameter Name="original_maalit" Type="Int16"></asp:Parameter>
                <asp:Parameter Name="original_sy&#246;t&#246;t" Type="Int16"></asp:Parameter>
                <asp:Parameter Name="original_sy&#246;t&#246;t" Type="Int16"></asp:Parameter>
                <asp:Parameter Name="original_pisteet" Type="Int16"></asp:Parameter>
                <asp:Parameter Name="original_pisteet" Type="Int16"></asp:Parameter>
                <asp:Parameter Name="original_plus" Type="Int16"></asp:Parameter>
                <asp:Parameter Name="original_plus" Type="Int16"></asp:Parameter>
                <asp:Parameter Name="original_miinus" Type="Int16"></asp:Parameter>
                <asp:Parameter Name="original_miinus" Type="Int16"></asp:Parameter>
                <asp:Parameter Name="original_plusmiinus" Type="Int16"></asp:Parameter>
                <asp:Parameter Name="original_plusmiinus" Type="Int16"></asp:Parameter>
                <asp:Parameter Name="original_j&#228;&#228;hyt" Type="Int16"></asp:Parameter>
                <asp:Parameter Name="original_j&#228;&#228;hyt" Type="Int16"></asp:Parameter>
                <asp:Parameter Name="original_peliaika" Type="DateTime"></asp:Parameter>
                <asp:Parameter Name="original_peliaika" Type="DateTime"></asp:Parameter>
            </UpdateParameters>
        </asp:SqlDataSource>

    </div>

    </form>
</body>
</html>
