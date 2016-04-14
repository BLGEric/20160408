<%@ Page Language="C#" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login</title>
    <style type="text/css">
        .tb1 {
            position:absolute;
            top: 25%;
            left: 45%;
            background-color: transparent;
        }
        .tb2 {
            position:absolute;
            top: 33%;
            left: 45%;
            background-color: transparent;
        }
        .tx1 {
            text-align: center; 
            position:absolute;
            top: 25%;
            left: 38%;
      
        }
        .tx2 {
            text-align: center; 
            position:absolute;
            top: 33%;
            left: 38%;
        }
        .btn1 {
            width : 9%;
            height: 6%;
            text-align: center;
            position:absolute;
            left: 38%;
            top: 41%;
            background-color: transparent;
        }
        .btn2 {
            width : 9%;
            height: 6%;
            text-align: center;
            position:absolute;
            left: 50.5%;
            top: 41%;
            background-color: transparent;
        }
    </style>
</head>
<body>
    <form runat="server">
        <b><p style="margin-left:37.5%; font-size: 50px; color: #0099ff">Login Page</p></b>
            <asp:Label ID="Label3" CssClass="tx1" runat="server" Text="帳號"></asp:Label>
            <asp:TextBox ID="TextBox2" CssClass="tb1" runat="server"></asp:TextBox>
            <asp:TextBox ID="TextBox3" CssClass="tb2" runat="server"></asp:TextBox>
            <asp:Label ID="Label2" CssClass="tx2" runat="server" Text="密碼"></asp:Label>
            <asp:Button ID="BtnSubmit" CssClass="btn1" runat="server" Text="Submit" />
            <asp:Button ID="BtnRegist" CssClass="btn2" runat="server" Text="Register" />
    </form>
</body>
</html>
