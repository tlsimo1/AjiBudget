using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;

namespace Projet
{
    public partial class FicheProjet : System.Web.UI.Page
    {
        SqlDataReader dr;
        protected void Page_Load(object sender, EventArgs e)
        {
            Session["codeprojet"] = Textcodeprojet.Text;

            if (Session["user"] == null)
            {
                Response.Redirect("Login.aspx");
            }


            string CS = ConfigurationManager.ConnectionStrings["DBCS"].ConnectionString;
            SqlConnection conn = new SqlConnection(CS);


            //conn.Open();
            //SqlCommand cmd = new SqlCommand("select codeProjet from ficheProjet",conn);
            //dr = cmd.ExecuteReader();
            //while(dr.Read())
            //{
            //    Dropcode.Items.Add(dr["codeProjet"].ToString());
            //}
            //conn.Close();


            conn.Open();
            SqlCommand cmd1 = new SqlCommand("select typeLogement from ficheProjet", conn);
            dr = cmd1.ExecuteReader();
            while (dr.Read())
            {
                Droptypelogement.Items.Add(dr["typeLogement"].ToString());
            }
            conn.Close();

            conn.Open();
            SqlCommand cmd2 = new SqlCommand("select ouvrageAcc from ficheProjet", conn);
            dr = cmd2.ExecuteReader();
            while (dr.Read())
            {
                Dropouvrageacc.Items.Add(dr["ouvrageAcc"].ToString());
            }
            conn.Close();

            conn.Open();
            SqlCommand cmd3 = new SqlCommand("select zone from ficheProjet", conn);
            dr = cmd3.ExecuteReader();
            while (dr.Read())
            {
                Dropzone.Items.Add(dr["zone"].ToString());
            }
            conn.Close();
        }

        protected void Droptypelogement_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void Dropouvrageacc_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void Dropzone_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            //    float a;
            //    float b;
            //    float c;
            //    a = float.Parse(Texttarrain.Text);
            //    b = float.Parse(Textreference.Text);
            //    c = a + b;
            //    try
            //    {
            //      string CS = ConfigurationManager.ConnectionStrings["DBCS"].ConnectionString;
            //      SqlConnection conn = new SqlConnection(CS);
            //      conn.Open();
            //      string Dis = "";
            //    if (Checkr1.Checked)
            //    {
            //        Dis = "R+1";
            //    }
            //    if (Checkr2.Checked)
            //    {
            //        Dis = "R+2";
            //    }
            //    if (Checkr3.Checked)
            //    {
            //        Dis = "R+3";
            //    }
            //    if (Checkbureau.Checked)
            //    {
            //        Dis = "Bureau";
            //    }
            //    if (Checkecole.Checked)
            //    {
            //        Dis = "Ecole";
            //    }
            //    if (Checkhotel.Checked)
            //    {
            //        Dis = "Hotel";
            //    }
            //    string ab = "insert into ficheProjet values (" + Textcodeprojet.Text + ",'" + Droptypelogement.Text + "','" + Dropouvrageacc.Text + "'," + Texttarrain.Text + "," + Textreference.Text + ",'" + Dropzone.Text + "','" + Dis + "'," + Textprixdgi.Text + "," + Textprixprojet.Text + ",'" + Textsurfacepl.Text + "','" + Textsurfaceve.Text + "','" + Textsurfacevo.Text + "')";
            //    //string req = "insert into ficheProjet values(" + Dropcode.Text + "," + Droptypelogement.Text + ",'" + Dropouvrageacc.Text + "'," + Texttarrain.Text + "," + Textreference.Text + ",'" + Dropzone.Text + "','" + Dis + "'," + Textprixdgi.Text + "," + Textprixprojet.Text + ",'" + Textsurfacepl.Text + "','" + Textsurfaceve.Text + "','" + Textsurfacevo.Text + "')";

            //    SqlCommand cmd = new SqlCommand(ab, conn);
            //    cmd.ExecuteNonQuery();
            //    Textsomme.Text = c.ToString();
            //    //Response.Redirect("Foncier.aspx");
            //    conn.Close();
            //    }
            //    catch(Exception ex)
            //        {

            //            Labelfiche.Text = "Erreur de validation ";



            string CS = ConfigurationManager.ConnectionStrings["DBCS"].ConnectionString;

            if (exixt() == false)
            {

                SqlConnection conn = new SqlConnection(CS);
                conn.Open();
                SqlCommand cmd = new SqlCommand("", conn);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.CommandText = "ajoutficheprojet";
                cmd.Parameters.Add("@CodeProjet", SqlDbType.Int).Value = Textcodeprojet.Text;
                cmd.Parameters.Add("@TypeLogement", SqlDbType.VarChar, 30).Value = Droptypelogement.Text;
                cmd.Parameters.Add("@OuvrageAcc", SqlDbType.Float).Value = Dropouvrageacc.Text;
                cmd.Parameters.Add("@Terrain", SqlDbType.Float).Value = Texttarrain.Text;
                cmd.Parameters.Add("@ReferanceTerrain", SqlDbType.Float).Value = Textreference.Text;
                cmd.Parameters.Add("@Zone", SqlDbType.Float).Value = Dropzone.Text;
                cmd.Parameters.Add("@Distinction", SqlDbType.VarChar, 30).Value = CheckBoxList1.Text;
                cmd.Parameters.Add("@PrixDGI", SqlDbType.Float).Value = Textprixdgi.Text;
                cmd.Parameters.Add("@PrixPorteurProjet", SqlDbType.Float).Value = Textprixprojet.Text;
                cmd.Parameters.Add("@SurfacePlache", SqlDbType.Float).Value = Textsurfacepl.Text;
                cmd.Parameters.Add("@SurfaceVentable", SqlDbType.Float).Value = Textsurfaceve.Text;
                cmd.Parameters.Add("@SurfaceVoirie", SqlDbType.Float).Value = Textsurfacevo.Text;
                cmd.ExecuteNonQuery();
                Response.Redirect("Foncier.aspx");
                //Session["users"] = txtNom.Text;
                conn.Close();
            }
            else
            {
                Labelfiche.Text = " code non valide";
            }
        }
        public bool exixt()
        {
            string CS = ConfigurationManager.ConnectionStrings["DBCS"].ConnectionString;
            SqlConnection conn = new SqlConnection(CS);
            conn.Open();
            bool e = false;
            SqlCommand cmd = new SqlCommand("select * from ficheProjet where codeProjet='" + Textcodeprojet.Text + "'", conn);
            dr = cmd.ExecuteReader();
            if (dr.HasRows == true)
            {
                e = true;
            }
            dr.Close();
            conn.Close();
            return e;

        }

        protected void CheckBoxList1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}