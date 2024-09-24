<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="tabledecalcule.aspx.cs" Inherits="Projet.WebForm2" %>

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
        .style2
        {
            width: 129px;
        }
        .style3
        {
            width: 122px;
        }
        .style4
        {
            width: 128px;
        }
        .style5
        {
            width: 78px;
            height: 26px;
        }
        .style11
        {
            width: 77px;
        }
        .style13
        {
                height: 26px;
                width: 247px;
                font-weight: bold;
                font-size: large;
            }
        .style14
        {
            width: 78px;
            height: 26px;
        }
        .style15
        {
            width: 77px;
            height: 26px;
        }
        .style16
        {
            width: 129px;
            height: 26px;
        }
        .style17
        {
            width: 128px;
            height: 26px;
        }
        .style18
        {
            width: 122px;
            height: 26px;
        }
        .style19
        {
            height: 23px;
            width: 247px;
            font-weight: bold;
                font-size: large;
            }
        .style20
        {
            width: 78px;
            height: 23px;
        }
        .style21
        {
            width: 77px;
            height: 23px;
        }
        .style22
        {
            width: 129px;
            height: 23px;
        }
        .style23
        {
            width: 128px;
            height: 23px;
        }
        .style24
        {
            width: 122px;
            height: 23px;
        }
        .style25
        {
            width: 247px;
        }
        .style26
        {
            width: 247px;
            height: 42px;
            font-weight: bold;
                font-size: large;
            }
        .style27
        {
            width: 78px;
            height: 42px;
        }
        .style28
        {
            width: 77px;
            height: 42px;
        }
        .style29
        {
            width: 129px;
            height: 42px;
        }
        .style30
        {
            width: 128px;
            height: 42px;
        }
        .style31
        {
            width: 122px;
            height: 42px;
        }
        .style32
        {
            height: 30px;
            font-weight: bold;
                font-size: x-large;
            }
        .style33
        {
            font-weight: bold;
                font-size: x-large;
            }
        .style34
        {
                width: 247px;
                font-weight: bold;
                font-size: large;
            }
            .style35
            {
                font-weight: bold;
                height: 45px;
                font-size: x-large;
            }
            .style36
            {
                font-size: large;
            }
            .style38
            {
                width: 247px;
                font-size: large;
            }
    </style>
