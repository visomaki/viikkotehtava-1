using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class f2067_localDBDemo : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnGetMovies_Click(object sender, EventArgs e)
    {
        myDataList.DataSource = Movie.Get3Movies();
        myDataList.DataBind();
    }
}