using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;

public partial class f2067_wanhatautot : System.Web.UI.Page
{
    private DataTable table;
    private DataView view;

    protected void Page_Load(object sender, EventArgs e)
    {
        table = new DataTable();
        view = new DataView(table);

        //Luodaan taulu jossa on kaikki autot
        table.Columns.Add("aid", typeof(int));
        table.Columns.Add("rekkari", typeof(string));
        table.Columns.Add("merkki", typeof(string));
        table.Columns.Add("malli", typeof(string));
        table.Columns.Add("vm", typeof(int));
        table.Columns.Add("myyntiHinta", typeof(int));
        table.Columns.Add("sisaanOstoHinta", typeof(int));

        XDocument doc = XDocument.Load(MapPath("~/App_Data/WanhatAutot.xml"));
        XElement el = doc.Element("Wanhatautot");

        foreach (XElement element in el.Elements())
        {
            table.Rows.Add(element.Element("aid").Value,
                element.Element("rekkari").Value,
                element.Element("merkki").Value,
                element.Element("malli").Value,
                element.Element("vm").Value,
                element.Element("myyntiHinta").Value,
                element.Element("sisaanOstoHinta").Value);
        }

        //Toinen taulu, joss 3 satunnaista autoa, kloonataan aiemman taulun rakenne
        DataTable tb = table.Clone();
        Random rnd = new Random();
        for (int i = 0; i < 4; i++)
        {
            DataRow r = table.Rows[rnd.Next(table.Rows.Count-1)];
            tb.Rows.Add(r["aid"], r["rekkari"], r["merkki"], r["malli"], r["vm"], r["myyntiHinta"], r["sisaanOstoHinta"]);
        }

        autot.DataSource = tb;
        autot.DataBind();

        ddCarModel.SelectedIndex = 1;
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        view.Sort = "myyntiHinta" + (rb1.Checked ? "" : " desc");
        string filter = "";

       if (tbKeyword.Text != null)
            filter += string.Format("malli like '%{0}%' or merkki like '%{0}%'", tbKeyword.Text.Replace('\'', ' '));

        if (ddCarModel.SelectedIndex > 0)
        {
            if (filter != "") filter += " and";
            filter += string.Format(" merkki = '{0}'", ddCarModel.SelectedValue);
        }

        view.RowFilter = filter;

        autot.DataSource = view;
        autot.DataBind();
    }

}