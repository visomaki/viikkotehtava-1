using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class f2067_autokauppa_edit : System.Web.UI.Page
{
    private Auto auto;
    private BLAutot blogic;
    private bool edit;

    protected void Page_Init(Object sender, EventArgs e)
    {
        blogic = new BLAutot(MapPath("~/App_Data/WanhatAutot.xml"));
        edit = Request.QueryString["id"] != null ? true : false;

        if (edit)
        {
            int id = int.Parse(Request.QueryString["id"]);
            header.Text = "Muokkaa auton tietoja";
            auto = blogic.getCar(id);

            tbId.Text = auto.ID.ToString();
            tbMerkki.Text = auto.Merkki;
            tbMalli.Text = auto.Malli;
            tbVuosiMalli.Text = auto.VuosiMalli.ToString();
            tbMyyntiHinta.Text = auto.MyyntiHinta.ToString();
            tbSisaanOstoHinta.Text = auto.SisaanOstoHinta.ToString();
            tbRekkari.Text = auto.Rekkari;

            tbId.Enabled = false;
        }
        else
        {
            btnDelete.Visible = false;
            header.Text = "Lisää uusi auto";
            auto = new Auto();
        }
    }

    protected void Page_Load(object sender, EventArgs e)
    {
    }

    protected void btnSave_Click(object sender, EventArgs e)
    {
        auto.ID = int.Parse(tbId.Text);
        auto.Merkki = tbMerkki.Text;
        auto.Malli = tbMalli.Text;
        auto.VuosiMalli = int.Parse(tbVuosiMalli.Text);
        auto.MyyntiHinta = int.Parse(tbMyyntiHinta.Text);
        auto.SisaanOstoHinta = int.Parse(tbSisaanOstoHinta.Text);
        auto.Rekkari = tbRekkari.Text;

        blogic.addCar(auto, true);
        Response.Redirect("f2067_autokauppa.aspx");
    }
    protected void btnDelete_Click(object sender, EventArgs e)
    {

            blogic.removeCar(auto);
            Response.Redirect("f2067_autokauppa.aspx");

    }
}