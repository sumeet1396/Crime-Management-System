using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class CriminalList : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source=USER\SQLEXPRESS;Initial Catalog=CrimeDB;Integrated Security=True");
    SqlDataAdapter sda = new SqlDataAdapter();
    DataSet ds = new DataSet();
    protected void Page_Load(object sender, EventArgs e)
    {

    }


    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        Session["getData"] =Convert.ToInt16( GridView1.SelectedRow.Cells[0].Text);
        Response.Redirect("CriminalDetails.aspx");
    }

    protected void TextBox1_TextChanged(object sender, EventArgs e)
    {
        try
        {
        SqlDataAdapter sda = new SqlDataAdapter();
        DataSet ds = new DataSet();
        string qry = "select * from criminal where firstname="+TextBox1.Text;
        SqlCommand cmd = new SqlCommand(qry,con);
        sda.SelectCommand = cmd;
        sda.Fill(ds);
        GridView1.DataSource = ds;
        GridView1.DataBind();
        }
        catch(Exception ex)
        {
            string msg = ex.Message;
            ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Criminal Not Found');", true);

        }
    }
}