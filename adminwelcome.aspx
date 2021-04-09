<%@ Page Language="C#" AutoEventWireup="true" CodeFile="adminwelcome.aspx.cs" Inherits="adminzone_adminwelcome" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <h1>Admin Welcome</h1>
        <br/>
        <asp:Label runat="server" ID="Lbl_Id"/>
        <br/>
        <asp:Label runat="server" ID="Lbl_Name"/>
        <br/>
        Admin:abc@gmail.com
        <br/>
        Admin Name:Admin
        <br/>
        <a href="changepassword.aspx">Change Password</a>
        <br/>
        <a href="logout.aspx">Logout</a>

    </div>
    </form>
</body>
</html>
