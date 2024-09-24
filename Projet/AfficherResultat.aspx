<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AfficherResultat.aspx.cs" Inherits="Projet.AfficherResultat" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
<%--    <script src="bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
--%>    <link href="bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
        .style2
        {
            width: 80px;
        }
    </style>
</head>
<body bgcolor="White">
    <form id="form1" runat="server">
    <div>
    
        <table align="center" class="style1">
            <tr>
                <td bgcolor="White">
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                        BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" 
                        CellPadding="3" CellSpacing="2" DataKeyNames="numresultat" 
                        DataSourceID="SqlDataSource1" AllowPaging="True" AllowSorting="True">
                        <Columns>
                            <asp:BoundField DataField="numresultat" HeaderText="numresultat" 
                                InsertVisible="False" ReadOnly="True" SortExpression="numresultat" />
                            <asp:BoundField DataField="TreeainTf" HeaderText="TreeainTf" 
                                SortExpression="TreeainTf" />
                            <asp:BoundField DataField="EnregistrementCF" HeaderText="EnregistrementCF" 
                                SortExpression="EnregistrementCF" />
                            <asp:BoundField DataField="Notaire" HeaderText="Notaire" 
                                SortExpression="Notaire" />
                            <asp:BoundField DataField="TPI" HeaderText="TPI" SortExpression="TPI" />
                            <asp:BoundField DataField="Somme" HeaderText="Somme" SortExpression="Somme" />
                            <asp:BoundField DataField="viabilisation" HeaderText="viabilisation" 
                                SortExpression="viabilisation" />
                            <asp:BoundField DataField="ConstructionLogSR3" HeaderText="ConstructionLogSR3" 
                                SortExpression="ConstructionLogSR3" />
                            <asp:BoundField DataField="constructionEquipePR1" 
                                HeaderText="constructionEquipePR1" SortExpression="constructionEquipePR1" />
                            <asp:BoundField DataField="CconstructionEquipePR2" 
                                HeaderText="CconstructionEquipePR2" SortExpression="CconstructionEquipePR2" />
                            <asp:BoundField DataField="FraisGenereux" HeaderText="FraisGenereux" 
                                SortExpression="FraisGenereux" />
                            <asp:BoundField DataField="SommeTotal" HeaderText="SommeTotal" 
                                SortExpression="SommeTotal" />
                            <asp:BoundField DataField="username" HeaderText="username" 
                                SortExpression="username" />
                            <asp:BoundField DataField="codeProjet" HeaderText="codeProjet" 
                                SortExpression="codeProjet" />
                        </Columns>
                        <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
                        <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
                        <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
                        <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
                        <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
                        <SortedAscendingCellStyle BackColor="#FFF1D4" />
                        <SortedAscendingHeaderStyle BackColor="#B95C30" />
                        <SortedDescendingCellStyle BackColor="#F1E5CE" />
                        <SortedDescendingHeaderStyle BackColor="#93451F" />
                    </asp:GridView>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:Projet2ConnectionString %>" 
                        SelectCommand="SELECT * FROM [resultat] WHERE ([username] = @username)">
                        <SelectParameters>
                            <asp:SessionParameter Name="username" SessionField="user" Type="String" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                </td>
            </tr>
        </table>
    
    </div>
    <table class="style1">
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td>
                <asp:Button class="btn btn-primary" ID="BTNR" runat="server" onclick="BTNR_Click" Text="Imprimer" 
                    Width="84px" />
            </td>
        </tr>
    </table>
    </form>
</body>
</html>
