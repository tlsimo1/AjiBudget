<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Projet.Login" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
<%--    <script src="bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
--%>    <style type="text/css">
        .style1
        {
            font-size: xx-large;
            text-align: center;
            background-color: #CCFFCC;
        }
        .style2
        {
            width: 100%;
            font-size: large;
        }
        .style3
        {
            text-align: right;
            width: 279px;
        }
        .style4
        {
        }
        .style5
        {
            width: 173px;
        }
        .style6
        {
            width: 291px;
        }
        .style7
        {
            text-align: center;
        }
        .style8
        {
            text-align: right;
            width: 279px;
            height: 19px;
        }
        .style9
        {
            width: 173px;
            height: 19px;
        }
        .style10
        {
            width: 291px;
            height: 19px;
        }
        .style11
        {
            text-align: right;
            width: 279px;
            height: 16px;
        }
        .style12
        {
            width: 173px;
            height: 16px;
        }
        .style13
        {
            width: 291px;
            height: 16px;
        }
        #form1
        {
            margin-top:30%;
            text-align:center;
            }
    </style>
</head>
<body style="width: 622px; margin-left: 345px; font-size: smaller;" 
    bgcolor="#669999">
    <form id="form1" runat="server">
    <div class="style1">
    
        &nbsp;<strong>Login</strong></div>
    <table align="center"  class="style2">
        <tr>
            <td class="style3">
                <strong>Login</strong>:&nbsp;&nbsp;&nbsp; </td>
            <td class="style5">
                <asp:TextBox class="form-control" placeholder="username"  ID="txtLogin" 
                    runat="server" Width="283px"></asp:TextBox>
            </td>
            <td class="style6">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style8">
                <strong>Password:&nbsp;&nbsp;&nbsp; </strong></td>
            <td class="style9">
                <asp:TextBox class="form-control" placeholder="password" ID="txtPassword" 
                    runat="server" Width="283px" TextMode="Password"></asp:TextBox>
            </td>
            <td class="style10">
                </td>
        </tr>
        <tr>
            <td class="style11">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
            <td class="style12">
                <asp:Button class="btn btn-primary" ID="Button1" runat="server" onclick="Button1_Click" 
                    Text="connexion" Width="170px" />
            </td>
            <td class="style13">
                <asp:HyperLink ID="HyperLink1" runat="server" 
                    NavigateUrl="~/Registration.aspx">Registration</asp:HyperLink>
            </td>
        </tr>
        <tr>
            <td class="style7" colspan="3">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label1" runat="server" 
                    style="text-align: center"></asp:Label>
                &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            </td>
        </tr>
        <tr>
            <td class="style4" colspan="3">
                &nbsp;</td>
        </tr>
    </table>
    </form>
</body>
</html>
