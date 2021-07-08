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
using System.Web.Services;

namespace ToDolist
{
    public partial class Text_view : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {


        }
        [WebMethod]
        public static TaskView GetTaskDetails(int ID)
        {
            TaskView Tview = new TaskView();
            string constr = ConfigurationManager.ConnectionStrings["ToDoListAppConnectionString"].ConnectionString;
            using (SqlConnection con = new SqlConnection(constr))
            {
                SqlCommand cmd = new SqlCommand("select * from TaskView'", con);
                SqlDataReader r = cmd.ExecuteReader();
                con.Open();
                while (r.Read())
                {
                    Tview.TaskId = Convert.ToInt32(r["ID"]);
                    Tview.TaskName = r["TaskName"].ToString();
                    Tview.Description = r["Description"].ToString();
                    Tview.TaskDate = (DateTime)r["TaskDate"];
                    Tview.TaskTime = (DateTime)r["TaskTime"];
                }
            }

            return Tview;

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
                    //int crow;
                    //crow = Convert.ToInt32(e.CommandArgument.ToString());

                    //string a = GridView1.Rows[crow].Cells[0].Text;
                    //string b = GridView1.Rows[crow].Cells[1].Text;
                    //string c = GridView1.Rows[crow].Cells[2].Text;
                    //string d = GridView1.Rows[crow].Cells[3].Text;
                    //string v = a + b + c + d;
                    
                }
                if (e.CommandName == "delete")
                {
                    int crow;
                    crow = Convert.ToInt32(e.CommandArgument.ToString());
                    string v = GridView1.Rows[crow].Cells[1].Text;

                    ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('" + v + "')", true);
                }
            }

        }

      
    }
}

      
    