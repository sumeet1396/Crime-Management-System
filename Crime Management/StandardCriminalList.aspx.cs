using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class StandardCriminalList : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        Session["getData"] = Convert.ToInt16(GridView1.SelectedRow.Cells[0].Text);
        Response.Redirect("StandardCriminalDetails.aspx");
    }
}