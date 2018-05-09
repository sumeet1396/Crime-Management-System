using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class VictimList : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source=USER\SQLEXPRESS;Initial Catalog=CrimeDB;Integrated Security=True");
    SqlDataAdapter sda = new SqlDataAdapter();
    DataSet ds = new DataSet();
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void GridView1_SelectedIndexChanged1(object sender, EventArgs e)
    {
        Session["getVictimData"] = Convert.ToInt16(GridView1.SelectedRow.Cells[0].Text);
        Response.Redirect("VictimDetails.aspx");
    }

    protected void TextBox1_TextChanged(object sender, EventArgs e)
    {
        string qry = "select * from victim where firstname=" + TextBox1.Text + "";
        SqlCommand cmd = new SqlCommand(qry, con);
        sda.SelectCommand = cmd;
        sda.Fill(ds);
        GridView1.DataSource = ds;
        GridView1.DataBind();
    }
}