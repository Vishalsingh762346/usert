<%@ Page Language="C#" AutoEventWireup="true" CodeFile="userwelcome.aspx.cs" Inherits="userzone_userwelcome" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <h1>Welcome to user Zone</h1>
        <br/>
        <asp:Label runat="server" ID="Lbl_Userid"/>
        <br/>
        <asp:Label runat="server" ID="Lbl_Username"/>
        <br/>
        <a href="userchangepassword.aspx">Change Password</a>
        <br/>
        <a href="userlogout.aspx">User Logout</a>
    </div>
    </form>
</body>
</html>
