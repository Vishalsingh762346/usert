<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <style>
        body {
            background-color: lightblue;
        }
    </style>
    <title></title>
</head>
<body>

    <form id="form1" runat="server">
        <div>
            <h1 style="text-align: center; color: red;">Login Panel</h1>
            <table style="margin: 0px auto; width: 60%; height: 300px; border: 1px solid; background-color: orange;">
                <tr>
                    <th>Enter user Id:</th>
                    <td>
                        <asp:TextBox TextMode="Email" ID="TxtUserid" runat="server" required="" />
                    </td>
                </tr>
                <tr>
                    <th>Enter Password:</th>
                    <td>
                        <asp:TextBox runat="server" ID="TxtPwd" TextMode="Password" required="" />
                    </td>
                </tr>
                <tr>
                    <td colspan="2" align="center">
                        <asp:Button runat="server" ID="btn_login" Text="Login" OnClick="btn_login_Click" />
                    </td>
                </tr>
                <tr>
                    <td colspan="2" align="center">
                        <asp:Label runat="server" ID="LblMsg" Style="color: red;" />
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
