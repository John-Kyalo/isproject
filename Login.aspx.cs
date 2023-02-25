using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;



namespace GYM_Mgt_System
{
    public partial class Login : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;

        public bool PostBack { get; private set; }

        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("SELECT * from Register where Name='" + TextBox1.Text.Trim()+"' " +
                    "AND Password='"+TextBox2.Text.Trim()+"'", con);

                SqlDataReader dr = cmd.ExecuteReader();
                if (dr.HasRows)
                {
                    while(dr.Read())
                    {
                        Response.Write("<script>alert('Successful Login');</script>");
                        Session["Name"] = dr.GetValue(0).ToString();
                        Session["Password"] = dr.GetValue(3).ToString();
                        Session["role"] = "user";

                    }
                    Response.Redirect("Home.aspx");
                }
                else
                {
                    Response.Write("<script>alert('Invalid');</script>");
                }
            }
            catch(Exception ex)
            {
                Response.Write("<script>alert('"+ex.Message+"');</script>");
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("Register Here.aspx");
        }
    }
}