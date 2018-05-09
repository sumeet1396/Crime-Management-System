using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class StandardwitnessList : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void GridView1_SelectedIndexChanged1(object sender, EventArgs e)
    {
        Session["getWitnessData"] = Convert.ToInt16(GridView1.SelectedRow.Cells[0].Text);
        Response.Redirect("StandardWitnessDetails.aspx");
    }
}