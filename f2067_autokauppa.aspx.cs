using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class f2067_autokauppa : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        BLAutot blogic = new BLAutot(MapPath("~/App_Data/WanhatAutot.xml"));



        


        carList.DataSource = blogic.getAllCars();
        carList.DataBind();
    }
}