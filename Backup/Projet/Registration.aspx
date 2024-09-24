<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Registration.aspx.cs" Inherits="Projet.Registration" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
<%--    <script src="bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
--%>    <link href="bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
    <style type="text/css">
        .style1
        {
            font-size: xx-large;
            text-align: center;
        }
        .style2
        {
            width: 70%;
            font-size: larger;
            margin-left: 416px;
        }
        .style4
        {
        }
        #form1
        {
            margin-top:7%;
            text-align:center;
            }
        .style5
        {
            width: 298px
        }
        .style6
        {
            text-align: right;
            width: 214px;
            font-weight: bold;
            font-size: large;
        }
        .style7
        {
            font-size: medium;
        }
    </style>
</head>
<body bgcolor="#669999" style="font-size: large">
    <form id="form1" runat="server">
    <div class="style1">
    
        <strong>Registration</strong></div>
    <table align="center" class="style2">
        <tr>
            <td class="style6">
                Nom:</td>
            <td class="style5">
                <asp:TextBox class="form-control" ID="txtNom" runat="server" Width="180px" ></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="txtNom" ErrorMessage="*" ForeColor="Red" 
                    CssClass="style7"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style6">
                Adress:</td>
            <td class="style5">
                <asp:TextBox class="form-control" ID="txtAdress" runat="server" Width="180px"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="txtAdress" ErrorMessage="*" ForeColor="Red" 
                    CssClass="style7"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style6">
                Email:</td>
            <td class="style5">
                <asp:TextBox  class="form-control" ID="txtEmail" runat="server" Width="180px"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                    ControlToValidate="txtEmail" ErrorMessage="*" ForeColor="Red" 
                    CssClass="style7"></asp:RequiredFieldValidator>
                <span class="style7">&nbsp;
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                    ControlToValidate="txtEmail" ErrorMessage="*" ForeColor="Red" 
                    ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                </span>
            </td>
        </tr>
        <tr>
            <td class="style6">
                Password</td>
            <td class="style5">
                <asp:TextBox class="form-control" ID="txtPss" runat="server" Width="180px" 
                    TextMode="Password"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                    ControlToValidate="txtPss" ErrorMessage="*" 
                    ForeColor="Red" CssClass="style7"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style6">
                confirm password:</td>
            <td class="style5">
                <asp:TextBox  class="form-control" ID="txtConfirm" runat="server" Width="180px" 
                    TextMode="Password"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                    ControlToValidate="txtConfirm" ErrorMessage="*" ForeColor="Red" 
                    CssClass="style7"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style4" colspan="2">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button  class="btn btn-primary" ID="Button1" runat="server" onclick="Button1_Click" Text="Valider" 
                    Width="150px" />
            </td>
            <td>
                <asp:Label ID="Label1" runat="server" CssClass="style7"></asp:Label>
            </td>
        </tr>
    </table>
    </form>
</body>
</html>
