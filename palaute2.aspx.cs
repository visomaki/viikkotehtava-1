using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class palaute2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        DataSet palauteSet = new DataSet();

        palauteSet.ReadXml(MapPath("~/App_Data/Palautteet.xml"));

        palautteet.DataSource = palauteSet;
        palautteet.DataBind();
    }
}