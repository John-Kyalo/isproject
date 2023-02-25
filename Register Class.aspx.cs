using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace GYM_Mgt_System
{
    public partial class Register_Class : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            GridView1.DataBind();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (checkUserExists())
            {
               RegNewClass();
            }
            else
            {
                Response.Write("<script>alert('Get Registered first Please');</script>");
            }
        }

        bool checkUserExists()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("SELECT * from Register where Name='" + TextBox1.Text.Trim() + "';", con);
                SqlDataAdapter da = new SqlDataAdapter(cmd);

                DataTable dt = new DataTable();
                da.Fill(dt);

                if (dt.Rows.Count >= 1)
                {
                    return true;
                }
                else
                {
                    return false;
                }




            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }

            return false;
        }
        void RegNewClass()
        
        {

        
        try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("INSERT INTO Classes(Id,Username,Class)values(@Id,@Username,@Class)", con);

                cmd.Parameters.AddWithValue("@Id", TextBox3.Text.Trim());
                cmd.Parameters.AddWithValue("@Username", TextBox1.Text.Trim());
                cmd.Parameters.AddWithValue("@Class", TextBox2.Text.Trim());



                cmd.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>alert('Class Registered');</script>");
                GridView1.DataBind();
                clearForm();
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }
         
        void clearForm()
        {
            TextBox1.Text ="";
            TextBox2.Text ="";
            TextBox3.Text ="";

        }
    }
}