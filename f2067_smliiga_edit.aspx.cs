using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.OleDb;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class f2067_smliiga_edit : System.Web.UI.Page
{
    private string editID = null;

    protected override void OnInit(EventArgs e)
    {
        editID = Request.Params["id"];
        if (editID != null)
        {
            OleDbConnection con = new OleDbConnection(WebConfigurationManager.ConnectionStrings["ConnectionString"].ToString());
            OleDbCommand cmd = new OleDbCommand();
            cmd.CommandText = string.Format("SELECT * FROM pisteet WHERE id = {0}", Request.Params["id"]);
            cmd.Connection = con;
            con.Open();
            OleDbDataReader dr = cmd.ExecuteReader();

            if (dr.HasRows)
            {
                dr.Read();
                tbSukunimi.Text = dr.GetString(1);
                tbEtunimi.Text = dr.GetString(2);

                ListItem itm = ddPelipaikka.Items.FindByText(dr.GetString(5));
                if(itm != null) ddPelipaikka.SelectedIndex = ddPelipaikka.Items.IndexOf(itm);

                ListItem itm2 = ddSeura.Items.FindByText(dr.GetString(3));
                if (itm2 != null) ddSeura.SelectedIndex = ddSeura.Items.IndexOf(itm2);
            }
        }
    }


    protected void Page_PreLoad(object sender, EventArgs e)
    {
        
    }

    protected void Page_Load(object sender, EventArgs e)
    {
    }

    protected void btnSave_Click(object sender, EventArgs e)
    {
        try
        {
            if (editID != null)
            {
                OleDbConnection con = new OleDbConnection(WebConfigurationManager.ConnectionStrings["ConnectionString"].ToString());
                OleDbCommand cmd = new OleDbCommand();

                cmd.CommandText = string.Format("UPDATE Pisteet SET etunimi='{1}', sukunimi='{2}', seura='{3}', pelipaikka='{4}' WHERE id = {0}", editID,
                    tbEtunimi.Text, tbSukunimi.Text, ddSeura.SelectedValue, ddPelipaikka.SelectedValue);

                cmd.Connection = con;
                con.Open();
                cmd.ExecuteNonQuery();

                statusLabel.Text = "Tallennettu!";
            }
        }
        catch
        {
            statusLabel.Text = "Virhe tallennuksessa!";
        }
    }
}