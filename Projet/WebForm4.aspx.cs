using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

namespace Projet
{
    public partial class WebForm4 : System.Web.UI.Page
    {
        SqlDataReader dr;
        string CS = ConfigurationManager.ConnectionStrings["DBCS"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            if(Session["user"]==null)
            {
                Response.Redirect("Login.aspx");
            }
            SqlConnection conn = new SqlConnection(CS);
            string sql = "SELECT ficheProjet.codeProjet, ficheProjet.terrain,construction.constructionLogSoc,construction.contructionEqP1, construction.contructionEqP2, resultat.SommeTotal, resultat.username, foncier.enregistrementcf, foncier.notaire, foncier.superficieterrain,viabilisation.pont, viabilisation.fosse, viabilisation.chateauD,ficheProjet.prixDGI,ficheProjet.prixPorteurProjet, ficheProjet.distinction, ficheProjet.referanceTerrain, ficheProjet.surfacePlache, ficheProjet.surfaceVentable FROM construction INNER JOIN ficheProjet ON construction.codeProjet = ficheProjet.codeProjet INNER JOIN foncier ON ficheProjet.codeProjet = foncier.codeProjet INNER JOIN resultat ON ficheProjet.codeProjet = resultat.codeProjet INNER JOIN viabilisation ON ficheProjet.codeProjet = viabilisation.codeProjet  where resultat.username='" + Session["user"] + "' and ficheProjet.codeProjet ='" + Session["codeprojet"] + "' ";
            SqlDataAdapter da = new SqlDataAdapter(sql, conn);
            //da.SelectCommand.CommandType = CommandType.StoredProcedure;
            //da.SelectCommand.Parameters.Add("@code", SqlDbType.Int).Value =DropIM.Text;
            DataSet st = new DataSet();
            da.Fill(st, "Order");
            CrystalReport4 cr = new CrystalReport4();
            cr.SetDataSource(st.Tables["Order"]);
            CrystalReportViewer1.ReportSource = cr; 
        }
    }
}