<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="dml_commands.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
        .gridview1{
            border: 2px solid black;
            margin-top: 10px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="Label1" runat="server" Text="Label">Enter your name: </asp:Label>
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <br />
            <asp:Label ID="Label2" runat="server" Text="Label">Enter your rollno: </asp:Label>
            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            <br />
            <asp:Label ID="Label3" runat="server" Text="Label">Enter your phone number: </asp:Label>
            <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
            <br />
            <asp:Button ID="Button1" runat="server" Text="Button" OnClick="Button1_Click" />
            <br />
            <asp:GridView ID="GridView1" CssClass="gridview1" runat="server" AlternatingRowStyle-Wrap="True" AutoGenerateColumns="False" DataKeyNames="stu_id" DataSourceID="SqlDataSource1" AllowPaging="True" EmptyDataRowStyle-BorderStyle="Dashed" EditRowStyle-BorderStyle="Inset" HeaderStyle-HorizontalAlign="Center">
                <Columns>
                    <asp:BoundField DataField="stu_id" HeaderText="stu_id" ReadOnly="True" SortExpression="stu_id"></asp:BoundField>
                    <asp:BoundField DataField="stu_name" HeaderText="stu_name" SortExpression="stu_name"></asp:BoundField>
                    <asp:BoundField DataField="stu_rollno" HeaderText="stu_rollno" SortExpression="stu_rollno"></asp:BoundField>
                    <asp:BoundField DataField="stu_number" HeaderText="stu_number" SortExpression="stu_number"></asp:BoundField>
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource runat="server" ID="SqlDataSource1" ConnectionString='<%$ ConnectionStrings:dml_connection_string %>' SelectCommand="SELECT * FROM [student] ORDER BY [stu_rollno]"></asp:SqlDataSource>
        </div>
    </form>
</body>
</html>
