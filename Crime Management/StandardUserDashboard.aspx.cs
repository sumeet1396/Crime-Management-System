using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class StandardUserDashboard : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source=USER\SQLEXPRESS;Initial Catalog=CrimeDB;Integrated Security=True");
    DataTable dt = new DataTable();
    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            con.Open();
            string ct = "select count(*) from criminal";
            SqlCommand cmd = new SqlCommand(ct, con);
            string count = cmd.ExecuteScalar().ToString();
            Label1.Text += count;

            string ct2 = "select count(*) from victim";
            SqlCommand cmd2 = new SqlCommand(ct2, con);
            string count2 = cmd2.ExecuteScalar().ToString();
            Label2.Text += count2;

            string ct3 = "select count(*) from witness";
            SqlCommand cmd3 = new SqlCommand(ct3, con);
            string count3 = cmd3.ExecuteScalar().ToString();
            Label3.Text += count3;

            string ct4 = "select count(*) from Jail";
            SqlCommand cmd4 = new SqlCommand(ct4, con);
            string count4 = cmd4.ExecuteScalar().ToString();
            Label4.Text += count4;

            string ct5 = "select count(*) from Users";
            SqlCommand cmd5 = new SqlCommand(ct5, con);
            string count5 = cmd5.ExecuteScalar().ToString();
            Label5.Text += count5;

            string ct6 = "select count(*) from CaseEntries";
            SqlCommand cmd6 = new SqlCommand(ct6, con);
            string count6 = cmd6.ExecuteScalar().ToString();
            Label6.Text += count6;

            string ct7 = "select count(*) from CaseEntries where crimetypeID=10101";
            SqlCommand cmd7 = new SqlCommand(ct7, con);
            string count7 = cmd7.ExecuteScalar().ToString();
            Label7.Text += count7;



            // string c1 = "Theft";
            string ct8 = "select count(*) from CaseEntries where crimetypeID=10102";
            SqlCommand cmd8 = new SqlCommand(ct8, con);
            string count8 = cmd8.ExecuteScalar().ToString();
            Label8.Text += count8;

            string ct9 = "select count(*) from CaseEntries where crimetypeID=10103";
            SqlCommand cmd9 = new SqlCommand(ct9, con);
            string count9 = cmd9.ExecuteScalar().ToString();
            Label9.Text += count9;

            string ct10 = "select count(*) from CaseEntries where crimetypeID=10104";
            SqlCommand cmd10 = new SqlCommand(ct10, con);
            string count10 = cmd10.ExecuteScalar().ToString();
            Label10.Text += count10;

            string ct11 = "select count(*) from CaseEntries where crimetypeID=10105";
            SqlCommand cmd11 = new SqlCommand(ct11, con);
            string count11 = cmd11.ExecuteScalar().ToString();
            Label11.Text += count11;

            string ct12 = "select count(*) from CaseEntries where crimetypeID = 10106";
            SqlCommand cmd12 = new SqlCommand(ct12, con);
            string count12 = cmd12.ExecuteScalar().ToString();
            Label12.Text += count12;

            string ct14 = "select count(*) from CaseEntries where caseRegisteredAt='Dadar'";
            SqlCommand cmd14 = new SqlCommand(ct14, con);
            string count14 = cmd14.ExecuteScalar().ToString();
            Label14.Text += count14;

            string ct15 = "select count(*) from CaseEntries where caseRegisteredAt='Matunga'";
            SqlCommand cmd15 = new SqlCommand(ct15, con);
            string count15 = cmd15.ExecuteScalar().ToString();
            Label15.Text += count15;

            string ct16 = "select count(*) from CaseEntries where caseRegisteredAt='Andheri'";
            SqlCommand cmd16 = new SqlCommand(ct16, con);
            string count16 = cmd15.ExecuteScalar().ToString();
            Label16.Text += count16;

            string ct17 = "select count(*) from CaseEntries where caseRegisteredAt='Santacruz'";
            SqlCommand cmd17 = new SqlCommand(ct17, con);
            string count17 = cmd15.ExecuteScalar().ToString();
            Label17.Text += count17;

            string ct18 = "select count(*) from CaseEntries where caseRegisteredAt='Mahim'";
            SqlCommand cmd18 = new SqlCommand(ct18, con);
            string count18 = cmd18.ExecuteScalar().ToString();
            Label18.Text += count18;

            string ct19 = "select count(*) from CaseEntries where caseRegisteredAt='Arthur Road'";
            SqlCommand cmd19 = new SqlCommand(ct19, con);
            string count19 = cmd19.ExecuteScalar().ToString();
            Label19.Text += count19;

            string ct20 = "select count(*) from CaseEntries where caseRegisteredAt='Azad Maidan'";
            SqlCommand cmd20 = new SqlCommand(ct20, con);
            string count20 = cmd20.ExecuteScalar().ToString();
            Label20.Text += count20;

            string ct21 = "select count(*) from CaseEntries where caseRegisteredAt='Colaba'";
            SqlCommand cmd21 = new SqlCommand(ct21, con);
            string count21 = cmd21.ExecuteScalar().ToString();
            Label13.Text += count21;

            con.Close();
        }
        catch (Exception ex)
        {
            string msg = ex.Message;
        }
    }
}