using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class New_Criminal : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source=USER\SQLEXPRESS;Initial Catalog=CrimeDB;Integrated Security=True");
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["login"] == null)
        {
            Response.Redirect("Default.aspx");

        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        { 
        string Fprints = fingerprint.FileName;
        fingerprint.PostedFile.SaveAs(Server.MapPath("~/fingerprints/" + Fprints));
        string fingerprints = "~/fingerprints/" + Fprints.ToString();

        string Profile_pic = picture.FileName;
        picture.PostedFile.SaveAs(Server.MapPath("~/pictures/" + Profile_pic));
        string C_picture = "~/pictures/" + Profile_pic.ToString();
        con.Open();
        double no = Convert.ToInt64(TextBox14.Text);
        string check = "select count(*) from criminal where aadhar_NO="+ TextBox14.Text;
        SqlCommand com = new SqlCommand(check, con);
        double adno = Convert.ToInt64(com.ExecuteScalar().ToString());
        con.Close();
        if(no==adno)
        {
            ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Criminal already existed');", true);
        }
        else
        { 
        con.Open();
        string insertquery = "insert into criminal values(@fname,@mname,@lname,@Bplace,@DOB,@gender,@height,@weight,@dna,@haircolor,@eyecolor,@skincolor,@address,@id_mark,@fingerprint,@picture,@age,@number,@bg,@num2,@adno)";
        SqlCommand cmd = new SqlCommand(insertquery, con);
        cmd.Parameters.AddWithValue("@fname", TextBox1.Text);
        cmd.Parameters.AddWithValue("@mname", TextBox2.Text);
        cmd.Parameters.AddWithValue("@lname", TextBox3.Text);
        cmd.Parameters.AddWithValue("@Bplace", TextBox4.Text);
        cmd.Parameters.AddWithValue("@DOB", TextBox5.Text);
        cmd.Parameters.AddWithValue("@gender", RadioButtonList1.SelectedValue);
        cmd.Parameters.AddWithValue("@height", TextBox6.Text);
        cmd.Parameters.AddWithValue("@weight", TextBox7.Text);
        cmd.Parameters.AddWithValue("@DNA", TextBox8.Text);
        cmd.Parameters.AddWithValue("@haircolor", TextBox9.Text);
        cmd.Parameters.AddWithValue("@eyecolor", TextBox10.Text);
        cmd.Parameters.AddWithValue("@skincolor", TextBox11.Text);
        cmd.Parameters.AddWithValue("@address", TextBox12.Text);
        cmd.Parameters.AddWithValue("@id_mark", TextBox13.Text);
        cmd.Parameters.AddWithValue("@fingerprint", fingerprints);
        cmd.Parameters.AddWithValue("@picture", C_picture);
        cmd.Parameters.AddWithValue("@age", TextBox117.Text);
        cmd.Parameters.AddWithValue("@number", TextBox15.Text);
        cmd.Parameters.AddWithValue("@bg", DropDownList2.SelectedValue);
        cmd.Parameters.AddWithValue("@num2", TextBox16.Text);
        cmd.Parameters.AddWithValue("@adno", TextBox14.Text);
        cmd.ExecuteNonQuery();
        con.Close();
        }
        TextBox1.Text = "";
        TextBox2.Text = "";
        TextBox3.Text = "";
        TextBox4.Text = "";
        TextBox5.Text = "";
        TextBox6.Text = "";
        TextBox7.Text = "";
        TextBox8.Text = "";
        TextBox9.Text = "";
        TextBox10.Text = "";
        TextBox11.Text = "";
        TextBox12.Text = "";
        TextBox13.Text = "";
        TextBox15.Text = "";
        TextBox16.Text = "";
        TextBox117.Text = "";
        TextBox14.Text = "";
        ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Criminal Entered');", true);
        }
        catch(Exception ex)
        {
            string msg = ex.Message;
            ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Criminal already existed');", true);

        }
    }
}