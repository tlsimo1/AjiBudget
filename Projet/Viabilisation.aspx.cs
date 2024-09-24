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
    public partial class Viabilisation : System.Web.UI.Page
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
            SqlCommand cmd1 = new SqlCommand("select codeProjet from ficheProjet  where codeProjet=" + Session["codeprojet"] + "", conn);
            dr = cmd1.ExecuteReader();
            while (dr.Read())
            {
                DropCP.Items.Add(dr["codeProjet"].ToString());
            }
            conn.Close();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
      
         }

        protected void Button1_Click1(object sender, EventArgs e)
        {
            // try
            //{
            //     SqlConnection conn = new SqlConnection(CS);
            //     conn.Open();
            //     SqlCommand cmd = new SqlCommand("insert into viabilisation values ('" + Textpont.Text + "','" + Textfosse.Text + "','" + Textchateau.Text + "'," + DropCP.Text + ")", conn);
            //     cmd.ExecuteNonQuery();
            //     Label1.Text = "validation enregistrer";
            //     //Response.Redirect("construction.aspx");
            //     conn.Close();
            //  }catch( Exception ex)
            //     {
            //         Label1.Text = ex.ToString();
            //     }

            int a = 0;

            if (int.TryParse(Textpont.Text, out a) == false || int.TryParse(Textfosse.Text, out a) == false || int.TryParse(Textchateau.Text, out a) == false)
            {
                Label1.Text = ("erreur de validation");
            }
            else
            {
                SqlConnection conn = new SqlConnection(CS);
                conn.Open();
                SqlCommand cmd = new SqlCommand("", conn);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.CommandText = "ajoutviabilisation";
                cmd.Parameters.Add("@Pont", SqlDbType.Float).Value = Textpont.Text;
                cmd.Parameters.Add("@Fosse", SqlDbType.Float).Value = Textfosse.Text;
                cmd.Parameters.Add("@Chateaudeau", SqlDbType.Float).Value = Textchateau.Text;
                cmd.Parameters.Add("@codeP", SqlDbType.Int).Value = DropCP.Text;
                cmd.ExecuteNonQuery();
                Response.Redirect("tabledecalcule.aspx");
                //Session["users"] = txtNom.Text;
                conn.Close();
            }
        }
        }
    }
