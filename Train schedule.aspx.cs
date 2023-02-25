using System;
using System.Collections.Generic;
using System.Linq;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace GYM_Mgt_System
{
    public partial class Train_schedule : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
           
        }
        //add schedule
        protected void Button1_Click(object sender, EventArgs e)
        {
            AddSchedule();
        }
          
        void AddSchedule()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("INSERT INTO Schedule(Schedule_Id,Shedule_name,Schedule_day/time,Trainer)values(@Schedule_Id,@Shedule_name,@Schedule_day/time,@Trainer)", con);

                cmd.Parameters.AddWithValue("@Schedule_Id", TextBox4.Text.Trim());
                cmd.Parameters.AddWithValue("@Shedule_name", TextBox1.Text.Trim());
                cmd.Parameters.AddWithValue("@Schedule_day/time", TextBox2.Text.Trim());
                cmd.Parameters.AddWithValue("@Trainer", TextBox3.Text.Trim());


                cmd.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>alert('Schedule added');</script>");
                
            }

            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }

        //update schedule
        protected void Button3_Click(object sender, EventArgs e)
        {
            if (checkIfScheduleExists())
            {
                updateScheduleById();
            }
            else
            {
                Response.Write("<script>alert('Schedule does not exist');</script>");
            }
        }
        void updateScheduleById()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("UPDATE Schedule SET Schedule_day/time,Trainer=@Schedule_day/time,@Trainer WHERE Schedule_Id='" + TextBox4.Text.Trim() + "'", con);

                cmd.Parameters.AddWithValue("@Schedule_day/time", TextBox2.Text.Trim());
                cmd.Parameters.AddWithValue("@Trainer", TextBox3.Text.Trim());

                cmd.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>alert('Schedule updated');</script>");

                
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }

        //delete schedule
        protected void Button2_Click(object sender, EventArgs e)
        {
            deleteScheduleById();
        }
        void deleteScheduleById()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("DELETE from Schedule where Schedule_Id='" + TextBox4.Text.Trim() + "';", con);
                cmd.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>alert('Schedule deleted');</script>");
                clearform();
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
            TextBox4.Text = "";
        }

        //go button
        protected void Button4_Click(object sender, EventArgs e)
        {
            getScheduleById();
        }

        bool checkIfScheduleExists()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("SELECT * from Schedule where Schedule_Id='" + TextBox4.Text.Trim() + "';", con);
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
        void getScheduleById()
        {
            SqlConnection con = new SqlConnection(strcon);
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }
            SqlCommand cmd = new SqlCommand("SELECT * from Schedule where Schedule_Id='" + TextBox4.Text.Trim() + "';", con);
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.HasRows)
            {
                while (dr.Read())
                {
                    TextBox1.Text = dr.GetValue(1).ToString();
                    TextBox2.Text = dr.GetValue(2).ToString();
                    TextBox3.Text = dr.GetValue(3).ToString();
                }
            }
        }
    }

        
}
