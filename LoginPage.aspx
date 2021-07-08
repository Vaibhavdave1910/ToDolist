<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LoginPage.aspx.cs" Inherits="ToDolist.LoginPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <link href="Content/Style.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div id="Logincontainer">
            <fieldset>
    <legend>Login</legend>
                <br />
                <br />
                <asp:Label ID="Label1" runat="server" Text="Email" Width="100px"></asp:Label>
&nbsp;<asp:TextBox ID="Email_inp" runat="server" TextMode="Email"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="Email_inp" ErrorMessage="Please Enter Email" ForeColor="Red"></asp:RequiredFieldValidator>
                <br/><br/>
                <asp:Label ID="Label2" runat="server" Text="Password" Width="100px"></asp:Label>
&nbsp;<asp:TextBox ID="pass_inp" runat="server" TextMode="Password"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="pass_inp" ErrorMessage="Please Enter Password" ForeColor="Red"></asp:RequiredFieldValidator>
                <br/>&nbsp;<br/><br/>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button1" class="btn btn-primary" runat="server" OnClick="Button1_Click" Text="Submit" />
                <br />
                <br />
                <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
  </fieldset>
        </div>
    </form>
</body>
</html>
