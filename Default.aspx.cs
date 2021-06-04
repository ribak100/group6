using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;


public partial class _Default : System.Web.UI.Page
{
    public bool postIfValid = true;
    protected void Page_Load(object sender, EventArgs e)
    {
        LabelUserID.Visible = false;
        ValidationSettings.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
        if(IsPostBack)
        {
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["RegistrationConnectionString"].ConnectionString);
            conn.Open();
            string checkUser = "select count(*) from Data where UserName='" + TextBoxUsername.Text + "'";
            SqlCommand com = new SqlCommand(checkUser, conn);
            int temp = Convert.ToInt32(com.ExecuteScalar().ToString());
            if(temp ==1)  
            {
                conn.Close();
               Response.Write("User already exists");
               return;
            }

            
        }
    }
    
   

    protected void Button_submit_Click(object sender, EventArgs e)
    {
        try
        {

            
            
            string str = TextBoxUserID.Text;
            if ((str.Length < 7) || (str.Length > 20))
            {
                LabelUserID.Visible = true;
                return;
            }
            bool capital = false;
            foreach (char ch in str)
            {
                if ((ch >= 65) && (ch <= 90))
                {
                    capital = true;
                    break;
                }
            }

            if (!capital)
            {
                LabelUserID.Visible = true;
                return;
            }
            bool digit = false;
            foreach (char ch in str)
            {
                if ((ch >= 48) && (ch <= 57))
                {
                    digit = true;
                    break;
                }
            }

            if (!digit)
            {
                LabelUserID.Visible = true;
                return;
            }
            
            
        
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["RegistrationConnectionString"].ConnectionString);
            conn.Open();
            string insertQuery = "insert into Data (UserID, UserName, Password, Age, Email) values (@ID, @Uname , @password, @age, @email)";
            SqlCommand com = new SqlCommand(insertQuery, conn);
            com.Parameters.AddWithValue("@ID", TextBoxUserID.Text);
            com.Parameters.AddWithValue("@Uname", TextBoxUsername.Text);
            com.Parameters.AddWithValue("@password", TextBoxPassword.Text);
            com.Parameters.AddWithValue("@age", TextBoxAge.Text);
            com.Parameters.AddWithValue("@email", TextBoxEmailID.Text);


            com.ExecuteNonQuery();


            Response.Redirect("Default3.aspx");

            conn.Close();

        }

        catch (Exception ex)
        {
            Response.Write("ERROR:" + ex.ToString());
        }

    }

}

