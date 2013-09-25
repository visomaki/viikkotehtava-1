using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class valuutta : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnParam_Click(object sender, EventArgs e)
    {
        Response.Redirect("f2067_valuutta2.aspx?user=" + tbName.Text);
    }

    protected void btnSession_Click(object sender, EventArgs e)
    {
        Session["user"] = tbName.Text;
        Server.Transfer("f2067_valuutta2.aspx");
    }

    protected void btnCookie_Click(object sender, EventArgs e)
    {
        Response.Cookies["user"].Value = tbName.Text;
        Response.Cookies["user"].Expires.AddHours(1);
        Server.Transfer("f2067_valuutta2.aspx");
    }
}