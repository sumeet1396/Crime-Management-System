using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;


public partial class New_Victim : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source=USER\SQLEXPRESS;Initial Catalog=CrimeDB;Integrated Security=True");
    protected void Page_Load(object sender, EventArgs e)
    {
      
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        { 
        string v_pic = FileUpload1.FileName;
        FileUpload1.PostedFile.SaveAs(Server.MapPath("~/victim-picture/" + v_pic));
        string victim = "~/victim-picture/" + v_pic.ToString();
        con.Open();

        con.Open();
        double no = Convert.ToInt64(TextBox14.Text);
        string check = "select count(*) from victim where aadhar_NO=" + TextBox14.Text;
        SqlCommand com = new SqlCommand(check, con);
        double adno = Convert.ToInt64(com.ExecuteScalar().ToString());
        con.Close();
        if (no == adno)
        {
            ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Victim already existed');", true);
        }
        else
        {

            SqlCommand cmd = new SqlCommand("insert into victim values(@fname,@mname,@lname,@gender,@dob,@bplace,@address,@num,@age,@pic,@num2,@status,@adno)", con);
            cmd.Parameters.AddWithValue("@fname", TextBox1.Text);
            cmd.Parameters.AddWithValue("@mname", TextBox2.Text);
            cmd.Parameters.AddWithValue("@lname", TextBox3.Text);
            cmd.Parameters.AddWithValue("@gender", RadioButtonList1.SelectedValue);
            cmd.Parameters.AddWithValue("@dob", TextBox4.Text);
            cmd.Parameters.AddWithValue("@bplace", TextBox5.Text);
            cmd.Parameters.AddWithValue("@address", TextBox7.Text);
            cmd.Parameters.AddWithValue("@num", TextBox6.Text);
            cmd.Parameters.AddWithValue("@age", TextBox8.Text);
            cmd.Parameters.AddWithValue("@pic", victim);
            cmd.Parameters.AddWithValue("@num2", TextBox9.Text);
            cmd.Parameters.AddWithValue("@status", DropDownList1.SelectedValue);
            cmd.Parameters.AddWithValue("@adno", TextBox14.Text);

            cmd.ExecuteNonQuery();
            con.Close();
        }
        ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Victim Entered');", true);
        TextBox1.Text = "";
        TextBox2.Text = "";
        TextBox3.Text = "";
        TextBox4.Text = "";
        TextBox5.Text = "";
        TextBox6.Text = "";
        TextBox7.Text = "";
        TextBox8.Text = "";
        TextBox9.Text = "";
        }
        catch(Exception ex)
        {
            string msg = ex.Message;
            ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Victim already existed');", true);

        }
    }




  
}