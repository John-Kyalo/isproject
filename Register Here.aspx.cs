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
    public partial class Register_Here : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;


        protected void Page_Load(object sender, EventArgs e)
        {
        ValidationSettings: UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if(checkUserExists())
            {
                Response.Write("<script>alert('This Name exists,Use a different Name');</script>");
            }
            else
            {
                RegisterNewUser();
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

                SqlCommand cmd = new SqlCommand("SELECT * from Register where Name='"+TextBox1.Text.Trim()+"';",con);
                SqlDataAdapter da = new SqlDataAdapter(cmd);

                DataTable dt = new DataTable();
                da.Fill(dt);

                if(dt.Rows.Count >=1)
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


        void RegisterNewUser()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("INSERT INTO Register(Name,Phone_No,User_Email,Password) values(@Name,@Phone_No,@User_Email,@Password)", con);





                cmd.Parameters.AddWithValue("@Name", TextBox1.Text.Trim());
                cmd.Parameters.AddWithValue("@Phone_No", TextBox3.Text.Trim());
                cmd.Parameters.AddWithValue("@User_Email", TextBox2.Text.Trim());
                cmd.Parameters.AddWithValue("@Password", TextBox4.Text.Trim());

                cmd.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>alert('Account Created Successfully');</script>");

            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }
    }
}