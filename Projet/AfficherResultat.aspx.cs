using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

namespace Projet
{
    public partial class AfficherResultat : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["DBCS"].ConnectionString);
        SqlDataReader dr;
        protected void Page_Load(object sender, EventArgs e)
        {
            if(Session["user"]==null)
            {
                Response.Redirect("Login.aspx");
            }

            
        }

        protected void BTNR_Click(object sender, EventArgs e)
        {
            Response.Redirect("CrystalR1.aspx");




        }
    }
}