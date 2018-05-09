using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class CriminalDetails : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source=USER\SQLEXPRESS;Initial Catalog=CrimeDB;Integrated Security=True");
    SqlDataAdapter sda = new SqlDataAdapter();
    SqlDataAdapter sda1 = new SqlDataAdapter();
    DataSet ds = new DataSet();
    DataSet ds1 = new DataSet();
    protected void Page_Load(object sender, EventArgs e)
    {
        string getData = "select * from criminal where criminal_id='" + Session["getData"] + "'";
        SqlCommand cmd = new SqlCommand(getData, con);
        sda.SelectCommand = cmd;
        sda.Fill(ds);
        Label1.Text = ds.Tables[0].Rows[0]["criminal_id"].ToString();
        Image1.ImageUrl = ds.Tables[0].Rows[0]["Photo"].ToString();
        Label2.Text = ds.Tables[0].Rows[0]["firstname"].ToString() + " " + ds.Tables[0].Rows[0]["Middlename"].ToString() + " " + ds.Tables[0].Rows[0]["lastname"].ToString();
        Label3.Text = ds.Tables[0].Rows[0]["Gender"].ToString();
        Label4.Text = ds.Tables[0].Rows[0]["age"].ToString();
        string dob= ds.Tables[0].Rows[0]["BirthDate"].ToString();
        DateTime date = Convert.ToDateTime(dob.ToString());
        Label5.Text = date.ToShortDateString();
        Label6.Text = ds.Tables[0].Rows[0]["BirthPlace"].ToString();
        Label7.Text ="+91 "+ ds.Tables[0].Rows[0]["Contact_NO"].ToString() +" / "+ ds.Tables[0].Rows[0]["Contact_NO2"].ToString();
        Label8.Text = ds.Tables[0].Rows[0]["Address"].ToString();
        Label9.Text = ds.Tables[0].Rows[0]["height"].ToString() + "ft" + "";
        Label10.Text = ds.Tables[0].Rows[0]["Weight"].ToString() + "kg" + ""; 
        Label11.Text = ds.Tables[0].Rows[0]["Blood_group"].ToString();
        Label12.Text = ds.Tables[0].Rows[0]["HairColour"].ToString();
        Label13.Text = ds.Tables[0].Rows[0]["EyeColour"].ToString();
        Label14.Text = ds.Tables[0].Rows[0]["SkinColour"].ToString();
        Label15.Text = ds.Tables[0].Rows[0]["DNA"].ToString();
        Label16.Text = ds.Tables[0].Rows[0]["Identification_Mark"].ToString();

       
    }
}