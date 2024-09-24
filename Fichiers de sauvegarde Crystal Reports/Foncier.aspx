<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Foncier.aspx.cs" Inherits="Projet.Foncier" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            font-size: x-large;
            text-align: center;
        }
        .style2
        {
            width: 76%;
            margin-left: 172px;
        }
        .style3
        {
            text-align: right;
            width: 335px;
        }
        .style4
        {
            width: 335px;
        }
        .style5
        {
            width: 162px;
        }
        .style6
        {
            width: 301px;
        }
         #form1
        {
            margin-top:7%;
            text-align:center;
            }
    </style>
</head>
<body bgcolor="#669999" style="font-size: x-large">
    <form id="form1" runat="server">
    <div class="style1">
    
        <strong>FONCIER</strong></div>
    <table align="center" class="style2">
        <tr>
            <td class="style3">
                CODE PROJET:</td>
            <td class="style5">
                <asp:DropDownList ID="Dropcode" runat="server" Width="160px">
                </asp:DropDownList>
            </td>
            <td class="style6">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="Dropcode" ErrorMessage="*" ForeColor="#FF3300"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style3">
                SUPERFICIE TERRAIN :</td>
            <td class="style5">
                <asp:TextBox ID="Textsupterrain" runat="server" Width="160px"></asp:TextBox>
            </td>
            <td class="style6">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="Textsupterrain" ErrorMessage="*" ForeColor="#FF3300"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style3">
                ENREGISTREMENT+CF:</td>
            <td class="style5">
                <asp:TextBox ID="Textengcf" runat="server" Width="160px"></asp:TextBox>
            </td>
            <td class="style6">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                    ControlToValidate="Textengcf" ErrorMessage="*" ForeColor="#FF3300"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style3">
                NOTAIRE:</td>
            <td class="style5">
                <asp:TextBox ID="Textnotaire" runat="server" Width="160px"></asp:TextBox>
            </td>
            <td class="style6">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                    ControlToValidate="Textnotaire" ErrorMessage="*" ForeColor="#FF3300"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style3">
                TPI:</td>
            <td class="style5">
                <asp:TextBox ID="Texttpi" runat="server" Width="160px"></asp:TextBox>
            </td>
            <td class="style6">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                    ControlToValidate="Texttpi" ErrorMessage="*" ForeColor="#FF3300"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style4">
                &nbsp;</td>
            <td class="style5">
                <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Valider" 
                    Width="160px" Height="26px" />
            </td>
            <td class="style6">
                <asp:Label ID="LabelF" runat="server"></asp:Label>
            </td>
        </tr>
    </table>
    </form>
</body>
</html>
