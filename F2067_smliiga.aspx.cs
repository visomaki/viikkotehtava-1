using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    protected override void OnInit(EventArgs e)
    {
        ddOrder.DataSource = new string[] {"Nimen mukaan", "Tehopisteiden mukaan"};
        ddOrder.DataBind();

        ddSeurat.AppendDataBoundItems = true;
        ddSeurat.Items.Add("-");

        ddPelipaikka.AppendDataBoundItems = true;
        ddPelipaikka.Items.Add("-");
    }

    protected void Page_Load(object sender, EventArgs e)
    {
    }

    protected void btnSeurat_Click(object sender, EventArgs e)
    {
        SqlDataSource.SelectCommand = "SELECT * FROM pisteet ORDER BY " + (ddOrder.SelectedIndex == 0 ? "sukunimi" : "pisteet DESC");

        if (ddPelipaikka.SelectedIndex > 0)
        {
            SqlDataSource.FilterExpression = string.Format("pelipaikka = '{0}'", ddPelipaikka.SelectedValue);

            if(ddSeurat.SelectedIndex > 0)
                SqlDataSource.FilterExpression += string.Format("and seura = '{0}'", ddSeurat.SelectedValue);
        }
        else if(ddSeurat.SelectedIndex > 0)
            SqlDataSource.FilterExpression = string.Format("seura = '{0}'", ddSeurat.SelectedValue);
    }
}