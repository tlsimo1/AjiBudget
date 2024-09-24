<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="fiche_projet.aspx.cs" Inherits="Projet.fiche_projet" %>

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
            width: 77%;
            margin-left: 416px;
        }
        .style3
        {
            width: 211px;
            font-size: large;
            text-align: right;
        }
        .style4
        {
            width: 107px;
        }
        .style5
        {
            width: 107px;
            text-align: left;
        }
        .style6
        {
            width: 211px;
            font-size: large;
            text-align: right;
            height: 44px;
        }
        .style7
        {
            width: 107px;
            height: 44px;
        }
        .style8
        {
            height: 44px;
            width: 346px;
        }
        .style9
        {
            width: 211px;
            font-size: large;
            text-align: right;
            height: 28px;
        }
        .style10
        {
            width: 107px;
            height: 28px;
        }
        .style11
        {
            height: 28px;
            width: 346px;
        }
        .style12
        {
            width: 211px;
            font-size: large;
            text-align: right;
            height: 26px;
        }
        .style13
        {
            width: 107px;
            height: 26px;
        }
        .style14
        {
            height: 26px;
            width: 346px;
        }
        .style15
        {
            width: 346px;
        }
        #form1
        {
            margin-top:1%;
            margin-right:15%;
            text-align:center;
            }
    </style>
</head>
<body bgcolor="#669999" style="font-size: x-large">
    <form id="form1" runat="server">
    <div class="style1">
    
        <strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; FICHE DE CONSTRUCTION DU PROJET</strong></div>
    <table align="center" class="style2">
        <tr>
            <td class="style12">
                CODE PROJET:</td>
            <td class="style13">
                <asp:TextBox ID="Textcodeprojet" runat="server" Width="180px"></asp:TextBox>
            </td>
            <td class="style14">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="Textcodeprojet" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style3">
                TYPE DE LOGEMENT:</td>
            <td class="style4">
                <asp:DropDownList ID="Droptypelogement" runat="server" Width="180px" 
                    onselectedindexchanged="Droptypelogement_SelectedIndexChanged">
                </asp:DropDownList>
            </td>
            <td class="style15">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="Droptypelogement" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style3">
                OUVRAGE ACCESSOIRE:</td>
            <td class="style4">
                <asp:DropDownList ID="Dropouvrageacc" runat="server" Width="180px" 
                    onselectedindexchanged="Dropouvrageacc_SelectedIndexChanged">
                </asp:DropDownList>
            </td>
            <td class="style15">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                    ControlToValidate="Dropouvrageacc" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style3">
                TRRRAIN:</td>
            <td class="style4">
                <asp:TextBox ID="Texttarrain" runat="server" Width="180px"></asp:TextBox>
            </td>
            <td class="style15">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                    ControlToValidate="Texttarrain" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style6">
                REFERENCE TITRE TERRAIN:</td>
            <td class="style7">
                <asp:TextBox ID="Textreference" runat="server" Width="180px"></asp:TextBox>
            </td>
            <td class="style8">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                    ControlToValidate="Textreference" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style9">
                ZONE:</td>
            <td class="style10">
                <asp:DropDownList ID="Dropzone" runat="server" Width="180px" 
                    onselectedindexchanged="Dropzone_SelectedIndexChanged">
                </asp:DropDownList>
            </td>
            <td class="style11">
            </td>
        </tr>
        <tr>
            <td class="style3">
                DISTINCTION URBAIN:</td>
            <td class="style5">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:CheckBoxList ID="CheckBoxList1" runat="server" RepeatColumns="2" 
                    RepeatDirection="Horizontal">
                    <asp:ListItem>R+1</asp:ListItem>
                    <asp:ListItem>R+2</asp:ListItem>
                    <asp:ListItem>R+3</asp:ListItem>
                    <asp:ListItem>Bureau</asp:ListItem>
                    <asp:ListItem>Ecole</asp:ListItem>
                    <asp:ListItem>Hotel</asp:ListItem>
                </asp:CheckBoxList>
            </td>
            <td class="style15">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3">
                PRIX DGI:</td>
            <td class="style4">
                <asp:TextBox ID="Textprixdgi" runat="server" Width="180px"></asp:TextBox>
            </td>
            <td class="style15">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
                    ControlToValidate="Textprixdgi" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style3">
                PRIX PORTEUR PROJET:</td>
            <td class="style4">
                <asp:TextBox ID="Textprixprojet" runat="server" Width="180px"></asp:TextBox>
            </td>
            <td class="style15">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" 
                    ControlToValidate="Textprixprojet" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style3">
                SURFACE PLACHE:</td>
            <td class="style4">
                <asp:TextBox ID="Textsurfacepl" runat="server" Width="180px"></asp:TextBox>
            </td>
            <td class="style15">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" 
                    ControlToValidate="Textsurfacepl" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style3">
                SURFACE VENTABLE:</td>
            <td class="style4">
                <asp:TextBox ID="Textsurfaceve" runat="server" Width="180px"></asp:TextBox>
            </td>
            <td class="style15">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" 
                    ControlToValidate="Textsurfaceve" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style3">
                SURFACE VOIRIE:</td>
            <td class="style4">
                <asp:TextBox ID="Textsurfacevo" runat="server" Width="180px"></asp:TextBox>
            </td>
            <td class="style15">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" 
                    ControlToValidate="Textsurfacevo" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style3">
                &nbsp;</td>
            <td class="style4">
                <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="valider" 
                    Width="180px" style="font-size: x-large" />
            </td>
            <td class="style15">
                <asp:Label ID="Labelfiche" runat="server"></asp:Label>
            </td>
        </tr>
    </table>
    </form>
</body>
</html>
