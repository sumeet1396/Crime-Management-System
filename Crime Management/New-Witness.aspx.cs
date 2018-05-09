using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class New_Witness : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source=USER\SQLEXPRESS;Initial Catalog=CrimeDB;Integrated Security=True");

    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        string w_pic = FileUpload1.FileName;
        FileUpload1.PostedFile.SaveAs(Server.MapPath("~/witness-picture/" + w_pic));
        string witness = "~/witness-picture/" + w_pic.ToString();
        con.Open();

       
            SqlCommand cmd = new SqlCommand("insert into witness values(@fname,@mname,@lname,@gender,@dob,@bplace,@address,@num,@age,@pic,@num2)", con);
            cmd.Parameters.AddWithValue("@fname", TextBox1.Text);
            cmd.Parameters.AddWithValue("@mname", TextBox2.Text);
            cmd.Parameters.AddWithValue("@lname", TextBox3.Text);
            cmd.Parameters.AddWithValue("@gender", RadioButtonList1.SelectedValue);
            cmd.Parameters.AddWithValue("@dob", TextBox4.Text);
            cmd.Parameters.AddWithValue("@bplace", TextBox5.Text);
            cmd.Parameters.AddWithValue("@address", TextBox7.Text);
            cmd.Parameters.AddWithValue("@num", TextBox6.Text);
            cmd.Parameters.AddWithValue("@age", TextBox8.Text);
            cmd.Parameters.AddWithValue("@pic", witness);
            cmd.Parameters.AddWithValue("@num2", TextBox9.Text);
            cmd.ExecuteNonQuery();
        
        con.Close();
        ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Witness Entered');", true);
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
}