using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class f2067_elakelaskuri : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
    }

    protected void calcBtn_Click(object sender, EventArgs e)
    {
        calculate();
    }

    private void calculate()
    {
        int salary = 0;
        int age = 0;

        int.TryParse(ageTb.Text, out age);
        int.TryParse(salaryTb.Text, out salary);

        int result = (int)((0.5 * (double)salary) - (63 - (double)age) * 5.5);
        resultTb.Text = result.ToString();
    }
}