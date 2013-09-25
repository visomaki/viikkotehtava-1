using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class f2067_valuutta2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string value = null;
        value = Request.QueryString["user"];

        if (value == null || value.Length == 0)
        {
            if (Session["user"] != null)
            {
                value = Session["user"].ToString();
                Session["user"] = null;
            }
            else if (Request.Cookies["user"] != null)
            {
                value = Request.Cookies["user"].Value;
                Request.Cookies["user"].Expires = DateTime.Now.AddDays(-1D);
            }
        }

        name.Text = value;
    }
    protected void Unnamed1_Click(object sender, EventArgs e)
    {
        float value = 0;
        float.TryParse(tbValuutta.Text, out value);
        float euros = value / 5.59f;

        tbValuutta.Text = euros.ToString();
    }
}