<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FicheProjet.aspx.cs" Inherits="Projet.FicheProjet" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
<%--    <script src="bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
--%>    <style type="text/css">
        #style1
        {
            width: 100%;
        }
        .style5
        {
            text-align: center;
        }
        .style6
        {
            width: 89px;
            text-align: center;
        }
        .style8
        {
            width: 270px;
            text-align: center;
            font-weight: bold;
        }
        .style12
        {
            font-size: x-large;
            text-align: center;
            font-weight: bold;
        }
        .style14
        {
            width: 304px;
            text-align: left;
        }
        
    </style>
</head>
<body bgcolor="White">
    <form id="form1" runat="server">
    <div>
    
        <table align="center" id="style1" >
        <div class="form-group">
            <tr>
                <td class="style12" colspan="4">
                    Fiche de construction du projet</td>
            </tr>

            <tr>
                <td class="style8">
                CODE PROJET:</td>
                <td class="style14">
                <asp:TextBox class="form-control" ID="Textcodeprojet" runat="server" Width="264px"></asp:TextBox>
                </td>
                <td class="style6">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="Textcodeprojet" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
                <td class="style5">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style8">
                TYPE DE LOGEMENT:</td>
                <td class="style14">
                <asp:DropDownList class="form-control" ID="Droptypelogement" runat="server" Width="267px" 
                    onselectedindexchanged="Droptypelogement_SelectedIndexChanged" 
                        AutoPostBack="True">
                </asp:DropDownList>
                </td>
                <td class="style6">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="Droptypelogement" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
                <td class="style5">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style8">
                OUVRAGE ACCESSOIRE:</td>
                <td class="style14">
                <asp:DropDownList class="form-control" ID="Dropouvrageacc" runat="server" Width="180px" 
                    onselectedindexchanged="Dropouvrageacc_SelectedIndexChanged" 
                        AutoPostBack="True">
                </asp:DropDownList>
                </td>
                <td class="style6">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                    ControlToValidate="Dropouvrageacc" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
                <td class="style5">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style8">
                TRRRAIN:</td>
                <td class="style14">
                <asp:TextBox class="form-control" ID="Texttarrain" runat="server" Width="264px"></asp:TextBox>
                </td>
                <td class="style6">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                    ControlToValidate="Texttarrain" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
                <td class="style5">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style8">
                REFERENCE TITRE TERRAIN:</td>
                <td class="style14">
                <asp:TextBox class="form-control" ID="Textreference" runat="server" Width="264px"></asp:TextBox>
                </td>
                <td class="style6">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                    ControlToValidate="Textreference" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
                <td class="style5">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style8">
                ZONE:</td>
                <td class="style14">
                <asp:DropDownList class="form-control" ID="Dropzone" runat="server" Width="180px" 
                    onselectedindexchanged="Dropzone_SelectedIndexChanged" AutoPostBack="True">
                </asp:DropDownList>
                </td>
                <td class="style6">
                    &nbsp;</td>
                <td class="style5">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style8">
                DISTINCTION URBAIN:</td>
                <td class="style14">
                <asp:CheckBoxList  class="form-control" ID="CheckBoxList1" runat="server" RepeatColumns="2" 
                    RepeatDirection="Horizontal" 
                        onselectedindexchanged="CheckBoxList1_SelectedIndexChanged" 
                        style="text-align: justify" Width="175px">
                    <asp:ListItem>R+1</asp:ListItem>
                    <asp:ListItem>R+2</asp:ListItem>
                    <asp:ListItem>R+3</asp:ListItem>
                    <asp:ListItem>Bureau</asp:ListItem>
                    <asp:ListItem>Ecole</asp:ListItem>
                    <asp:ListItem>Hotel</asp:ListItem>
                </asp:CheckBoxList>
                </td>
                <td class="style6">
                    &nbsp;</td>
                <td class="style5">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style8">
                PRIX DGI:</td>
                <td class="style14">
                <asp:TextBox class="form-control" ID="Textprixdgi" runat="server" Width="264px"></asp:TextBox>
                </td>
                <td class="style6">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
                    ControlToValidate="Textprixdgi" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
                <td class="style5">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style8">
                PRIX PORTEUR PROJET:</td>
                <td class="style14">
                <asp:TextBox class="form-control" ID="Textprixprojet" runat="server" Width="264px"></asp:TextBox>
                </td>
                <td class="style6">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" 
                    ControlToValidate="Textprixprojet" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
                <td class="style5">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style8">
                SURFACE PLACHE:</td>
                <td class="style14">
                <asp:TextBox class="form-control" ID="Textsurfacepl" runat="server" Width="264px"></asp:TextBox>
                </td>
                <td class="style6">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" 
                    ControlToValidate="Textsurfacepl" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
                <td class="style5">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style8">
                SURFACE VENTABLE:</td>
                <td class="style14">
                <asp:TextBox class="form-control" ID="Textsurfaceve" runat="server" Width="264px"></asp:TextBox>
                </td>
                <td class="style6">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" 
                    ControlToValidate="Textsurfaceve" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
                <td class="style5">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style8">
                SURFACE VOIRIE:</td>
                <td class="style14">
                <asp:TextBox class="form-control" ID="Textsurfacevo" runat="server" Width="264px"></asp:TextBox>
                </td>
                <td class="style6">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" 
                    ControlToValidate="Textsurfacevo" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
                <td class="style5">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style8">
                    &nbsp;</td>
                <td class="style14">
                    <asp:Button class="btn btn-primary" ID="Button1" runat="server" onclick="Button1_Click" 
                        style="text-align: center" Text="Valider" Width="180px" />
                </td>
                <td class="style6">
                    <asp:Label  class="form-control" ID="Labelfiche" runat="server"></asp:Label>
                </td>
                <td class="style5">
                    &nbsp;</td>
            </tr>
            
        </table>
    
    </div>
    </form>
</body>
</html>
