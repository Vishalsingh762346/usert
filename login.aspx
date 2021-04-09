<%@ Page Language="C#" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
        #outer {
            height: 600px;
            width: 100%;    
            background-image: linear-gradient(to bottom right,gray,#ea005e,gray);
            border: 1px solid skyblue;
            
        }

        #inner {
            height: 400px;
            width: 500px;
            background-color: rgba(0, 0, 0,0.4);
            margin: 0px auto;
            margin-top: 100px;
        }

        #TextBox1 {
            outline: none;
            height: 24px;
            width: 200px;
            border-radius: 13px;
            border:1px solid white;
            text-align:center;
        }

        #TextBox2 {
            outline: none;
            height: 24px;
            width: 200px;
            border-radius: 13px;
            border:1px solid white;
            text-align:center;
        }

        h2 {
            text-shadow: 2px 2px 5px #ea005e;
            color: #ea005e;
        }

        #Button1 {
            height: 30px;
            width: 100px;
            border-radius: 13px;
            outline: none;
            cursor: pointer;
            background-color: #ea005e;
            border:1px solid pink;
            color:white;
        }
       
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div id="outer">
                <asp:Label runat="server" ID="LblMsg" Style="color: red;"></asp:Label>
                <div id="inner">
                    <br />
                    <br />
                    <br />
                    <center><u><h2>Login Form </u></h2>
                  
                        <asp:TextBox ID="TextBox1" runat="server" placeholder="Enter User Id :"></asp:TextBox>
                   
                   <br />
                    <br />
                    
                        <asp:TextBox ID="TextBox2" runat="server" TextMode="Password" placeholder="Enter Password :"></asp:TextBox>
                     <br />
                    <br />
                    
                        <asp:Button ID="Button1" runat="server" Text="Login" OnClick="Button1_Click" />
                    
                    <p>&nbsp;</p></center>
                </div>
            </div>

        </div>
    </form>
</body>
</html>
