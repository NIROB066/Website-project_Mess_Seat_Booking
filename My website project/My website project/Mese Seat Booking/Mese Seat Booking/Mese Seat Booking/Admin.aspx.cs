using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class Mese_Seat_Booking_Admin : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["reqdeleted"]!=null)
        {
            Response.Write("<script>alert('Successfully Deleted...');</script>");
            Session["reqdeleted"] =null;
        }
        if(Session["accepted"]!=null)
        {
            Response.Write("<script>alert('Request accepted successfully!!!');</script>");
            Session["accepted"] = null;
        }
        if (!IsPostBack)
        {
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["RegistrationConnectionString"].ConnectionString);
            conn.Open();
            string abt = "select [about] from [admin] where [username]='admin01'";
            string hotty = "select [hotnews] from [admin] where [username]='admin01'";
            string username = "select [username] from [admin]";
            string countreq = "select count(username) from [request]";
            SqlCommand com2 = new SqlCommand(username, conn);
            SqlCommand com = new SqlCommand(abt, conn);
            SqlCommand com1 = new SqlCommand(hotty, conn);
            SqlCommand comcount = new SqlCommand(countreq, conn);
            aboutweb.Text = com.ExecuteScalar().ToString();
            hot.Text = com1.ExecuteScalar().ToString();
            masqueetext.Text= com1.ExecuteScalar().ToString();
            userlabel.Text = com2.ExecuteScalar().ToString();
            reql.Text = comcount.ExecuteScalar().ToString();
            pmlable.Text= comcount.ExecuteScalar().ToString();

            conn.Close();
        }
        
    }

    protected void Unnamed3_Click(object sender, EventArgs e)
    {
        if (IsPostBack)
        {
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["RegistrationConnectionString"].ConnectionString);
            conn.Open();
            string abouts = "update [admin] set [about]='" + aboutweb.Text + "' where [username]='admin01'";
            SqlCommand com = new SqlCommand(abouts, conn);
            com.ExecuteScalar();
            Response.Write("<script>alert('Successfully Updated!!!');</script>");
            conn.Close();
        }
    }

    protected void Unnamed5_Click(object sender, EventArgs e)
    {
        if (IsPostBack)
        {
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["RegistrationConnectionString"].ConnectionString);
            conn.Open();
            string abouts = "update [admin] set [hotnews]='" + hot.Text + "' where [username]='admin01'";
            string hotty = "select [hotnews] from [admin] where [username]='admin01'";
            SqlCommand com1 = new SqlCommand(hotty, conn);
            SqlCommand com = new SqlCommand(abouts, conn);
            com.ExecuteScalar();
            masqueetext.Text=com1.ExecuteScalar().ToString();
            Response.Write("<script>alert('Successfully Updated!!!');</script>");
            conn.Close();
        }
    }

    protected void userbutton_Click(object sender, EventArgs e)
    {
        Response.Redirect("main.aspx");
    }



    protected void oneb_Click(object sender, EventArgs e)
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["RegistrationConnectionString"].ConnectionString);
        conn.Open();
        string userc = "select count(userid) from [Table] where userid='"+ one1 .Text+ "'";
        SqlCommand usercCom = new SqlCommand(userc, conn);
        string resuserc = usercCom.ExecuteScalar().ToString();
        if(resuserc!="0")
        {
            string updateuserc = "update [advertisement] set username='" + one1.Text + "' where id=1";
            SqlCommand updatecome = new SqlCommand(updateuserc, conn);
            updatecome.ExecuteScalar();
            Response.Write("<script>alert('Successfully added for advertisement...');</script>");
        }
        else
        {
            Response.Write("<script>alert('Username doesnot exist...');</script>");
        }
        conn.Close();
    }

    protected void twob_Click(object sender, EventArgs e)
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["RegistrationConnectionString"].ConnectionString);
        conn.Open();
        string userc = "select count(userid) from [Table] where userid='" + two2.Text + "'";
        SqlCommand usercCom = new SqlCommand(userc, conn);
        string resuserc = usercCom.ExecuteScalar().ToString();
        if (resuserc != "0")
        {
            string updateuserc = "update [advertisement] set username='" + two2.Text + "' where id=2";
            SqlCommand updatecome = new SqlCommand(updateuserc, conn);
            updatecome.ExecuteScalar();
            Response.Write("<script>alert('Successfully added for advertisement...');</script>");
        }
        else
        {
            Response.Write("<script>alert('Username doesnot exist...');</script>");
        }
        conn.Close();
    }

    protected void threeb_Click(object sender, EventArgs e)
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["RegistrationConnectionString"].ConnectionString);
        conn.Open();
        string userc = "select count(userid) from [Table] where userid='" + three3.Text + "'";
        SqlCommand usercCom = new SqlCommand(userc, conn);
        string resuserc = usercCom.ExecuteScalar().ToString();
        if (resuserc != "0")
        {
            string updateuserc = "update [advertisement] set username='" + three3.Text + "' where id=3";
            SqlCommand updatecome = new SqlCommand(updateuserc, conn);
            updatecome.ExecuteScalar();
            Response.Write("<script>alert('Successfully added for advertisement...');</script>");
        }
        else
        {
            Response.Write("<script>alert('Username doesnot exist...');</script>");
        }
        conn.Close();
    }

    protected void fourb_Click(object sender, EventArgs e)
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["RegistrationConnectionString"].ConnectionString);
        conn.Open();
        string userc = "select count(userid) from [Table] where userid='" + four4.Text + "'";
        SqlCommand usercCom = new SqlCommand(userc, conn);
        string resuserc = usercCom.ExecuteScalar().ToString();
        if (resuserc != "0")
        {
            string updateuserc = "update [advertisement] set username='" + four4.Text + "' where id=4";
            SqlCommand updatecome = new SqlCommand(updateuserc, conn);
            updatecome.ExecuteScalar();
            Response.Write("<script>alert('Successfully added for advertisement...');</script>");
        }
        else
        {
            Response.Write("<script>alert('Username doesnot exist...');</script>");
        }
        conn.Close();
    }


    protected void delbutton_Click1(object sender, EventArgs e)
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["RegistrationConnectionString"].ConnectionString);
        conn.Open();
        string delidsearch = "select userid from [Table] where mesename='" + delsearchbox.Text + "'";
        SqlCommand delidsearchcom = new SqlCommand(delidsearch, conn);
        string delidsearchans = delidsearchcom.ExecuteScalar().ToString();
        string delroom = "delete from [rooms] where username='" + delidsearchans + "'";
        string deltable = "delete from [Table] where userid='" + delidsearchans + "'";
        string deltable1 = "delete from [Table1] where username='" + delidsearchans + "'";
        string deladv = "update [advertisement] set username='' where username='" + delidsearchans + "'";
        SqlCommand delroomcom = new SqlCommand(delroom, conn);
        SqlCommand deltablecom = new SqlCommand(deltable, conn);
        SqlCommand deltable1com = new SqlCommand(deltable1, conn);
        SqlCommand deladvcom = new SqlCommand(deladv, conn);
        delroomcom.ExecuteScalar();
        deltablecom.ExecuteScalar();
        deltable1com.ExecuteScalar();
        deladvcom.ExecuteScalar();
        Response.Write("<script>alert('Mess deleted...');</script>");



        conn.Close();
    }
}