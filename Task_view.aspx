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
        <div id="GridView">
            <asp:GridView ID="GridView1"  runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" AllowPaging="True" DataKeyNames="ID,TaskName,TaskDate,TaskTime" OnRowCommand="GridView1_RowCommand" BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Horizontal" Height="305px" PageSize="5">
                <AlternatingRowStyle BackColor="#F7F7F7" />
                <Columns>
                    <asp:BoundField DataField="TaskName" HeaderText="TaskName" SortExpression="TaskName" />
                    <asp:BoundField DataField="Description" HeaderText="Description" SortExpression="Description" />
                    <asp:BoundField DataField="TaskDate" HeaderText="TaskDate" SortExpression="TaskDate" />
                    <asp:BoundField DataField="TaskTime" HeaderText="TaskTime" SortExpression="TaskTime" />
                    <asp:CommandField ButtonType="Button" ShowDeleteButton="True" />
                    <asp:CommandField ButtonType="Button" ShowEditButton="True" />
                    <asp:ButtonField ButtonType="Button" CommandName="detail" Text="Detail" />
                    <asp:CommandField ButtonType="Button" ShowSelectButton="True"></asp:CommandField>
                </Columns>
                <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
                <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
                <PagerStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Right" />
                <RowStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
                <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
                <SortedAscendingCellStyle BackColor="#F4F4FD" />
                <SortedAscendingHeaderStyle BackColor="#5A4C9D" />
                <SortedDescendingCellStyle BackColor="#D8D8F0" />
                <SortedDescendingHeaderStyle BackColor="#3E3277" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ToDoListAppConnectionString %>" 
                SelectCommand="SELECT * FROM [Taskview]" DeleteCommand="DELETE FROM [Taskview] WHERE [TaskName] = @TaskName" InsertCommand="INSERT INTO [Taskview] ([ID], [TaskName], [Description], [TaskDate], [TaskTime]) VALUES (@ID, @TaskName, @Description, @TaskDate, @TaskTime)" UpdateCommand="UPDATE [Taskview] SET [TaskName] = @TaskName, [Description] = @Description, [TaskDate] = @TaskDate, [TaskTime] = @TaskTime WHERE [ID] = @ID" 
               
                >
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
        </div>
    </form>
    <script src="Scripts/bootstrap.bundle.min.js"></script>
</body>
</html>
