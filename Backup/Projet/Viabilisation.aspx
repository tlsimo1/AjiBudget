<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Viabilisation.aspx.cs" Inherits="Projet.Viabilisation" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <%--    <script src="bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
--%>    <link href="bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
    <style type="text/css">
        .style1
        {
            width: 68%;
            margin-top:7%;
            text-align:center;
            margin-left:20%;
            margin-right:70%;
            margin-bottom: 8px;
            font-size: medium;
        }
        .style2
        {
            text-align: right;
            width: 251px;
            font-weight: bold;
            font-size: large;
        }
        .style6
        {
            width: 250px;
        }
        .style8
        {
            font-size: xx-large;
        }
        #form1
        {
            margin-top:5%;
            text-align:center;
            }
        
        .style9
        {
        }
        
        .style10
        {
            font-size: large;
        }
        
        .style11
        {
            width: 292px;
        }
        
    </style>
</head>
<body bgcolor="#669999" style="font-size: x-large">
    <form id="form1" runat="server">
    <div style="height: 34px">
    
        <table align="center" class="style1">
            <tr>
                <td class="text-left" colspan="3">
                    <strong><span class="style8">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Viabilisation</span></strong></td>
            </tr>
            <tr>
                <td class="style2">
                    CODE PROJET:</td>
                <td class="style11">
                    <asp:DropDownList class="form-control" ID="DropCP" runat="server" Width="160px" 
                        style="font-size: medium">
                    </asp:DropDownList>
                </td>
                <td class="style6">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                        ControlToValidate="DropCP" ErrorMessage="*" ForeColor="#FF3300"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    PONT:</td>
                <td class="style11">
                    <asp:TextBox  class="form-control" ID="Textpont" runat="server" Width="180px"></asp:TextBox>
                </td>
                <td class="style6">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                        ControlToValidate="Textpont" ErrorMessage="*" ForeColor="#FF3300"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    FOSSE:</td>
                <td class="style11">
                    <asp:TextBox  class="form-control" ID="Textfosse" runat="server" Width="180px"></asp:TextBox>
                </td>
                <td class="style6">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                        ControlToValidate="Textfosse" ErrorMessage="*" ForeColor="#FF3300" 
                        CssClass="style10"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    CHATEAU D&#39;EAU:</td>
                <td class="style11">
                    <asp:TextBox class="form-control" ID="Textchateau" runat="server" Width="180px"></asp:TextBox>
                </td>
                <td class="style6">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                        ControlToValidate="Textchateau" ErrorMessage="*" ForeColor="#FF3300"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style9" colspan="2">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button class="btn btn-primary" ID="Button1" runat="server" Text="Button" 
                        Width="129px" onclick="Button1_Click1" />
                </td>
                <td class="style6">
                    <asp:Label ID="Label1" runat="server" style="text-align: left"></asp:Label>
                </td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
