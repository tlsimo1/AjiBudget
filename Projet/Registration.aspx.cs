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
    public partial class Registration : System.Web.UI.Page
    {
        string CS = ConfigurationManager.ConnectionStrings["DBCS"].ConnectionString;
        SqlDataReader dr;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            //try
            //{
            
            //string CS = ConfigurationManager.ConnectionStrings["DBCS"].ConnectionString;
            //SqlConnection conn = new SqlConnection(CS);
            //conn.Open();
            //SqlCommand cmd = new SqlCommand("insert into Users values ('"+txtNom.Text+"','"+txtAdress.Text+"','"+txtEmail.Text+"','"+txtPss.Text+"')", conn);
            //int temp=Convert.ToInt32( cmd.ExecuteNonQuery().ToString());
            //if (temp == 1)
            //{
            //    Response.Redirect("Login.aspx");
            //}

            //else 
            //{
            //    Label1.Text=("Erreur de validation");
            //}
            //conn.Close();
            
            //}
            //catch(Exception ex)
            //    {
            //        Label1.Text = "Erreur de validation";

            //    }

            // pour la verification 
            //int a = 0;
            //if(int.TryParse(txtNom.Text,out a)==false)
            //{
            //    Label1.Text = "donner un nombre a ce text ";
            //}


            string CS = ConfigurationManager.ConnectionStrings["DBCS"].ConnectionString;
            
            if (exixt() == false)
            {
                
                SqlConnection conn = new SqlConnection(CS);
                conn.Open();
                SqlCommand cmd = new SqlCommand("",conn);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.CommandText = "ajoutusers";
                cmd.Parameters.Add("@Non", SqlDbType.VarChar, 30).Value = txtNom.Text.ToLower();
                cmd.Parameters.Add("@Adress", SqlDbType.VarChar, 30).Value = txtAdress.Text.ToLower();
                cmd.Parameters.Add("@Email", SqlDbType.VarChar, 30).Value = txtEmail.Text.ToLower();
                cmd.Parameters.Add("@Passord", SqlDbType.VarChar, 30).Value = txtPss.Text;
                cmd.ExecuteNonQuery();
                Response.Redirect("Login.aspx");
                //Session["users"] = txtNom.Text;
                conn.Close();
            }
            else
            {
                Label1.Text = " user name exist deja";
            }
            
        }

        public bool exixt()
        {
            SqlConnection conn = new SqlConnection(CS);
            conn.Open();
            bool e = false;
            SqlCommand cmd = new SqlCommand("select * from users where Nom='"+txtNom.Text+"'",conn);
            dr=cmd.ExecuteReader();
            if(dr.HasRows==true)
                {
                    e=true;
                }
            dr.Close();
            conn.Close();
            return e;

        }
    }
}