using System;
using System.Data;
using System.Text;
using System.Configuration;
using System.Data.SqlClient;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ToDolist
{
    public partial class Text_view : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["email"] == null)
            {
                Response.Redirect("LoginPage.aspx");
            }
        }
        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            
            if (e.CommandName == "detail")
            {
                string constr = ConfigurationManager.ConnectionStrings["ToDoListAppConnectionString"].ConnectionString;
                using (SqlConnection con = new SqlConnection(constr))
                {
                    int crow;
                    crow = Convert.ToInt32(e.CommandArgument.ToString());
                    string a = GridView1.Rows[crow].Cells[0].Text;
                    string b = GridView1.Rows[crow].Cells[1].Text;
                    string c = GridView1.Rows[crow].Cells[2].Text;
                    string d = GridView1.Rows[crow].Cells[3].Text;
                    SqlCommand cmd = new SqlCommand("select * from TaskView where TaskName='"+a+"'", con);
                    con.Open();
                    SqlDataReader r = cmd.ExecuteReader();
                    while (r.Read())
                    {    
                        ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Task Name :"+a+"Task Description :"+b+ " Task Date :" +c+ " Task Time :" +d+ "')", true);    
                        
                    }
                }
                if (e.CommandName == "delete")
                {
                    int crow;
                    string email = Session["email"].ToString();
                    string deleteTime = DateTime.Now.ToString();
                    crow = Convert.ToInt32(e.CommandArgument.ToString());
                    string v = GridView1.Rows[crow].Cells[0].Text;
                    string cons = ConfigurationManager.ConnectionStrings["ToDoListAppConnectionString"].ConnectionString;
                    SqlConnection con = new SqlConnection(cons);
                    con.Open();
                    SqlCommand cmd = new SqlCommand("UPDATE LogTime SET deleteTime = '"+deleteTime+"' WHERE deleteTime is null and TaskName='"+v+"'", con);
                    cmd.ExecuteNonQuery();
                    cmd = new SqlCommand("delete from Taskview Where TaskName='"+v+"'", con);
                    cmd.ExecuteNonQuery();
                   
                    //con.Close();
                }
            }
        }

        protected void Logout_btn_Click(object sender, EventArgs e)
        {
            Session.Abandon();
            Response.Redirect("LoginPage.aspx");
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
           
        }
    }
}

      
    