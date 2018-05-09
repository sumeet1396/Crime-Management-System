using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class EvidenceList : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source=USER\SQLEXPRESS;Initial Catalog=CrimeDB;Integrated Security=True");
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        string evi = FileUpload1.FileName;
        FileUpload1.PostedFile.SaveAs(Server.MapPath("~/evidence-picture/" + evi));
        string evidence = "~/evidence-picture/" + evi.ToString();

        con.Open();
        SqlCommand cmd = new SqlCommand("insert into Evidence values(@spec,@weapon,@location,@pic,@name)",con);
        cmd.Parameters.AddWithValue("@spec",TextBox1.Text);
        cmd.Parameters.AddWithValue("@weapon", CheckBoxList1.SelectedValue);
        cmd.Parameters.AddWithValue("@location", TextBox2.Text);
        cmd.Parameters.AddWithValue("@pic", evidence);
        cmd.Parameters.AddWithValue("@name", TextBox3.Text);
        cmd.ExecuteNonQuery();
        con.Close();
        ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Evidence entered');", true);
        GridView1.DataBind();
    }
}