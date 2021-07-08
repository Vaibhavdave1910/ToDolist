<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Add_Task.aspx.cs" Inherits="ToDolist.Add_Task" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div>
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
            <asp:Button ID="Logout_btn" runat="server" OnClick="Logout_btn_Click" Text="Logout" />
            <br />
        </fieldset>    
        </div>
    </form>
    <p>
        &nbsp;</p>
</body>
</html>
