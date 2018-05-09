using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class StandardUserMasterPage : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["login"] != null)
        {
            Label1.Text += Session["login"].ToString();
        }
        else
        {
            Response.Redirect("Default.aspx");
        }
    }

    protected void HyperLink1_Click(object sender, EventArgs e)
    {
        Session.Abandon();
    }
}
