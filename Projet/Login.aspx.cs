using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;

namespace Projet
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string CS=ConfigurationManager.ConnectionStrings["DBCS"].ConnectionString;
            SqlConnection conn=new SqlConnection(CS);
            conn.Open();
            SqlCommand cmd = new SqlCommand("select count(*)from Users where Nom='" + txtLogin.Text + "'and Pass ='" + txtPassword.Text + "' ", conn);

            string output = cmd.ExecuteScalar().ToString();
            if (output == "1")
            {
                Session["user"] = txtLogin.Text.ToLower();
                Session["pass"] = txtPassword.Text;
                Response.Redirect("FicheProjet.aspx");
                //if (Session["user"] == null || Session["pass"]==null)
                //{
                //    Response.Redirect("login.aspx");
                //}
            }
            else
            {
                Label1.Text=("Login ou le password incorrect");
            }
            conn.Close();
        }

        //protected void Button2_Click(object sender, EventArgs e)
        //{
        //    Response.Redirect("Registration.aspx");
        //}
    }
}