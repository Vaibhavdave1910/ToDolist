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
    public partial class Add_Task : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["email"] == null)
            {
                Response.Redirect("LoginPage.aspx");
            }

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string email = Session["email"].ToString();
            string TaskName = Taskname.Text;
            string TaskDescription = Taskdesc.Text;
            string TaskDate = Taskdnt.Text;
            string TaskTime = Time_inp.Text;
            string createTime = DateTime.Now.ToString();
            string constr = ConfigurationManager.ConnectionStrings["ToDoListAppConnectionString"].ConnectionString;
            SqlConnection con = new SqlConnection(constr);
            con.Open();
            SqlCommand cmd = new SqlCommand("INSERT into Taskview values(next value for seq1,'"+TaskName+"','"+TaskDescription+"','"+TaskDate+"','"+TaskTime+"')", con);
            cmd.ExecuteNonQuery();
            cmd = new SqlCommand("Insert into LogTime(Email,TaskName,CreateTime) values('"+email+"','"+TaskName+"','" + createTime + "')", con);
            cmd.ExecuteNonQuery();



        }

        protected void Logout_btn_Click(object sender, EventArgs e)
        {
            string LogoutTime= DateTime.Now.ToShortTimeString();
            string email = Session["email"].ToString();
            string constr = ConfigurationManager.ConnectionStrings["ToDoListAppConnectionString"].ConnectionString;
            SqlConnection con = new SqlConnection(constr);
            con.Open();
            SqlCommand cmd = new SqlCommand("UPDATE Time2 SET LogoutTime = '"+LogoutTime+"' WHERE Email = '"+email+ "' and  LogoutTime is null; ", con);
            cmd.ExecuteNonQuery();
            Session.Abandon();
            Response.Redirect("LoginPage.aspx");
        }
    }
}