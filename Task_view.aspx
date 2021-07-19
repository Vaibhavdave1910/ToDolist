<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Task_view.aspx.cs" Inherits="ToDolist.Text_view" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <link href="Content/Style.css" rel="stylesheet" />
    <script src="Scripts/jquery-3.6.0.slim.min.js"></script>
    <script src="Scripts/bootstrap.min.js"></script>
</head>
<body>
    <form id="form1" runat="server">
         <div class="Addtask1">
            <nav class="navbar navbar-expand-lg navbar-dark">
  <div class="container-fluid">
    <a class="navbar-brand" href="#">To Do List</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse " id="navbarNav">
      <ul class="navbar-nav">
        <li class="nav-item">
          <a class="nav-link" aria-current="page" href="Add_Task.aspx">Add Task</a>
        </li>
        <li class="nav-item">
          <a class="nav-link active" href="Task_View.aspx">Task View</a>
        </li>
          <li class="nav-item ">
              <asp:Button CssClass="btn btn-dark" ID="Logout_btn" runat="server" Text="Logout" OnClick="Logout_btn_Click" />
        </li>
      </ul>
    </div>
  </div>
</nav>
        </div>

        <div id="GridView">
            <asp:GridView ID="GridView1"  runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" DataKeyNames="ID,TaskName" OnRowCommand="GridView1_RowCommand" PageSize="5" CssClass="btn btn-light" Font-Bold="True" Font-Names="Consolas" BackColor="White" BorderColor="White" BorderStyle="Ridge" BorderWidth="2px" CellPadding="3" CellSpacing="1" GridLines="None" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
                <Columns>
                    <asp:BoundField DataField="ID" HeaderText="ID" SortExpression="ID" ReadOnly="True" />
                    <asp:BoundField DataField="TaskName" HeaderText="TaskName" SortExpression="TaskName" />
                    <asp:BoundField DataField="Description" HeaderText="Description" SortExpression="Description" />
                    <asp:BoundField DataField="TaskDate" HeaderText="TaskDate" SortExpression="TaskDate" />
                    <asp:BoundField DataField="TaskTime" HeaderText="TaskTime" SortExpression="TaskTime" />
                    <asp:CommandField ButtonType="Button" ShowEditButton="True" />
                    <asp:ButtonField ButtonType="Button" CommandName="delete" Text="Delete" />
                    <asp:ButtonField ButtonType="Button" CommandName="details" Text="Details" />
                </Columns>
                <FooterStyle BackColor="#C6C3C6" ForeColor="Black" />
                <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#E7E7FF" />
                <PagerStyle Height="0px" Width="0px" Wrap="True" BackColor="#C6C3C6" ForeColor="Black" HorizontalAlign="Right" />
                <RowStyle BackColor="#DEDFDE" ForeColor="Black" />
                <SelectedRowStyle BackColor="#9471DE" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#F1F1F1" />
                <SortedAscendingHeaderStyle BackColor="#594B9C" />
                <SortedDescendingCellStyle BackColor="#CAC9C9" />
                <SortedDescendingHeaderStyle BackColor="#33276A" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ToDoListAppConnectionString %>" 
                SelectCommand="SELECT * FROM [Taskview]" 
                DeleteCommand="DELETE FROM [Taskview] WHERE [TaskName] = @TaskName"
                InsertCommand="INSERT INTO [Taskview] ([ID], [TaskName], [Description], [TaskDate], [TaskTime]) VALUES (@ID, @TaskName, @Description, @TaskDate, @TaskTime)" 
                UpdateCommand="UPDATE Taskview SET TaskName = @TaskName, Description = @Description, TaskDate = @TaskDate, TaskTime = @TaskTime WHERE (ID = @ID)" >
                <DeleteParameters>
                    <asp:Parameter Name="TaskName" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="ID" Type="Int32" />
                    <asp:Parameter Name="TaskName" Type="String" />
                    <asp:Parameter Name="Description" Type="String" />
                    <asp:Parameter DbType="Date" Name="TaskDate" />
                    <asp:Parameter DbType="Time" Name="TaskTime" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="TaskName" Type="String" />
                    <asp:Parameter Name="Description" Type="String" />
                    <asp:Parameter DbType="Date" Name="TaskDate" />
                    <asp:Parameter DbType="Time" Name="TaskTime" />
                    <asp:Parameter Name="ID" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
        </div>
    </form>
    <script src="Scripts/bootstrap.bundle.min.js"></script>
</body>
</html>
