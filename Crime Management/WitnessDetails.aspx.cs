using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class WitnessDetails : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source=USER\SQLEXPRESS;Initial Catalog=CrimeDB;Integrated Security=True");
    SqlDataAdapter sda = new SqlDataAdapter();
    DataSet ds = new DataSet();
    protected void Page_Load(object sender, EventArgs e)
    {
        string getData = "select * from witness where witness_ID='" + Session["getWitnessData"] + "'";
        SqlCommand cmd = new SqlCommand(getData, con);
        sda.SelectCommand = cmd;
        sda.Fill(ds);
        Label1.Text = ds.Tables[0].Rows[0]["witness_ID"].ToString();
        Image1.ImageUrl = ds.Tables[0].Rows[0]["victim_pic"].ToString();
        Label2.Text = ds.Tables[0].Rows[0]["firstname"].ToString() + " " + ds.Tables[0].Rows[0]["middlename"].ToString() + " " + ds.Tables[0].Rows[0]["lastname"].ToString();
        Label3.Text = ds.Tables[0].Rows[0]["birthplace"].ToString();
        Label4.Text = ds.Tables[0].Rows[0]["age"].ToString();
        string dob = ds.Tables[0].Rows[0]["DOB"].ToString();
        DateTime date = Convert.ToDateTime(dob.ToString());
        Label5.Text = date.ToShortDateString();
        Label6.Text = ds.Tables[0].Rows[0]["gender"].ToString();
        Label7.Text = ds.Tables[0].Rows[0]["contact_no"].ToString();
        Label8.Text = ds.Tables[0].Rows[0]["address"].ToString();
    }
}