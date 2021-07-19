using System;
using System.Data.SqlClient;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;

namespace ToDolist
{
    public partial class Time : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Label1.Text = DateTime.UtcNow.ToString("yyyy-MM-dd");
            Label2.Text = DateTime.UtcNow.ToShortTimeString();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string time = DateTime.UtcNow.ToShortTimeString();
            string date = DateTime.UtcNow.ToString("yyyy-MM-dd");
            string constr = ConfigurationManager.ConnectionStrings["ToDoListAppConnectionString"].ConnectionString;
            SqlConnection con = new SqlConnection(constr);
            SqlCommand cmd = new SqlCommand("Insert into Time values('" + date + "','" + time + "')",con);
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
        }
    }
}