﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class StandardCrimeList : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void GridView1_SelectedIndexChanged1(object sender, EventArgs e)
    {
        Session["getCaseData"] = Convert.ToInt16(GridView1.SelectedRow.Cells[0].Text);
        Response.Redirect("StandardCaseDescription.aspx");
    }
}