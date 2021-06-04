using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class Default2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        ValidationSettings.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
    }
    protected void ButtonLogin_Click(object sender, EventArgs e)
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["RegistrationConnectionString"].ConnectionString);
        conn.Open();
        string checkUser = "select count(*) from Data where UserName='" + TextBoxUsernameLogin.Text + "'";
        SqlCommand com = new SqlCommand(checkUser, conn);
        int temp = Convert.ToInt32(com.ExecuteScalar().ToString());
        conn.Close();
        if (temp == 1)
        {
            conn.Open();
            string checkPasswordQuery = "select Password from Data where UserName='" + TextBoxUsernameLogin.Text + "'";
            SqlCommand passComm = new SqlCommand(checkPasswordQuery, conn);
            string password = passComm.ExecuteScalar().ToString().Replace(" ","");
            if (password == TextBoxPasswordLogin.Text)
            {
                Session["new"] = TextBoxUsernameLogin.Text;
                
                if (TextBoxUsernameLogin.Text == "Admin")
                    Response.Redirect("Mananger.aspx");
                Response.Redirect("Default4.aspx");
            }
            else
            {
                Response.Write("Password is not correct");
            }

        }
        else
        {
            Response.Write("Username is not correct");
        }

        conn.Close();
    }
}