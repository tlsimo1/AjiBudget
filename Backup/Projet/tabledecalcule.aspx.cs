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
    public partial class WebForm2 : System.Web.UI.Page
    {
        //string CS = ConfigurationManager.ConnectionStrings["DBCS"].ConnectionString;
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["DBCS"].ConnectionString);
        SqlDataReader dr;
        
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["user"] == null)
            {
                Response.Redirect("Login.aspx");
            }
            if (!IsPostBack)
            {

                conn.Open();
                SqlCommand cmd = new SqlCommand(" select * from ficheProjet  where codeProjet='" + Session["codeprojet"] + "' ", conn);
                dr = cmd.ExecuteReader();
                while (dr.Read())
                {
                    DropTerrain.Items.Add(new ListItem(dr["terrain"].ToString(), dr["codeProjet"].ToString()));
                }
                dr.Close();
                conn.Close();


                conn.Open();
                SqlCommand cmd1 = new SqlCommand(" select * from foncier  where codeProjet='" + Session["codeprojet"] + "' ", conn);
                dr = cmd1.ExecuteReader();
                while (dr.Read())
                {
                    DropERcf.Items.Add(new ListItem(dr["enregistrementcf"].ToString(), dr["numfoncier"].ToString()));
                    DropNotaire.Items.Add(new ListItem(dr["notaire"].ToString(), dr["numfoncier"].ToString()));
                }
                dr.Close();
                conn.Close();

                conn.Open();
                SqlCommand cmd2 = new SqlCommand(" select * from viabilisation  where codeProjet='" + Session["codeprojet"] + "' ", conn);
                dr = cmd2.ExecuteReader();
                while (dr.Read())
                {
                    DropVS.Items.Add(new ListItem(dr["pont"].ToString(), dr["numviabilisation"].ToString()));
                }
                dr.Close();
                conn.Close();

                conn.Open();
                SqlCommand cmd3 = new SqlCommand(" select * from construction  where codeProjet='" + Session["codeprojet"] + "' ", conn);
                dr = cmd3.ExecuteReader();
                while (dr.Read())
                {
                    DropCNR.Items.Add(new ListItem(dr["constructionLogSoc"].ToString(), dr["numconstruction"].ToString()));
                    DropCNP1.Items.Add(new ListItem(dr["contructionEqP1"].ToString(), dr["numconstruction"].ToString()));
                    DropCNP2.Items.Add(new ListItem(dr["contructionEqP2"].ToString(), dr["numconstruction"].ToString()));
                }
                dr.Close();
                conn.Close();

            }
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {

           
        }

        protected void DropTerrain_SelectedIndexChanged(object sender, EventArgs e)
        {

            conn.Open();
            SqlCommand cmd1 = new SqlCommand(" select enregistrementcf from foncier where numfoncier='" + DropERcf.Text + "' ", conn);
            dr = cmd1.ExecuteReader();
            while (dr.Read())
            {

                TextERcf.Text = dr["enregistrementcf"].ToString();

            }
            dr.Close();
            conn.Close();
        }

        protected void DropNotaire_SelectedIndexChanged(object sender, EventArgs e)
        {
            conn.Open();
            SqlCommand cmd1 = new SqlCommand(" select notaire from foncier where numfoncier='" + DropNotaire.Text + "' ", conn);
            dr = cmd1.ExecuteReader();
            while (dr.Read())
            {

                TextNotaire.Text = dr["notaire"].ToString();

            }
            dr.Close();
            conn.Close();
        }

        protected void DropVS_SelectedIndexChanged(object sender, EventArgs e)
        {
            conn.Open();
            SqlCommand cmd1 = new SqlCommand(" select pont from viabilisation where numviabilisation='" + DropVS.Text + "' ", conn);
            dr = cmd1.ExecuteReader();
            while (dr.Read())
            {

                TextVS.Text = dr["pont"].ToString();

            }
            dr.Close();
            conn.Close();
        }

        protected void DropCNR_SelectedIndexChanged(object sender, EventArgs e)
        {
            conn.Open();
            SqlCommand cmd1 = new SqlCommand(" select constructionLogSoc from construction where numconstruction ='" + DropCNR.Text + "' ", conn);
            dr = cmd1.ExecuteReader();
            while (dr.Read())
            {

                TextCNR.Text = dr["constructionLogSoc"].ToString();

            }
            dr.Close();
            conn.Close();
        }

        protected void DropCNP1_SelectedIndexChanged(object sender, EventArgs e)
        {
            conn.Open();
            SqlCommand cmd1 = new SqlCommand(" select contructionEqP1 from construction where numconstruction ='" + DropCNP1.Text + "' ", conn);
            dr = cmd1.ExecuteReader();
            while (dr.Read())
            {

                TextCNP1.Text = dr["contructionEqP1"].ToString();

            }
            dr.Close();
            conn.Close();
        }

        protected void DropCNP2_SelectedIndexChanged(object sender, EventArgs e)
        {
            conn.Open();
            SqlCommand cmd1 = new SqlCommand(" select contructionEqP2 from construction where numconstruction ='" + DropCNP2.Text + "' ", conn);
            dr = cmd1.ExecuteReader();
            while (dr.Read())
            {

                TextCNP2.Text = dr["contructionEqP2"].ToString();

            }
            dr.Close();
            conn.Close();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
          
           
            //TextTpi.Text = null;
            
                if (DropTerrain1.SelectedValue == "NB")
                {
                    if (TextTerrain.Text == "" || TextTerrain1.Text == "")
                    {
                        TextTerrain1.Text = null;
                        TextTerrain.Text = null;

                    }
                    else
                    {
                        double ab = double.Parse(TextTerrain.Text);
                        double ac = double.Parse(TextTerrain1.Text);
                        TextTerrain2.Text = (ab * ac).ToString();
                    }

                }
                if (DropTerrain1.SelectedValue == "%")
                {
                    if (TextTerrain.Text == "" || TextTerrain1.Text == "")
                    {
                        TextTerrain1.Text = null;
                        TextTerrain.Text = null;

                    }
                    else
                    {
                        double ab = double.Parse(TextTerrain.Text);
                        double ac = double.Parse(TextTerrain1.Text);
                        TextTerrain2.Text = (ab * (ac * 0.5)).ToString();
                    }
                }

                if (DropERcf1.SelectedValue == "NB")
                {
                    if (TextERcf.Text == "" || TextERcf1.Text == "")
                    {
                        TextERcf.Text = null;
                        TextERcf1.Text = null;
                    }
                    else
                    {
                        double ab = double.Parse(TextERcf.Text);
                        double ac = double.Parse(TextERcf1.Text);
                        TextERcf2.Text = (ab * ac).ToString();
                    }

                }
                if (DropERcf1.SelectedValue == "%")
                {
                    if (TextERcf.Text == "" || TextERcf1.Text == "")
                    {
                        TextERcf.Text = null;
                        TextERcf1.Text = null;
                    }
                    else
                    {
                        double ab = double.Parse(TextERcf.Text);
                        double ac = double.Parse(TextERcf1.Text);
                        TextERcf2.Text = (ab * (ac * 0.5)).ToString();
                    }
                }

                if (DropNotaire1.SelectedValue == "NB")
                {
                    if (TextNotaire.Text == "" || TextNotaire1.Text == "")
                    {
                        TextNotaire.Text = null;
                        TextNotaire1.Text = null;
                    }
                    else
                    {
                        double ab = double.Parse(TextNotaire.Text);
                        double ac = double.Parse(TextNotaire1.Text);
                        TextNotaire2.Text = (ab * ac).ToString();
                    }

                }
                if (DropNotaire1.SelectedValue == "%")
                {
                    if (TextNotaire.Text == "" || TextNotaire1.Text == "")
                    {
                        TextNotaire.Text = null;
                        TextNotaire1.Text = null;
                    }
                    else
                    {
                        double ab = double.Parse(TextNotaire.Text);
                        double ac = double.Parse(TextNotaire1.Text);
                        TextNotaire2.Text = (ab * (ac * 0.5)).ToString();
                    }
                }

                if (DropCNR1.SelectedValue == "NB")
                {
                    if (TextCNR.Text == "" || TextCNR1.Text == "")
                    {
                        TextCNR.Text = null;
                        TextCNR1.Text = null;
                    }
                    else
                    {
                        double ab = double.Parse(TextCNR.Text);
                        double ac = double.Parse(TextCNR1.Text);
                        TextCNR2.Text = (ab * ac).ToString();
                    }

                }
                if (DropCNR1.SelectedValue == "%")
                {
                    if (TextCNR.Text == "" || TextCNR1.Text == "")
                    {
                        TextCNR.Text = null;
                        TextCNR1.Text = null;
                    }
                    else
                    {
                        double ab = double.Parse(TextCNR.Text);
                        double ac = double.Parse(TextCNR1.Text);
                        TextCNR2.Text = (ab * (ac * 0.5)).ToString();
                    }
                }

                if (DropCNP12.SelectedValue == "NB")
                {
                    if (TextCNP1.Text == "" || TextCNP11.Text == "")
                    {
                        TextCNP1.Text = null;
                        TextCNP11.Text = null;
                    }
                    else
                    {
                        double ab = double.Parse(TextCNP1.Text);
                        double ac = double.Parse(TextCNP11.Text);
                        TextCNP12.Text = (ab * ac).ToString();
                    }

                }
                if (DropCNP12.SelectedValue == "%")
                {
                    if (TextCNP1.Text == "" || TextCNP11.Text == "")
                    {
                        TextCNP1.Text = null;
                        TextCNP11.Text = null;
                    }
                    else
                    {
                        double ab = double.Parse(TextCNP1.Text);
                        double ac = double.Parse(TextCNP11.Text);
                        TextCNP12.Text = (ab * (ac * 0.5)).ToString();
                    }
                }

                if (DropCNP22.SelectedValue == "NB")
                {
                    if (TextCNP2.Text == "" || TextCNP22.Text == "")
                    {
                        TextCNP2.Text = null;
                        TextCNP22.Text = null;

                    }
                    else
                    {
                        double ab = double.Parse(TextCNP2.Text);
                        double ac = double.Parse(TextCNP22.Text);
                        TextCNP23.Text = (ab * ac).ToString();
                    }

                }
                if (DropCNP22.SelectedValue == "%")
                {
                    if (TextCNP2.Text == "" || TextCNP22.Text == "")
                    {
                        TextCNP2.Text = null;
                        TextCNP22.Text = null;

                    }
                    else
                    {
                        double ab = double.Parse(TextCNP2.Text);
                        double ac = double.Parse(TextCNP22.Text);
                        TextCNP23.Text = (ab * (ac * 0.5)).ToString();
                    }
                }

                if (TextTpi.Text == "")
                {
                    TextTpi.Text = null;
                    double a = 0.3;
                    TextTpi2.Text = a.ToString();

                }
                else
                {
                    //TextTpi.Text=null;
                    double az = double.Parse(TextTpi.Text);
                    double c = (az / 100);
                    TextTpi2.Text = c.ToString();
                }

                if (DropVS1.SelectedValue == "NB")
                {
                    if (TextVS.Text == "" || TextVS1.Text == "")
                    {
                        TextVS.Text = null;
                        TextVS1.Text = null;

                    }
                    else
                    {
                        double aa = double.Parse(TextVS.Text);
                        double bb = double.Parse(TextVS1.Text);
                        double cc = (aa * bb);
                        TextVS2.Text = cc.ToString();

                    }
                }
                if (DropVS1.SelectedValue == "%")
                {
                    if (TextVS.Text == "" || TextVS1.Text == "")
                    {
                        TextVS.Text = null;
                        TextVS1.Text = null;

                    }
                    else
                    {
                        double an = double.Parse(TextVS.Text);
                        double ab = double.Parse(TextVS1.Text);
                        TextVS2.Text = (an * (ab * 0.5)).ToString();
                    }
                }
   
                TextTotal1.Text = (double.Parse(TextTerrain2.Text) + double.Parse(TextERcf2.Text) + double.Parse(TextNotaire2.Text) + double.Parse(TextTpi2.Text)).ToString();



                if (Textfrais.Text == "")
                {
                    Textfrais.Text = null;
                    TextST.Text = (double.Parse(TextVS2.Text) + double.Parse(TextCNR2.Text) + double.Parse(TextCNP12.Text) + double.Parse(TextCNP23.Text) + double.Parse(TextTotal1.Text)).ToString();

                }
                else
                {
                    double frais = double.Parse(Textfrais.Text);
                    TextST.Text = (double.Parse(TextVS2.Text) + double.Parse(TextCNR2.Text) + double.Parse(TextCNP12.Text) + double.Parse(TextCNP23.Text) + frais + double.Parse(TextTotal1.Text)).ToString();

                

            }

            
        }

        protected void Afficher_Click(object sender, EventArgs e)
        {
            if (Session["user"] == null)
            {
                Response.Redirect("Login.aspx");
            }
            else
            {
                Response.Redirect("AfficherResultat.aspx");
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Textuser.Text = Session["user"].ToString();
            string CS = ConfigurationManager.ConnectionStrings["DBCS"].ConnectionString;

            SqlConnection conn = new SqlConnection(CS);
            conn.Open();
            SqlCommand cmd = new SqlCommand("", conn);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.CommandText = "ajoutResultat";
            cmd.Parameters.Add("@TreeainTf", SqlDbType.Float).Value = TextTerrain2.Text;
            cmd.Parameters.Add("@enregistrementCF", SqlDbType.Float).Value = TextERcf2.Text;
            cmd.Parameters.Add("@Notaire", SqlDbType.Float).Value = TextNotaire2.Text;
            cmd.Parameters.Add("@TPI", SqlDbType.Float).Value = TextTpi2.Text;
            cmd.Parameters.Add("@Somme", SqlDbType.Float).Value = TextTotal1.Text;
            cmd.Parameters.Add("@viabilisation", SqlDbType.Float).Value = TextVS2.Text;
            cmd.Parameters.Add("@ConstructionLogSR3", SqlDbType.Float).Value = TextCNR2.Text;
            cmd.Parameters.Add("@constructionEquipePR1", SqlDbType.Float).Value = TextCNP12.Text;
            cmd.Parameters.Add("@CconstructionEquipePR2", SqlDbType.Float).Value = TextCNP23.Text;
            cmd.Parameters.Add("@FraisGenereux", SqlDbType.Float).Value = Textfrais.Text;
            cmd.Parameters.Add("@SommeTotal", SqlDbType.Float).Value = TextST.Text;
            cmd.Parameters.Add("@username", SqlDbType.VarChar, 30).Value = Textuser.Text;
            cmd.Parameters.Add("@CodeProjet", SqlDbType.Int).Value = Session["codeprojet"];

            cmd.ExecuteNonQuery();
            Label1.Text = "Ajouter";
            //Response.Redirect("Foncier.aspx");
            //Session["users"] = txtNom.Text;
            conn.Close();
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("CrystalR1.aspx");
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            Response.Redirect("WebForm4.aspx");
        }

       

        protected void DropDownList111_SelectedIndexChanged(object sender, EventArgs e)
        {
            conn.Open();
            SqlCommand cmd = new SqlCommand(" select * from foncier where numfoncier='" + DropERcf.Text + "' ", conn);
            dr = cmd.ExecuteReader();
            while (dr.Read())
            {

                TextERcf.Text = dr["enregistrementcf"].ToString();

            }
            dr.Close();
            conn.Close();
        }

        protected void DropDownList1_SelectedIndexChanged2(object sender, EventArgs e)
        {
            conn.Open();
            SqlCommand cmd = new SqlCommand(" select * from ficheProjet  where codeProjet='" + DropTerrain.Text + "' ", conn);
            dr = cmd.ExecuteReader();
            while (dr.Read())
            {

                TextTerrain.Text = dr["terrain"].ToString();

            }
            dr.Close();
            conn.Close();
        }

       
    }
}