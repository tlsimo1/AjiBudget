using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

namespace Projet
{
    public partial class Foncier1 : System.Web.UI.Page
    {
        SqlDataReader dr;
        string CS = ConfigurationManager.ConnectionStrings["DBCS"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

            if (Session["user"] == null)
            {
                Response.Redirect("Login.aspx");
            }


            SqlConnection conn = new SqlConnection(CS);
            conn.Open();
            SqlCommand cmd1 = new SqlCommand("select codeProjet from ficheProjet where codeProjet=" + Session["codeprojet"] + " ", conn);
            dr = cmd1.ExecuteReader();
            while (dr.Read())
            {
                Dropcode.Items.Add(dr["codeProjet"].ToString());
            }
            conn.Close();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            //    try

            //    {
            //        SqlConnection conn = new SqlConnection(CS);
            //        conn.Open();
            //        SqlCommand cmd = new SqlCommand("insert into foncier values (" + Textsupterrain.Text + "," + Textengcf.Text + "," + Textnotaire.Text + "," + Texttpi.Text + "," + Dropcode.Text + ")", conn);
            //        cmd.ExecuteNonQuery();
            //        Response.Redirect("construction.aspx");
            //        conn.Close();

            //    }
            //catch(Exception ex)
            //    {
            //        LabelF.Text = "Validation non effectuer";
            //    };

            int a = 0;

            if (int.TryParse(Textsupterrain.Text, out a) == false || int.TryParse(Textengcf.Text, out a) == false || int.TryParse(Textnotaire.Text, out a) == false || int.TryParse(Texttpi.Text, out a) == false)
            {
                LabelF.Text = ("erreur de validation");
            }
            else
            {
                SqlConnection conn = new SqlConnection(CS);
                conn.Open();
                SqlCommand cmd = new SqlCommand("", conn);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.CommandText = "ajoutfoncier";
                cmd.Parameters.Add("@superficieterrain", SqlDbType.Float).Value = Textsupterrain.Text;
                cmd.Parameters.Add("@enregistrementcf", SqlDbType.Float).Value = Textengcf.Text;
                cmd.Parameters.Add("@notaire", SqlDbType.Float).Value = Textnotaire.Text;
                cmd.Parameters.Add("@tpi", SqlDbType.Float).Value = Texttpi.Text;
                cmd.Parameters.Add("@codep", SqlDbType.Int).Value = Dropcode.Text;
                cmd.ExecuteNonQuery();
                Response.Redirect("construction.aspx");
                //Session["users"] = txtNom.Text;
                conn.Close();
            }
        }
    }
}