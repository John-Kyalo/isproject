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
    public partial class Report_Management : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {
            GridView1.DataBind();
        }



        //go button
        protected void Button1_Click(object sender, EventArgs e)
        {
            getMemberById();
        }
        bool checkIfMemberExists()
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

        void getMemberById()
        {


            SqlConnection con = new SqlConnection(strcon);
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }
            SqlCommand cmd = new SqlCommand("SELECT * from Register where Name='" + TextBox1.Text.Trim() + "';", con);
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.HasRows)
            {
                while (dr.Read())
                {
                    TextBox2.Text = dr.GetValue(2).ToString();
                    TextBox3.Text = dr.GetValue(1).ToString();
                }
            }

        }
        //delete button
        protected void Button2_Click(object sender, EventArgs e)
        {
            deleteMemberById();
        }

        void deleteMemberById()
        {


            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("DELETE from Register where Name='" + TextBox1.Text.Trim() + "';", con);
                cmd.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>alert('Member deleted');</script>");
                clearform();
                GridView1.DataBind();
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }

        void clearform()
        {
            TextBox1.Text = "";
            TextBox2.Text = "";
            TextBox3.Text = "";
        }
        //add member
        protected void Button3_Click(object sender, EventArgs e)
        {
            addMemberById();
        }
        void addMemberById()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("INSERT INTO Register(Name,Phone_No,User_Email)values(@Name,@Phone_No,@User_Email)", con);

                cmd.Parameters.AddWithValue("@Name", TextBox1.Text.Trim());
                cmd.Parameters.AddWithValue("@Phone_No", TextBox3.Text.Trim());
                cmd.Parameters.AddWithValue("@User_Email", TextBox2.Text.Trim());
                

                cmd.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>alert('Member added');</script>");
                
                GridView1.DataBind();
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }
        //update member
        protected void Button4_Click(object sender, EventArgs e)
        {
            if (checkIfMemberExists())
            {
                updateMemberById();
            }
            else
            {
                Response.Write("<script>alert('Member does not exist');</script>");
            }
        }

        void updateMemberById()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("UPDATE Register SET Phone_No=@Phone_No WHERE Name='"+TextBox1.Text.Trim()+"'",con);

                cmd.Parameters.AddWithValue("@Phone_No", TextBox3.Text.Trim());


                cmd.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>alert('Member updated');</script>");

                GridView1.DataBind();
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }
    }
}

