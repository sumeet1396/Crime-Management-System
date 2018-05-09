using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
public partial class StandardCaseDescription : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source=USER\SQLEXPRESS;Initial Catalog=CrimeDB;Integrated Security=True");
    protected void Page_Load(object sender, EventArgs e)
    {
        string getData = "select * from CaseEntries where case_ID=" + Session["getCaseData"];
        SqlCommand cmd = new SqlCommand(getData, con);
        SqlDataAdapter sda = new SqlDataAdapter();
        DataSet ds = new DataSet();
        sda.SelectCommand = cmd;
        sda.Fill(ds);

        Label1.Text = ds.Tables[0].Rows[0]["case_ID"].ToString();
        Label2.Text = ds.Tables[0].Rows[0]["caseName"].ToString();
        Label3.Text = ds.Tables[0].Rows[0]["crimetypeID"].ToString();
        string CD = ds.Tables[0].Rows[0]["crimeDoneDate"].ToString();
        DateTime dt = Convert.ToDateTime(CD.ToString());
        Label4.Text = dt.ToShortDateString();
        string CD1 = ds.Tables[0].Rows[0]["criminalCapturedDate"].ToString();
        DateTime dt1 = Convert.ToDateTime(CD1.ToString());
        Label5.Text = dt1.ToShortDateString();

        Label6.Text = ds.Tables[0].Rows[0]["jailTerm"].ToString();
        Label7.Text = ds.Tables[0].Rows[0]["caseDescription"].ToString();
        int cid = Convert.ToInt32(ds.Tables[0].Rows[0]["criminal_id"].ToString());
        int vid = Convert.ToInt32(ds.Tables[0].Rows[0]["victim_id"].ToString());
        int wid = Convert.ToInt32(ds.Tables[0].Rows[0]["witness_id"].ToString());
        int eid = Convert.ToInt32(ds.Tables[0].Rows[0]["evidence_id"].ToString());
        //int ciid = Convert.ToInt32(ds.Tables[0].Rows[0]["caseImgID"].ToString());
        Label29.Text = ds.Tables[0].Rows[0]["Criminal_Statement"].ToString();
        Label38.Text = ds.Tables[0].Rows[0]["Witness_Statement"].ToString();
        Image2.ImageUrl = ds.Tables[0].Rows[0]["caseImg1"].ToString();
        Image3.ImageUrl = ds.Tables[0].Rows[0]["caseImg2"].ToString();
        Image4.ImageUrl = ds.Tables[0].Rows[0]["caseImg3"].ToString();
        string getData2 = "select * from criminal where criminal_id=" + cid;
        SqlCommand cmd2 = new SqlCommand(getData2, con);
        SqlDataAdapter sda2 = new SqlDataAdapter();
        DataSet ds2 = new DataSet();
        sda2.SelectCommand = cmd2;
        sda2.Fill(ds2);
        if (cid == 1027)
        {
            Table3.Visible = false;
            Label23.Visible = false;
        }
        else
        {
            Label12.Text = cid.ToString();
            Image5.ImageUrl = ds2.Tables[0].Rows[0]["Photo"].ToString();
            Label13.Text = ds2.Tables[0].Rows[0]["firstname"].ToString() + " " + ds2.Tables[0].Rows[0]["Middlename"].ToString() + " " + ds2.Tables[0].Rows[0]["lastname"].ToString();
            Label14.Text = ds2.Tables[0].Rows[0]["Gender"].ToString();
            Label15.Text = ds2.Tables[0].Rows[0]["Age"].ToString();
            Label17.Text = ds2.Tables[0].Rows[0]["BirthPlace"].ToString();
            string dt2 = ds2.Tables[0].Rows[0]["BirthDate"].ToString();
            DateTime dob1 = Convert.ToDateTime(dt2.ToString());
            Label16.Text = dob1.ToShortDateString();
            Label18.Text = ds2.Tables[0].Rows[0]["Contact_NO"].ToString() + " / " + ds2.Tables[0].Rows[0]["Contact_NO2"].ToString();
            Label19.Text = ds2.Tables[0].Rows[0]["Address"].ToString();
            Image6.ImageUrl = ds2.Tables[0].Rows[0]["Finger_Print"].ToString();
        }
        string getData3 = "select * from victim where victim_ID=" + vid;
        SqlCommand cmd3 = new SqlCommand(getData3, con);
        SqlDataAdapter sda3 = new SqlDataAdapter();
        DataSet ds3 = new DataSet();
        sda3.SelectCommand = cmd3;
        sda3.Fill(ds3);

        Label8.Text = vid.ToString();
        Image1.ImageUrl = ds3.Tables[0].Rows[0]["victim_pic"].ToString();
        Label9.Text = ds3.Tables[0].Rows[0]["firstname"].ToString() + " " + ds3.Tables[0].Rows[0]["Middlename"].ToString() + " " + ds3.Tables[0].Rows[0]["lastname"].ToString();
        Label10.Text = ds3.Tables[0].Rows[0]["gender"].ToString();
        Label11.Text = ds3.Tables[0].Rows[0]["age"].ToString();
        string dt3 = ds3.Tables[0].Rows[0]["DOB"].ToString();
        DateTime dob2 = Convert.ToDateTime(dt3.ToString());
        Label20.Text = dob2.ToShortDateString();
        Label21.Text = ds3.Tables[0].Rows[0]["birthplace"].ToString();
        Label22.Text = ds3.Tables[0].Rows[0]["contact_no"].ToString() + " / " + ds3.Tables[0].Rows[0]["contact_NO2"].ToString();
        Label25.Text = ds3.Tables[0].Rows[0]["address"].ToString();
        //Label26.Text = "Dead";
        Label26.Text = ds3.Tables[0].Rows[0]["victim_status"].ToString();
        Label28.Text = ds.Tables[0].Rows[0]["Victim_statement"].ToString();

        string getData4 = "select * from witness where witness_ID=" + wid;
        SqlCommand cmd4 = new SqlCommand(getData4, con);
        SqlDataAdapter sda4 = new SqlDataAdapter();
        DataSet ds4 = new DataSet();
        sda4.SelectCommand = cmd4;
        sda4.Fill(ds4);
        if (wid == 2010)
        {
            Table4.Visible = false;
            Label24.Visible = false;
        }
        else
        {
            Label30.Text = wid.ToString();
            Image7.ImageUrl = ds4.Tables[0].Rows[0]["victim_pic"].ToString();
            Label31.Text = ds4.Tables[0].Rows[0]["firstname"].ToString() + " " + ds4.Tables[0].Rows[0]["Middlename"].ToString() + " " + ds4.Tables[0].Rows[0]["lastname"].ToString();
            Label32.Text = ds4.Tables[0].Rows[0]["gender"].ToString();
            Label33.Text = ds4.Tables[0].Rows[0]["age"].ToString();
            string dt4 = ds4.Tables[0].Rows[0]["DOB"].ToString();
            DateTime dt6 = Convert.ToDateTime(dt4.ToString());
            Label34.Text = dt6.ToShortDateString();
            Label35.Text = ds4.Tables[0].Rows[0]["contact_no"].ToString() + " / " + ds4.Tables[0].Rows[0]["contact_NO2"].ToString();
            Label37.Text = ds4.Tables[0].Rows[0]["address"].ToString();
        }
        string getData5 = "select * from Evidence where evidence_id=" + eid;
        SqlCommand cmd5 = new SqlCommand(getData5, con);
        SqlDataAdapter sda5 = new SqlDataAdapter();
        DataSet ds5 = new DataSet();
        sda5.SelectCommand = cmd5;
        sda5.Fill(ds5);
        if (eid == 5004)
        {
            Table5.Visible = false;
            Label27.Visible = false;
        }
        else
        {
            Label39.Text = eid.ToString();
            Image8.ImageUrl = ds5.Tables[0].Rows[0]["evidence_photo"].ToString();
            Label40.Text = ds5.Tables[0].Rows[0]["evidence_specification"].ToString();
            Label41.Text = ds5.Tables[0].Rows[0]["usedAsWeapon"].ToString();
            Label42.Text = ds5.Tables[0].Rows[0]["evidence_location"].ToString();
        }
    }
}