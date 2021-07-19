using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ToDolist
{
    public partial class LoginPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            ValidationSettings.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
            Label3.Text= DateTime.Now.ToString();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string email = Email_inp.Text;
            string pass = pass_inp.Text;
            string LoginTime = DateTime.Now.ToString("yyyy-mm-dd");
            string constr = ConfigurationManager.ConnectionStrings["ToDoListAppConnectionString"].ConnectionString;
            SqlConnection con = new SqlConnection(constr);
            con.Open();
            SqlCommand cmd = new SqlCommand("select Email,Password from Login where Email='" + email + "'", con);
            SqlDataReader r = cmd.ExecuteReader();
            if (r.Read().ToString() == "True")
            {
                if (email == r[0].ToString() && pass == r[1].ToString())
                {
                    Session["email"] = email;
                    r.Close();
                    cmd = new SqlCommand("insert into Time2(Email,LoginTime) values('" + email + "','" + LoginTime + "')",con);
                    cmd.ExecuteNonQuery();
                    Response.Redirect("Add_Task.aspx");
                    
                }
               
            }
            con.Close();
        }
    }
}