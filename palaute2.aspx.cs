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
        DataSet mycdcatalog = new DataSet();

        mycdcatalog.ReadXml(MapPath("~/App_Data/Palautteet.xml"));

        cdcatalog.DataSource=mycdcatalog;
        cdcatalog.DataBind();
    }
}