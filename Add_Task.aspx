<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Add_Task.aspx.cs" Inherits="ToDolist.Add_Task" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <link href="Content/Style.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
    <div >
        <div class="Addtask1">
            <nav class="navbar navbar-expand-lg navbar-dark">
  <div class="container-fluid">
    <a class="navbar-brand" href="#">To Do List</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarNav">
      <ul class="navbar-nav">
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="Add_Task.aspx">Add Task</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="Task_View.aspx">Task View</a>
        </li>
          <li class="nav-item">
            <asp:Button ID="Logout_btn" CssClass="btn btn-dark" runat="server" OnClick="Logout_btn_Click" Text="Logout" />          
        </li>
      </ul>
    </div>
  </div>
</nav>
        </div>

        <div class="Addtask">
        <fieldset>
            <legend>Add task</legend>
            <asp:Label ID="Label1" runat="server" Text="Task Name" Width="150px"></asp:Label>
            <asp:TextBox ID="Taskname" runat="server"></asp:TextBox>
            <br />
            <br />
            <asp:Label ID="Label2" runat="server" Text="Description" Width="150px"></asp:Label>
            <asp:TextBox ID="Taskdesc" runat="server" TextMode="MultiLine"></asp:TextBox>
            <br />
            <br />
            <asp:Label ID="Label3" runat="server" Text="Date for task" Width="150px"></asp:Label>
            <asp:TextBox ID="Taskdnt" runat="server" TextMode="Date"></asp:TextBox>
            <br />
            <br />
            <asp:Label ID="Label4" runat="server" Text="Time for task" Width="150px"></asp:Label>
            <asp:TextBox ID="Time_inp" runat="server" TextMode="Time"></asp:TextBox>
            <br />
            <br />
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Submit" />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
        </fieldset>    
        </div>
        </div>
    </form>
</body>
</html>