</head>
<body bgcolor="White">
    <form id="form1" runat="server">
       <div class="table-responsive">
    <table ID="style1"  bgcolor="#CCCCCC">
        <tr class="danger">
            <td colspan="6" 
                style="text-align: center" 
                class="style32">
                Foncier</td>
        </tr>
        <tr class="info">
            <td class="style34">
                    TERRAIN TF:</td>
            <td class="style5">
                
                <asp:DropDownList class="form-control" ID="DropTerrain" runat="server" AutoPostBack="True" 
                    onselectedindexchanged="DropDownList1_SelectedIndexChanged2">

                    <asp:ListItem Text=" select value" Value="-1"></asp:ListItem>
                </asp:DropDownList>
                
            </td>
            <td class="style11">
                <asp:DropDownList class="form-control" ID="DropTerrain1" runat="server" AutoPostBack="True">
                    <asp:ListItem>NB</asp:ListItem>
                    <asp:ListItem>%</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td class="style2">
                <asp:TextBox class="form-control" ID="TextTerrain" runat="server" style="margin-left: 0px"></asp:TextBox>
            </td>
            <td class="style4">
                <asp:TextBox  class="form-control" ID="TextTerrain1" runat="server"></asp:TextBox>
            </td>
            <td class="style3">
                <asp:TextBox class="form-control" ID="TextTerrain2" runat="server"  
                    ForeColor="Blue" ReadOnly="True"></asp:TextBox>
            </td>
        </tr>
        <tr class="success">
            <td class="style13">
                    ENREGISTREMENT+CF:</td>
            <td class="style14">
                <asp:DropDownList class="form-control" ID="DropERcf" runat="server" AutoPostBack="True" 
                    onselectedindexchanged="DropDownList111_SelectedIndexChanged">
                    <asp:ListItem Text=" select value" Value="-1"></asp:ListItem>
                </asp:DropDownList>
            </td>
            <td class="style15">
                <asp:DropDownList class="form-control" ID="DropERcf1" runat="server" AutoPostBack="True">
                    <asp:ListItem>NB</asp:ListItem>
                    <asp:ListItem>%</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td class="style16">
                <asp:TextBox class="form-control" ID="TextERcf" runat="server" TextMode="SingleLine"></asp:TextBox>
            </td>
            <td class="style17">
                <asp:TextBox class="form-control" ID="TextERcf1" runat="server" TextMode="SingleLine"></asp:TextBox>
            </td>
            <td class="style18">
                <asp:TextBox class="form-control" ID="TextERcf2" runat="server"  ForeColor="Blue" 
                    ReadOnly="True"></asp:TextBox>
            </td>
        </tr class="active">
        <tr>
            <td class="style34">
                    NOTAIRE:</td>
            <td class="style5">
                <asp:DropDownList class="form-control" ID="DropNotaire" runat="server" AutoPostBack="True" 
                    onselectedindexchanged="DropNotaire_SelectedIndexChanged">
                    <asp:ListItem Text=" select value" Value="-1"></asp:ListItem>
                </asp:DropDownList>
            </td>
            <td class="style11">
                <asp:DropDownList class="form-control" ID="DropNotaire1" runat="server" AutoPostBack="True">
                    <asp:ListItem>NB</asp:ListItem>
                    <asp:ListItem>%</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td class="style2">
                <asp:TextBox class="form-control" ID="TextNotaire" runat="server"></asp:TextBox>
            </td>
            <td class="style4">
                <asp:TextBox class="form-control" ID="TextNotaire1" runat="server"></asp:TextBox>
            </td>
            <td class="style3">
                <asp:TextBox class="form-control" ID="TextNotaire2" runat="server" 
                    ForeColor="Blue" ReadOnly="True"></asp:TextBox>
            </td>
        </tr>
        <tr class="danger">
            <td class="style19">
                    TPI 30%:</td>
            <td class="style20">
            </td>
            <td class="style21">
            </td>
            <td class="style22">
                <asp:TextBox class="form-control" ID="TextTpi" runat="server"></asp:TextBox>
            </td>
            <td class="style23">
                <asp:TextBox class="form-control" ID="TextTpi1" runat="server" ReadOnly="True" >                   30</asp:TextBox>
            </td>
            <td class="style24">
                <asp:TextBox class="form-control" ID="TextTpi2" runat="server"  ForeColor="Blue" 
                    ReadOnly="True"></asp:TextBox>
            </td>
        </tr>
        <tr class="info">
            <td class="style13">
                    SOMME TOTAL:</td>
            <td class="style14">
                </td>
            <td class="style15">
                </td>
            <td class="style16">
                </td>
            <td class="style17">
                &nbsp;</td>
            <td class="style18">
                <asp:TextBox class="form-control"  ID="TextTotal1" runat="server"  ForeColor="Blue" 
                    ReadOnly="True"></asp:TextBox>
            </td>
        </tr>
        <tr class="success">
            <td colspan="6" 
                style="text-align: center" class="style35">
                Viabilisation</td>
        </tr>
        <tr class="active">
            <td class="style13">
                &nbsp;</td>
            <td class="style14">
                <asp:DropDownList class="form-control" ID="DropVS" runat="server" AutoPostBack="True" 
                    onselectedindexchanged="DropVS_SelectedIndexChanged">
                    <asp:ListItem Text=" select value" Value="-1"></asp:ListItem>
                </asp:DropDownList>
            </td>
            <td class="style15">
                <asp:DropDownList class="form-control" ID="DropVS1" runat="server" AutoPostBack="True">
                    <asp:ListItem>NB</asp:ListItem>
                    <asp:ListItem>%</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td class="style16">
                <asp:TextBox class="form-control" ID="TextVS" runat="server"></asp:TextBox>
            </td>
            <td class="style17">
                <asp:TextBox class="form-control"  ID="TextVS1" runat="server"></asp:TextBox>
            </td>
            <td class="style18">
                <asp:TextBox class="form-control" ID="TextVS2" runat="server"  ForeColor="Blue" 
                    ReadOnly="True"></asp:TextBox>
            </td>
        </tr>
        <tr class="danger">
            <td colspan="6" 
                style="text-align: center; " class="style33">
                Construction</td>
        </tr>
        <tr>
            <td class="style34">
                    CONSTRUCTION LOG SOC R+3:</td>
            <td class="style5">
                <asp:DropDownList class="form-control" ID="DropCNR" runat="server" AutoPostBack="True" 
                    onselectedindexchanged="DropCNR_SelectedIndexChanged">
                    <asp:ListItem Text=" select value" Value="-1"></asp:ListItem>
                </asp:DropDownList>
            </td>
            <td class="style11">
                <asp:DropDownList class="form-control"  ID="DropCNR1" runat="server" AutoPostBack="True">
                    <asp:ListItem>NB</asp:ListItem>
                    <asp:ListItem>%</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td class="style2">
                <asp:TextBox class="form-control" ID="TextCNR" runat="server"></asp:TextBox>
            </td>
            <td class="style4">
                <asp:TextBox class="form-control"  ID="TextCNR1" runat="server"></asp:TextBox>
            </td>
            <td class="style3">
                <asp:TextBox ID="TextCNR2" runat="server" class="form-control" ForeColor="Blue" 
                    ReadOnly="True"></asp:TextBox>
            </td>
        </tr>
        <tr class="success">
            <td class="style34">
                    CONSTRUCTION EQUIPE PRIVE&nbsp; 1:</td>
            <td class="style5">
                <asp:DropDownList class="form-control" ID="DropCNP1" runat="server" AutoPostBack="True" 
                    onselectedindexchanged="DropCNP1_SelectedIndexChanged">
                    <asp:ListItem Text=" select value" Value="-1"></asp:ListItem>
                </asp:DropDownList>
            </td>
            <td class="style11">
                <asp:DropDownList class="form-control" ID="DropCNP12" runat="server" AutoPostBack="True">
                    <asp:ListItem>NB</asp:ListItem>
                    <asp:ListItem>%</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td class="style2">
                <asp:TextBox class="form-control" ID="TextCNP1" runat="server"></asp:TextBox>
            </td>
            <td class="style4">
                <asp:TextBox class="form-control"  ID="TextCNP11" runat="server"></asp:TextBox>
            </td>
            <td class="style3">
                <asp:TextBox ID="TextCNP12" runat="server" class="form-control" ForeColor="Blue" 
                    ReadOnly="True"></asp:TextBox>
            </td>
        </tr>
        <tr class="info">
            <td class="style26">
                    CONSTRUCTION EQUIPE PRIVE&nbsp; 2:</td>
            <td class="style27">
                <asp:DropDownList class="form-control" ID="DropCNP2" runat="server" AutoPostBack="True" 
                    onselectedindexchanged="DropCNP2_SelectedIndexChanged">
                    <asp:ListItem Text=" select value" Value="-1"></asp:ListItem>
                </asp:DropDownList>
            </td>
            <td class="style28">
                <asp:DropDownList class="form-control" ID="DropCNP22" runat="server" AutoPostBack="True">
                    <asp:ListItem>NB</asp:ListItem>
                    <asp:ListItem>%</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td class="style29">
                <asp:TextBox class="form-control" ID="TextCNP2" runat="server"></asp:TextBox>
            </td>
            <td class="style30">
                <asp:TextBox  ID="TextCNP22" class="form-control" runat="server"></asp:TextBox>
            </td>
            <td class="style31">
                <asp:TextBox ID="TextCNP23" runat="server" class="form-control" ForeColor="Blue" 
                    ReadOnly="True"></asp:TextBox>
            </td>
        </tr>
        <tr class="active">
            <td class="style34">
                    FRAIS GENEREAUX:</td>
            <td class="style5">
                &nbsp;</td>
            <td class="style11">
                &nbsp;</td>
            <td class="style2">
                &nbsp;</td>
            <td class="style4">
                &nbsp;</td>
            <td class="style3">
                <asp:TextBox ID="Textfrais" runat="server" class="form-control" ForeColor="Blue"></asp:TextBox>
            </td>
        </tr>
        <tr class="danger">
            <td class="style13">
                    SOMME TOTALE:</td>
            <td class="style14">
            </td>
            <td class="style15">
            </td>
            <td class="style16">
            </td>
            <td class="style17">
            </td>
            <td class="style18">
                <asp:TextBox ID="TextST" runat="server" class="form-control" ForeColor="Blue" 
                    ReadOnly="True"></asp:TextBox>
            </td>
        </tr>
        <tr class="success">
            <td class="style25">
                <asp:Button class="btn btn-success" ID="Button1" runat="server" Text="&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Valider" Width="238px" 
                    onclick="Button1_Click"   />
            </td>
            <td class="style5">
                <asp:Button  class="btn btn-primary" ID="Afficher" runat="server" onclick="Afficher_Click" 
                    Text="&nbsp;&nbsp;&nbsp;&nbsp;Afficher" Width="99px"  />
            </td>
            <td class="style11">
                <asp:Label ID="Label1" runat="server"></asp:Label>
            </td>
            <td class="style2">
                <asp:Button class="btn btn-primary"  ID="Button2" runat="server" onclick="Button2_Click" 
                    Text="&nbsp;&nbsp;Enregistrer" Width="106px"  />
            </td>
            <td class="style4">
                &nbsp;&nbsp;<strong><span class="style36">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                User Name:</span></strong></td>
            <td class="style3">
                <asp:TextBox ID="Textuser" runat="server" class="form-control" ForeColor="Blue" 
                    ReadOnly="True"></asp:TextBox>
            </td>
        </tr>
        <tr class="info">
            <td class="style38">
                <span class="style36">&nbsp;&nbsp;
                </span>
                <asp:Button class="btn btn-danger" ID="Button3" runat="server" Text="&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Imprimer" onclick="Button3_Click" 
                    Width="189px"  />
            </td>
            <td class="style5">
                &nbsp;</td>
            <td class="style11">
                &nbsp;</td>
            <td class="style2">
                &nbsp;</td>
            <td class="style4">
                &nbsp;</td>
            <td class="style3">
                <asp:Button class="btn btn-primary"  ID="Button4" runat="server" onclick="Button4_Click" 
                    Text="&nbsp;&nbsp;&nbsp;&nbsp;Imprimer2" Width="119px" />
            </td>
        </tr>
    </table>
       </div>
    </form>
</body>
</html>
