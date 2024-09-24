<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TESTHTML.aspx.cs" Inherits="Projet.TESTHTML" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            height: 29px;
        }
        .style2
        {
            text-align: center;
            width:auto
            
        }
        #form1
        {
            margin-top:17%;
            
        }
        .style3
        {
            font-size: large;
        }
        .style4
        {
            height: 29px;
            width: 229px;
        }
        .style5
        {
            width: 229px;
        }
    </style>
</head>
<body style="background-color: #999999; text-align: center;">
    <form id="form1" runat="server">
    <div style="font-family:Arial; width: 720px; margin-left: 40px; background-color: #808080;" 
        class="style2">
<table style="border: 1px solid black; font-size: xx-large; width: 468px;" 
            align="center">
    <tr>
        <td colspan="2">
            <b>Login</b>
        </td>
    </tr>
    <tr>
        <td class="style1">
            User Name
        </td>    
        <td class="style4">
            :<asp:TextBox ID="txtUserName" runat="server" 
                ontextchanged="txtUserName_TextChanged" style="margin-left: 0px" 
                Width="143px"  ></asp:TextBox>
        </td>    
    </tr>
    <tr>
        <td>
            Password
        </td>    
        <td class="style5">
            :<asp:TextBox ID="txtPassword" TextMode="Password" runat="server" 
                style="margin-left: 0px" Width="144px"></asp:TextBox>
        </td>    
    </tr>
    <tr>
        <td>
                    
        </td>    
        <td class="style5">
            <asp:Button ID="btnLogin" runat="server" Text="Login" Width="78px" />
        </td>    
    </tr>
</table>
        <div class="style2">
<br />
<a href="Registration/Register.aspx"><span class="style3">Click here to register</span></a><span 
                class="style3"> 
if you do not have a user name and password.
        </span>
        </div>
</div>

    </form>
</body>
</html>
