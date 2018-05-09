using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

public partial class New_Case : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source=USER\SQLEXPRESS;Initial Catalog=CrimeDB;Integrated Security=True");
    protected void Page_Load(object sender, EventArgs e)
    {
        //Label12.Visible = false;
        //DropDownList6.Visible = false;
        
    }

    protected void RadioButtonList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        //if(RadioButtonList1.SelectedValue== "Yes")
        //{
        //    Label12.Visible = true;
        //    DropDownList6.Visible = true;
        //}
        //else
        //{

        //    Label12.Visible = false;
        //    DropDownList6.Visible = false;
        //}
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        string c1 = FileUpload1.FileName;
        FileUpload1.PostedFile.SaveAs(Server.MapPath("~/caseIMG/" + c1));
        string case1 = "~/caseIMG/" + c1.ToString();
        string c2 = FileUpload2.FileName;
        FileUpload2.PostedFile.SaveAs(Server.MapPath("~/caseIMG/" + c2));
        string case2 = "~/caseIMG/" + c2.ToString();
        string c3 = FileUpload3.FileName;
        FileUpload3.PostedFile.SaveAs(Server.MapPath("~/caseIMG/" + c3));
        string case3 = "~/caseIMG/" + c3.ToString();
        con.Open();
        string query = "select victim_status from victim where victim_ID="+ DropDownList5.SelectedValue;
        SqlCommand com = new SqlCommand(query,con);
        string status = com.ExecuteScalar().ToString();
        con.Close();
        if (status == "Dead")
        {

            con.Open();
            //SqlCommand cmd = new SqlCommand("insert into caseEntries(caseName,crimetypeID,criminal_id,victim_id,witness_id,evidence_id,u_id,crimeDoneDate,criminalCapturedDate,caseDescription,jailTerm,caseRegisteredAt,Criminal_Statement,Witness_statement,criminalVictimRelation,criminalWitnessRelation,victimWitnessRelation,Jail_ID,Victim_statement) values(" + (TextBox1.Text) + "," + (DropDownList1.SelectedValue) + "," + DropDownList4.SelectedValue + "," + DropDownList5.SelectedValue + "," + DropDownList6.SelectedValue + "," + DropDownList7.SelectedValue + "," + DropDownList2.SelectedValue + "," + TextBox2.Text + "," + TextBox3.Text + "," + TextBox4.Text + "," + TextBox5.Text + "," + DropDownList3.SelectedValue + "," + TextBox7.Text + "," + (TextBox6.Text) + "," + (TextBox8.Text) + "," + (TextBox11.Text) + "," + (TextBox10.Text) + "," + (TextBox7.Text) + ", " + (TextBox9.Text) + ")", con);
            string insertquery = "insert into caseEntries values(@Cname,@Ctype,@C_id,@V_id,@W_id,@E_id,@U_id,@crimeDone,@criminalCaptured,@Desc,@Jterm,@cRegister,@Cstatement,@Wstatement,@J_id,@Vstatement,@img1,@img2,@img3)";
            SqlCommand cmd = new SqlCommand(insertquery, con);
            cmd.Parameters.AddWithValue("@Cname", TextBox1.Text);
            cmd.Parameters.AddWithValue("@Ctype", DropDownList1.SelectedValue);
            cmd.Parameters.AddWithValue("@C_id", DropDownList4.SelectedValue);
            cmd.Parameters.AddWithValue("@V_id", DropDownList5.SelectedValue);
            cmd.Parameters.AddWithValue("@W_id", DropDownList6.SelectedValue);
            cmd.Parameters.AddWithValue("@E_id", DropDownList7.SelectedValue);
            cmd.Parameters.AddWithValue("@U_id", DropDownList2.SelectedValue);
            cmd.Parameters.AddWithValue("@crimeDone", TextBox2.Text);
            cmd.Parameters.AddWithValue("@criminalCaptured", TextBox3.Text);
            cmd.Parameters.AddWithValue("@Desc", TextBox4.Text);
            cmd.Parameters.AddWithValue("@Jterm", TextBox5.Text);
            cmd.Parameters.AddWithValue("@cRegister", DropDownList3.SelectedValue);
            cmd.Parameters.AddWithValue("@Cstatement", TextBox7.Text);
            cmd.Parameters.AddWithValue("@Wstatement", TextBox6.Text);
            cmd.Parameters.AddWithValue("@j_id", DropDownList8.SelectedValue);
            cmd.Parameters.AddWithValue("@Vstatement", TextBox9.Text);
            cmd.Parameters.AddWithValue("@img1", case1);
            cmd.Parameters.AddWithValue("@img2", case2);
            cmd.Parameters.AddWithValue("@img3", case3);
            cmd.ExecuteNonQuery();
            

            SqlCommand cmd3 = new SqlCommand("insert into victimDeath values(@vid,@time,@reason)", con);
            cmd3.Parameters.AddWithValue("@vid", DropDownList5.SelectedValue);
            cmd3.Parameters.AddWithValue("@time", TextBox12.Text);
            cmd3.Parameters.AddWithValue("@reason", TextBox13.Text);
            cmd3.ExecuteNonQuery();
            con.Close();
        }
        else
        {
            con.Open();
            //SqlCommand cmd = new SqlCommand("insert into caseEntries(caseName,crimetypeID,criminal_id,victim_id,witness_id,evidence_id,u_id,crimeDoneDate,criminalCapturedDate,caseDescription,jailTerm,caseRegisteredAt,Criminal_Statement,Witness_statement,criminalVictimRelation,criminalWitnessRelation,victimWitnessRelation,Jail_ID,Victim_statement) values(" + (TextBox1.Text) + "," + (DropDownList1.SelectedValue) + "," + DropDownList4.SelectedValue + "," + DropDownList5.SelectedValue + "," + DropDownList6.SelectedValue + "," + DropDownList7.SelectedValue + "," + DropDownList2.SelectedValue + "," + TextBox2.Text + "," + TextBox3.Text + "," + TextBox4.Text + "," + TextBox5.Text + "," + DropDownList3.SelectedValue + "," + TextBox7.Text + "," + (TextBox6.Text) + "," + (TextBox8.Text) + "," + (TextBox11.Text) + "," + (TextBox10.Text) + "," + (TextBox7.Text) + ", " + (TextBox9.Text) + ")", con);
            string insertquery = "insert into caseEntries values(@Cname,@Ctype,@C_id,@V_id,@W_id,@E_id,@U_id,@crimeDone,@criminalCaptured,@Desc,@Jterm,@cRegister,@Cstatement,@Wstatement,@J_id,@Vstatement,@img1,@img2,@img3)";
            SqlCommand cmd = new SqlCommand(insertquery, con);
            cmd.Parameters.AddWithValue("@Cname", TextBox1.Text);
            cmd.Parameters.AddWithValue("@Ctype", DropDownList1.SelectedValue);
            cmd.Parameters.AddWithValue("@C_id", DropDownList4.SelectedValue);
            cmd.Parameters.AddWithValue("@V_id", DropDownList5.SelectedValue);
            cmd.Parameters.AddWithValue("@W_id", DropDownList6.SelectedValue);
            cmd.Parameters.AddWithValue("@E_id", DropDownList7.SelectedValue);
            cmd.Parameters.AddWithValue("@U_id", DropDownList2.SelectedValue);
            cmd.Parameters.AddWithValue("@crimeDone", TextBox2.Text);
            cmd.Parameters.AddWithValue("@criminalCaptured", TextBox3.Text);
            cmd.Parameters.AddWithValue("@Desc", TextBox4.Text);
            cmd.Parameters.AddWithValue("@Jterm", TextBox5.Text);
            cmd.Parameters.AddWithValue("@cRegister", DropDownList3.SelectedValue);
            cmd.Parameters.AddWithValue("@Cstatement", TextBox7.Text);
            cmd.Parameters.AddWithValue("@Wstatement", TextBox6.Text);
            cmd.Parameters.AddWithValue("@j_id", DropDownList8.SelectedValue);
            cmd.Parameters.AddWithValue("@Vstatement", TextBox9.Text);
            cmd.Parameters.AddWithValue("@img1", case1);
            cmd.Parameters.AddWithValue("@img2", case2);
            cmd.Parameters.AddWithValue("@img3", case3);
            cmd.ExecuteNonQuery();
            con.Close();
        }
        
        

        ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Case Registered');", true);
        TextBox1.Text = "";
        TextBox2.Text = "";
        TextBox3.Text = "";
        TextBox4.Text = "";
        TextBox5.Text = "";
        TextBox12.Text = "";
        TextBox6.Text = "";
        TextBox7.Text = "";
        TextBox9.Text = "";
        TextBox13.Text = "";
    }

   
}