using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;

public partial class palaute : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnSend_Click(object sender, EventArgs e)
    {

        string file = MapPath("~/App_Data/Palautteet.xml");

        XDocument doc;
        if (!System.IO.File.Exists(file))
        {
            doc = new XDocument(new XDeclaration("1.0", "UTF-8", "yes"),
                new System.Xml.Linq.XElement("palautteet"));
        }
        else
        {
            doc = XDocument.Load(file);
        }

        XElement ele = new XElement("palaute");

        XElement pvm = new XElement("pvm");
        pvm.Value = tbDate.Text;

        XElement tekija = new XElement("tekija");
        tekija.Value = tbName.Text;

        XElement opittu = new XElement("opittu");
        opittu.Value = tbLearn1.Text;

        XElement haluanoppia = new XElement("haluanoppia");
        haluanoppia.Value = tbLearn2.Text;

        XElement hyvaa = new XElement("hyvaa");
        hyvaa.Value = tbGood.Text;

        XElement parannettavaa = new XElement("parannettavaa");
        parannettavaa.Value = tbBad.Text;

        XElement muuta = new XElement("muuta");
        muuta.Value = tbOther.Text;

        ele.Add(pvm);
        ele.Add(tekija);
        ele.Add(opittu);
        ele.Add(haluanoppia);
        ele.Add(hyvaa);
        ele.Add(parannettavaa);
        ele.Add(muuta);

        doc.Root.Add(ele);
        doc.Save(file);

        Response.Redirect("palaute2.aspx");
    }
}