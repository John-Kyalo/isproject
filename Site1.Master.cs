using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace GYM_Mgt_System
{
    public partial class Site1 : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                if (Session["role"].Equals(""))
                {
                    LinkButton3.Visible = true;
                    LinkButton2.Visible = true;

                    LinkButton4.Visible = false;
                    LinkButton5.Visible = false;
                    LinkButton1.Visible = false;
                    LinkButton9.Visible = false;
                }
                else if (Session["role"].Equals("user"))
                {
                    LinkButton2.Visible = false;
                    LinkButton3.Visible = false;
                    LinkButton4.Visible = true;
                    LinkButton5.Visible = false;
                    LinkButton1.Visible = true;
                    LinkButton9.Visible = false;
                }
                else if (Session["role"].Equals("Admin"))
                {
                    LinkButton2.Visible = false;
                    LinkButton3.Visible = false;
                    LinkButton4.Visible = true;
                    LinkButton5.Visible = true;
                    LinkButton1.Visible = true;
                    LinkButton6.Visible = false;
                    LinkButton9.Visible = true;
                }
            }
            catch(Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }

        protected void LinkButton3_Click(object sender, EventArgs e)
        {
            Response.Redirect("Login.aspx");
        }

        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            Response.Redirect("Register Here.aspx");
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Response.Redirect("Schedule.aspx");
        }

        protected void LinkButton4_Click(object sender, EventArgs e)
        {
            Session["Name"] = "";
            Session["role"] = "";

            LinkButton3.Visible = true;
            LinkButton2.Visible = true;

            LinkButton4.Visible = false;
            LinkButton5.Visible = false;
            LinkButton1.Visible = false;

            Response.Redirect("Home.aspx");

        }

        protected void LinkButton5_Click(object sender, EventArgs e)
        {
            Response.Redirect("Report Management.aspx");
        }

        protected void LinkButton6_Click(object sender, EventArgs e)
        {
            Response.Redirect("Admin.aspx");
        }
        protected void LinkButton7_Click(object sender, EventArgs e)
        {
            Response.Redirect("Contact us.aspx");
        }

        protected void LinkButton8_Click(object sender, EventArgs e)
        {
            Response.Redirect("Register Class.aspx");
        }

        protected void LinkButton9_Click(object sender, EventArgs e)
        {
            Response.Redirect("Admin view.aspx");
        }

        protected void LinkButton10_Click(object sender, EventArgs e)
        {
            Response.Redirect("Train schedule.aspx");
        }
    }
}