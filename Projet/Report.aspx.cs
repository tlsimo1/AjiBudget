using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;
using Microsoft.Reporting.WebForms;
using CrystalDecisions.CrystalReports.Engine;

namespace Projet
{
    public partial class Report : System.Web.UI.Page
    {
        //DataSet st = new DataSet();
        //    da.Fill(st, "Order");
        //    rdc.Load(Server.MapPath("CrystalReport2.rpt"));
        //    rdc.SetDataSource(st.Tables["Order"]);
        //    CrystalReportViewer1.ReportSource = rdc;

        SqlDataReader dr;
        string CS = ConfigurationManager.ConnectionStrings["DBCS"].ConnectionString;
        ReportDocument rdc = new ReportDocument();
        protected void Page_Load(object sender, EventArgs e)
        {
            
            SqlConnection conn = new SqlConnection(CS);
            
            string sql = "SELECT ficheProjet.codeProjet, ficheProjet.terrain,construction.constructionLogSoc,construction.contructionEqP1, construction.contructionEqP2, resultat.SommeTotal, resultat.username, foncier.enregistrementcf, foncier.notaire, foncier.superficieterrain,viabilisation.pont, viabilisation.fosse, viabilisation.chateauD,ficheProjet.prixDGI,ficheProjet.prixPorteurProjet, ficheProjet.distinction, ficheProjet.referanceTerrain, ficheProjet.surfacePlache, ficheProjet.surfaceVentable FROM construction INNER JOIN ficheProjet ON construction.codeProjet = ficheProjet.codeProjet INNER JOIN foncier ON ficheProjet.codeProjet = foncier.codeProjet INNER JOIN resultat ON ficheProjet.codeProjet = resultat.codeProjet INNER JOIN viabilisation ON ficheProjet.codeProjet = viabilisation.codeProjet  where resultat.username='" + Session["user"] + "' and ficheProjet.codeProjet ='" + Session["codeprojet"] + "' ";
            SqlCommand cmd = new SqlCommand(sql,conn);
            DataTable dt = new DataTable();
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            da.Fill(dt);
            //da.SelectCommand.CommandType = CommandType.StoredProcedure;
            //da.SelectCommand.Parameters.Add("@code", SqlDbType.Int).Value =DropIM.Text;
            //DataSet st = new DataSet();
            //da.Fill(st, "Order");
            //CrystalReport4 cr = new CrystalReport4();
            //cr.SetDataSource(st.Tables["Order"]);
            //CrystalReportViewer1.ReportSource = cr; 
            ReportDataSource rd1 = new ReportDataSource("DSorder",dt );
            ReportViewer1.LocalReport.DataSources.Add(rd1);
            ReportViewer1.LocalReport.Refresh();
           
            conn.Close();
            
        }
    }
}