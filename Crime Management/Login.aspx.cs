using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
public partial class _Default : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source=USER\SQLEXPRESS;Initial Catalog=CrimeDB;Integrated Security=True");
    SqlDataAdapter sda = new SqlDataAdapter();
    DataSet ds = new DataSet();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        try { 
        con.Open();
        string checkname = "select count (*) from Users where username='"+TextBox1.Text+"'";
        SqlCommand cmd = new SqlCommand(checkname,con);
        int temp = Convert.ToInt32(cmd.ExecuteScalar().ToString());
        if(temp==1)
        {
            string checkpass = "select password from Users where password='"+TextBox2.Text+"'";
            SqlCommand cmd2 = new SqlCommand(checkpass,con);
                string password = cmd2.ExecuteScalar().ToString();
                
                if (password==TextBox2.Text)
            {
                Session["login"] = TextBox1.Text;
                checkUserType();
                
            }
            else
            {
                ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Invalid Password');", true);
            }
        }
        else
        {
            ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Invalid Username');", true);
        }
        con.Close();
        }
        catch ( Exception ex)
        {

            ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Invalid Password');", true);

            TextBox1.Text = "";
            TextBox2.Text = "";
        }
    }
    public void checkUserType()
    {
        string checkuser = "select * from Users where username='"+Session["login"] +"'";
        SqlCommand cmd3 = new SqlCommand(checkuser, con);
        sda.SelectCommand = cmd3;
        sda.Fill(ds);
        string type = ds.Tables[0].Rows[0]["privilage"].ToString();
        if (type == "admin")
        {
            Response.Redirect("Dashboard.aspx");
        }
        else
        {
            Response.Redirect("StandardUserDashboard.aspx");
        }
    }
}