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
    public partial class CrystalR1 : System.Web.UI.Page
    {
        SqlDataReader dr;
        string CS = ConfigurationManager.ConnectionStrings["DBCS"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            if(Session["user"]==null)
            {
                Response.Redirect("Login.aspx");
            }
            if (!IsPostBack)
            {
                SqlConnection conn = new SqlConnection(CS);
                conn.Open();
                SqlCommand cmd = new SqlCommand(" select * from resultat where username='" + Session["user"] + "' ", conn);
                dr = cmd.ExecuteReader();
                while (dr.Read())
                {
                    DropIM.Items.Add(new ListItem(dr["numresultat"].ToString(), dr["numresultat"].ToString()));
                }
                dr.Close();
                conn.Close();

                string sql = "select  * FROM resultat  where username='"+Session["user"].ToString()+"'";
                SqlDataAdapter da = new SqlDataAdapter(sql, conn);
                //da.SelectCommand.CommandType = CommandType.StoredProcedure;
                //da.SelectCommand.Parameters.Add("@code", SqlDbType.Int).Value =DropIM.Text;
                DataSet st = new DataSet();
                da.Fill(st, "resultat");
                CrystalReport1 cr = new CrystalReport1();
                cr.SetDataSource(st.Tables["resultat"]);
                CrystalReportViewer1.ReportSource = cr; 

            }


            
           
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            
           // CrystalReportViewer1.();

            //CrystalReportViewer1.set
            ////Session["users"] = txtNom.Text;
            //conn.Close();
        }

        protected void Button1_Click1(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection(CS);
            string sql = "select numresultat,TreeainTf,EnregistrementCF,Notaire,TPI,Somme,viabilisation,ConstructionLogSR3,SommeTotal FROM resultat where numresultat='" + DropIM.Text +"'";
            SqlDataAdapter da = new SqlDataAdapter(sql, conn);
            //da.SelectCommand.CommandType = CommandType.StoredProcedure;
            //da.SelectCommand.Parameters.Add("@code", SqlDbType.Int).Value =DropIM.Text;
            DataSet st = new DataSet();
            da.Fill(st,"resultat");
            CrystalReport1 cr = new CrystalReport1();
            cr.SetDataSource(st.Tables["resultat"]);
            CrystalReportViewer1.ReportSource = cr; 
            
        }

 
    }
}