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
    public partial class WebForm1 : System.Web.UI.Page
    {
        SqlDataReader dr;
        string CS = ConfigurationManager.ConnectionStrings["DBCS"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection(CS);
            string sql = "select numresultat,TreeainTf,EnregistrementCF,Notaire,TPI,Somme,viabilisation,ConstructionLogSR3,SommeTotal FROM resultat";
            SqlDataAdapter da = new SqlDataAdapter(sql, conn);
            //da.SelectCommand.CommandType = CommandType.StoredProcedure;
            //da.SelectCommand.Parameters.Add("@code", SqlDbType.Int).Value =DropIM.Text;
            DataSet st = new DataSet();
            da.Fill(st, "resultat");
            CrystalReport2 cr = new CrystalReport2();
            cr.SetDataSource(st.Tables["resultat"]);
            CrystalReportViewer1.ReportSource = cr; 

        }
    }
}