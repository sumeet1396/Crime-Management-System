using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
public partial class PoliceStation : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source=USER\SQLEXPRESS;Initial Catalog=CrimeDB;Integrated Security=True");
    SqlDataAdapter sda = new SqlDataAdapter();
    DataSet da = new DataSet();
    protected void Page_Load(object sender, EventArgs e)
    {
        string query = "select * from jail where Jail_ID=" + Session["id"];
        SqlCommand cmd = new SqlCommand(query, con);
        sda.SelectCommand = cmd;
        sda.Fill(da);
        Label1.Text = da.Tables[0].Rows[0]["Jail_Location"].ToString();
        Image1.ImageUrl = da.Tables[0].Rows[0]["IMG"].ToString();
        Label2.Text = da.Tables[0].Rows[0]["addres"].ToString();
        Label3.Text = da.Tables[0].Rows[0]["contact"].ToString();
    }

    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        Session["getCaseData"] = Convert.ToInt16(GridView1.SelectedRow.Cells[0].Text);
        Response.Redirect("CaseDescription.aspx");
    }
}