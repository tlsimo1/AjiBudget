<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CrystalR1.aspx.cs" Inherits="Projet.CrystalR1" %>

<%@ Register assembly="CrystalDecisions.Web, Version=13.0.2000.0, Culture=neutral, PublicKeyToken=692fbea5521e1304" namespace="CrystalDecisions.Web" tagprefix="CR" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
<%--    <script src="bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
--%>    <link href="bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
    <style type="text/css">
        .style1
        {
            width: 17%;
            height: 80px;
        }
        .style2
        {
            width: 474px;
        }
        .style3
        {
            text-align: center;
            width: 105px;
        }
        .style4
        {
            text-align: center;
            background-color: #CCFFCC;
        }
        .style5
        {
            width: 105px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <table class="style1" align="center">
            <tr>
                <td class="style2">
                    &nbsp;</td>
                <td class="style5">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style4" colspan="2" bgcolor="#999999">
                    <asp:DropDownList class="form-control" ID="DropIM" runat="server" 
                        onselectedindexchanged="DropDownList1_SelectedIndexChanged">
                        <asp:ListItem Text=" select " Value="-1"></asp:ListItem>
                    </asp:DropDownList>
                    <br />
                    <asp:Button class="btn btn-danger" ID="afficher" runat="server" onclick="Button1_Click1" 
                        Text="afficher" Width="131px"  BorderStyle="None" />
                    &nbsp;</td>
            </tr>
        </table>
        <br />
        <br />
        <CR:CrystalReportViewer ID="CrystalReportViewer1" runat="server" 
            AutoDataBind="True" GroupTreeImagesFolderUrl="" Height="1202px" 
            ReportSourceID="CrystalReportSource1" ToolbarImagesFolderUrl="" 
            ToolPanelView="None" ToolPanelWidth="200px" Width="903px" />
        <CR:CrystalReportSource ID="CrystalReportSource1" runat="server">
            <Report FileName="CrystalReport1.rpt">
            </Report>
        </CR:CrystalReportSource>
    
    </div>
    </form>
</body>
</html>
