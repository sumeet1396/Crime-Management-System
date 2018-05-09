using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Configuration;
using System.Data.SqlClient;
public partial class PoliceStation : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source=USER\SQLEXPRESS;Initial Catalog=CrimeDB;Integrated Security=True");
   
    protected void Page_Load(object sender, EventArgs e)
    {
        con.Open();
        string ct1 = "select count(*) from CaseEntries where crimetypeID=10101 and Jail_ID=101";
        SqlCommand cmd = new SqlCommand(ct1, con);
        string count1 = cmd.ExecuteScalar().ToString();
        Label2.Text = count1;

        string ct2 = "select count(*) from CaseEntries where crimetypeID=10102 and Jail_ID=101";
        SqlCommand cmd1 = new SqlCommand(ct2, con);
        string count2 = cmd1.ExecuteScalar().ToString();
        Label3.Text = count2;

        string ct3 = "select count(*) from CaseEntries where crimetypeID=10103 and Jail_ID=101";
        SqlCommand cmd2 = new SqlCommand(ct3, con);
        string count3 = cmd2.ExecuteScalar().ToString();
        Label4.Text = count3;

        string ct4 = "select count(*) from CaseEntries where crimetypeID=10104 and Jail_ID=101";
        SqlCommand cmd3 = new SqlCommand(ct4, con);
        string count4 = cmd3.ExecuteScalar().ToString();
        Label5.Text = count4;

        string ct5 = "select count(*) from CaseEntries where crimetypeID=10105 and Jail_ID=101";
        SqlCommand cmd4 = new SqlCommand(ct5, con);
        string count5 = cmd4.ExecuteScalar().ToString();
        Label6.Text = count5;

        string ct6 = "select count(*) from CaseEntries where crimetypeID=10106 and Jail_ID=101";
        SqlCommand cmd5 = new SqlCommand(ct6, con);
        string count6 = cmd5.ExecuteScalar().ToString();
        Label7.Text = count6;

        string ct7 = "select count(*) from CaseEntries where crimetypeID=10101 and Jail_ID=102";
        SqlCommand cmd6 = new SqlCommand(ct7, con);
        string count7 = cmd6.ExecuteScalar().ToString();
        Label9.Text = count7;

        string ct8 = "select count(*) from CaseEntries where crimetypeID=10102 and Jail_ID=102";
        SqlCommand cmd7 = new SqlCommand(ct8, con);
        string count8 = cmd7.ExecuteScalar().ToString();
        Label10.Text = count8;

        string ct9 = "select count(*) from CaseEntries where crimetypeID=10103 and Jail_ID=102";
        SqlCommand cmd8 = new SqlCommand(ct9, con);
        string count9 = cmd8.ExecuteScalar().ToString();
        Label11.Text = count9;

        string ct10 = "select count(*) from CaseEntries where crimetypeID=10104 and Jail_ID=102";
        SqlCommand cmd9 = new SqlCommand(ct10, con);
        string count10 = cmd9.ExecuteScalar().ToString();
        Label12.Text = count10;

        string ct11 = "select count(*) from CaseEntries where crimetypeID=10105 and Jail_ID=102";
        SqlCommand cmd10 = new SqlCommand(ct11, con);
        string count11 = cmd10.ExecuteScalar().ToString();
        Label13.Text = count11;

        string ct12 = "select count(*) from CaseEntries where crimetypeID=10106 and Jail_ID=102";
        SqlCommand cmd11 = new SqlCommand(ct12, con);
        string count12 = cmd11.ExecuteScalar().ToString();
        Label14.Text = count12;

        string ct13 = "select count(*) from CaseEntries where crimetypeID=10101 and Jail_ID=103";
        SqlCommand cmd12 = new SqlCommand(ct13, con);
        string count13 = cmd2.ExecuteScalar().ToString();
        Label16.Text = count13;

        string ct14 = "select count(*) from CaseEntries where crimetypeID=10102 and Jail_ID=103";
        SqlCommand cmd13 = new SqlCommand(ct14, con);
        string count14 = cmd13.ExecuteScalar().ToString();
        Label17.Text = count14;

        string ct15 = "select count(*) from CaseEntries where crimetypeID=10103 and Jail_ID=103";
        SqlCommand cmd14 = new SqlCommand(ct15, con);
        string count15 = cmd14.ExecuteScalar().ToString();
        Label18.Text = count15;

        string ct16 = "select count(*) from CaseEntries where crimetypeID=10104 and Jail_ID=103";
        SqlCommand cmd15 = new SqlCommand(ct16, con);
        string count16 = cmd15.ExecuteScalar().ToString();
        Label19.Text = count16;

        string ct17 = "select count(*) from CaseEntries where crimetypeID=10105 and Jail_ID=103";
        SqlCommand cmd16 = new SqlCommand(ct17, con);
        string count17 = cmd16.ExecuteScalar().ToString();
        Label20.Text = count17;

        string ct18 = "select count(*) from CaseEntries where crimetypeID=10106 and Jail_ID=103";
        SqlCommand cmd17 = new SqlCommand(ct18, con);
        string count18 = cmd17.ExecuteScalar().ToString();
        Label21.Text = count18;

        string ct19 = "select count(*) from CaseEntries where crimetypeID=10101 and Jail_ID=104";
        SqlCommand cmd18 = new SqlCommand(ct19, con);
        string count19 = cmd18.ExecuteScalar().ToString();
        Label23.Text = count19;

        string ct20 = "select count(*) from CaseEntries where crimetypeID=10102 and Jail_ID=104";
        SqlCommand cmd19 = new SqlCommand(ct20, con);
        string count20 = cmd19.ExecuteScalar().ToString();
        Label24.Text = count20;

        string ct21 = "select count(*) from CaseEntries where crimetypeID=10103 and Jail_ID=104";
        SqlCommand cmd20 = new SqlCommand(ct21, con);
        string count21 = cmd20.ExecuteScalar().ToString();
        Label25.Text = count21;

        string ct22 = "select count(*) from CaseEntries where crimetypeID=10104 and Jail_ID=104";
        SqlCommand cmd21 = new SqlCommand(ct22, con);
        string count22 = cmd21.ExecuteScalar().ToString();
        Label26.Text = count22;

        string ct23 = "select count(*) from CaseEntries where crimetypeID=10105 and Jail_ID=104";
        SqlCommand cmd22 = new SqlCommand(ct23, con);
        string count23 = cmd22.ExecuteScalar().ToString();
        Label27.Text = count23;

        string ct24 = "select count(*) from CaseEntries where crimetypeID=10106 and Jail_ID=104";
        SqlCommand cmd23 = new SqlCommand(ct24, con);
        string count24 = cmd23.ExecuteScalar().ToString();
        Label28.Text = count24;

        string ct25 = "select count(*) from CaseEntries where crimetypeID=10101 and Jail_ID=105";
        SqlCommand cmd24 = new SqlCommand(ct25, con);
        string count25 = cmd24.ExecuteScalar().ToString();
        Label30.Text = count25;

        string ct26 = "select count(*) from CaseEntries where crimetypeID=10102 and Jail_ID=105";
        SqlCommand cmd25 = new SqlCommand(ct26, con);
        string count26 = cmd25.ExecuteScalar().ToString();
        Label31.Text = count26;

        string ct27 = "select count(*) from CaseEntries where crimetypeID=10103 and Jail_ID=105";
        SqlCommand cmd26 = new SqlCommand(ct27, con);
        string count27 = cmd26.ExecuteScalar().ToString();
        Label32.Text = count27;

        string ct28 = "select count(*) from CaseEntries where crimetypeID=10104 and Jail_ID=105";
        SqlCommand cmd27 = new SqlCommand(ct28, con);
        string count28 = cmd27.ExecuteScalar().ToString();
        Label33.Text = count28;

        string ct29 = "select count(*) from CaseEntries where crimetypeID=10105 and Jail_ID=105";
        SqlCommand cmd28 = new SqlCommand(ct29, con);
        string count29 = cmd28.ExecuteScalar().ToString();
        Label34.Text = count29;

        string ct30 = "select count(*) from CaseEntries where crimetypeID=10106 and Jail_ID=105";
        SqlCommand cmd29 = new SqlCommand(ct30, con);
        string count30 = cmd29.ExecuteScalar().ToString();
        Label35.Text = count30;


        string ct31 = "select count(*) from CaseEntries where crimetypeID=10101 and Jail_ID=106";
        SqlCommand cmd31 = new SqlCommand(ct31, con);
        string count31 = cmd31.ExecuteScalar().ToString();
        Label37.Text = count31;

        string ct32 = "select count(*) from CaseEntries where crimetypeID=10102 and Jail_ID=106";
        SqlCommand cmd32 = new SqlCommand(ct32, con);
        string count32 = cmd32.ExecuteScalar().ToString();
        Label38.Text = count32;

        string ct33 = "select count(*) from CaseEntries where crimetypeID=10103 and Jail_ID=106";
        SqlCommand cmd33 = new SqlCommand(ct33, con);
        string count33 = cmd33.ExecuteScalar().ToString();
        Label39.Text = count33;

        string ct34 = "select count(*) from CaseEntries where crimetypeID=10104 and Jail_ID=106";
        SqlCommand cmd34 = new SqlCommand(ct34, con);
        string count34 = cmd34.ExecuteScalar().ToString();
        Label40.Text = count34;

        string ct35 = "select count(*) from CaseEntries where crimetypeID=10105 and Jail_ID=106";
        SqlCommand cmd35 = new SqlCommand(ct35, con);
        string count35 = cmd35.ExecuteScalar().ToString();
        Label41.Text = count35;

        string ct36 = "select count(*) from CaseEntries where crimetypeID=10106 and Jail_ID=106";
        SqlCommand cmd36 = new SqlCommand(ct36, con);
        string count36 = cmd36.ExecuteScalar().ToString();
        Label42.Text = count36;

        string ct37 = "select count(*) from CaseEntries where crimetypeID=10101 and Jail_ID=107";
        SqlCommand cmd37 = new SqlCommand(ct37, con);
        string count37 = cmd37.ExecuteScalar().ToString();
        Label44.Text = count37;

        string ct38 = "select count(*) from CaseEntries where crimetypeID=10102 and Jail_ID=107";
        SqlCommand cmd38 = new SqlCommand(ct38, con);
        string count38 = cmd38.ExecuteScalar().ToString();
        Label45.Text = count38;

        string ct39 = "select count(*) from CaseEntries where crimetypeID=10103 and Jail_ID=107";
        SqlCommand cmd39 = new SqlCommand(ct39, con);
        string count39 = cmd39.ExecuteScalar().ToString();
        Label46.Text = count39;

        string ct40 = "select count(*) from CaseEntries where crimetypeID=10104 and Jail_ID=107";
        SqlCommand cmd40 = new SqlCommand(ct40, con);
        string count40 = cmd40.ExecuteScalar().ToString();
        Label47.Text = count40;

        string ct41 = "select count(*) from CaseEntries where crimetypeID=10105 and Jail_ID=107";
        SqlCommand cmd41 = new SqlCommand(ct41, con);
        string count41 = cmd41.ExecuteScalar().ToString();
        Label48.Text = count41;

        string ct42 = "select count(*) from CaseEntries where crimetypeID=10106 and Jail_ID=107";
        SqlCommand cmd42 = new SqlCommand(ct42, con);
        string count42 = cmd42.ExecuteScalar().ToString();
        Label49.Text = count42;

        string ct43 = "select count(*) from CaseEntries where crimetypeID=10101 and Jail_ID=108";
        SqlCommand cmd43 = new SqlCommand(ct43, con);
        string count43 = cmd43.ExecuteScalar().ToString();
        Label51.Text = count43;

        string ct44 = "select count(*) from CaseEntries where crimetypeID=10102 and Jail_ID=108";
        SqlCommand cmd44 = new SqlCommand(ct44, con);
        string count44 = cmd44.ExecuteScalar().ToString();
        Label52.Text = count44;

        string ct45 = "select count(*) from CaseEntries where crimetypeID=10103 and Jail_ID=108";
        SqlCommand cmd45 = new SqlCommand(ct45, con);
        string count45 = cmd45.ExecuteScalar().ToString();
        Label53.Text = count45;

        string ct46 = "select count(*) from CaseEntries where crimetypeID=10104 and Jail_ID=108";
        SqlCommand cmd46 = new SqlCommand(ct46, con);
        string count46 = cmd46.ExecuteScalar().ToString();
        Label54.Text = count46;

        string ct47 = "select count(*) from CaseEntries where crimetypeID=10105 and Jail_ID=108";
        SqlCommand cmd47 = new SqlCommand(ct47, con);
        string count47 = cmd47.ExecuteScalar().ToString();
        Label55.Text = count47;

        string ct48 = "select count(*) from CaseEntries where crimetypeID=10106 and Jail_ID=108";
        SqlCommand cmd48 = new SqlCommand(ct48, con);
        string count48 = cmd48.ExecuteScalar().ToString();
        Label56.Text = count48;
        con.Close();
    }

    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Session["id"] = 101;
        Response.Redirect("PoliceStation.aspx");
    }

    protected void LinkButton2_Click(object sender, EventArgs e)
    {
        Session["id"] = 102;
        Response.Redirect("PoliceStation.aspx");
    }

    protected void LinkButton3_Click(object sender, EventArgs e)
    {
        Session["id"] = 103;
        Response.Redirect("PoliceStation.aspx");
    }

    protected void LinkButton4_Click(object sender, EventArgs e)
    {
        Session["id"] = 104;
        Response.Redirect("PoliceStation.aspx");
    }

    protected void LinkButton5_Click(object sender, EventArgs e)
    {
        Session["id"] = 105;
        Response.Redirect("PoliceStation.aspx");
    }

    protected void LinkButton6_Click(object sender, EventArgs e)
    {
        Session["id"] = 106;
        Response.Redirect("PoliceStation.aspx");
    }

    protected void LinkButton7_Click(object sender, EventArgs e)
    {
        Session["id"] = 107;
        Response.Redirect("PoliceStation.aspx");
    }

    protected void LinkButton8_Click(object sender, EventArgs e)
    {
        Session["id"] = 108;
        Response.Redirect("PoliceStation.aspx");
    }
}