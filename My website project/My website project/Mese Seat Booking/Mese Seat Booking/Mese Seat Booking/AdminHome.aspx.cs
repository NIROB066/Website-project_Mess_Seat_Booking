using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class Mese_Seat_Booking_AdminHome : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        HttpCookie httpCookie = Request.Cookies["logincookie"];
        if (httpCookie != null)
        {

            TextBox1.Text = httpCookie["name"];
            TextBox3.Text = httpCookie["password"];


        }
        if (Session["chk"] != null)
        {
            Response.Write("<script>alert('Login UnSuccessful!!!');</script>");
            Session["chk"] = null;
        }
        else
        {
            LabelTyp.Text = "";
        }
        if (!IsPostBack)
        {
            SqlConnection conn1 = new SqlConnection(ConfigurationManager.ConnectionStrings["RegistrationConnectionString"].ConnectionString);
            conn1.Open();
            string abt = "select [about] from [admin] where [username]='admin01'";
            string hotty = "select [hotnews] from [admin] where [username]='admin01'";
            SqlCommand com = new SqlCommand(abt, conn1);
            SqlCommand com1 = new SqlCommand(hotty, conn1);
            masqueetext.Text = com1.ExecuteScalar().ToString();
            abou_lebel.Text = com.ExecuteScalar().ToString();
            conn1.Close();

        }
        if (Session["successfulreg"] != null)
        {
            if (Session["successfulreg"].ToString() == "yes")
            {
                Session["successfulreg"] = null;
                Response.Write("<script>alert('Successfully sent request to admin, When Admin will approve you will be notified and can access to your account...');</script>");
            }
        }
        if (!IsPostBack)
        {
            SqlConnection connection = new SqlConnection(ConfigurationManager.ConnectionStrings["RegistrationConnectionString"].ConnectionString);
            connection.Open();
            string username = "select [username] from [admin]";
            SqlCommand com2 = new SqlCommand(username, connection);
            userlabel.Text = com2.ExecuteScalar().ToString();
            connection.Close();
        }

        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["RegistrationConnectionString"].ConnectionString);
        conn.Open();
        string adv1st = "select username from [advertisement] where id=1";
        string adv2nd = "select username from [advertisement] where id=2";
        string adv3rd = "select username from [advertisement] where id=3";
        string adv4th = "select username from [advertisement] where id=4";
        SqlCommand adv1stcom = new SqlCommand(adv1st, conn);
        SqlCommand adv2ndcom = new SqlCommand(adv2nd, conn);
        SqlCommand adv3rdcom = new SqlCommand(adv3rd, conn);
        SqlCommand adv4thcom = new SqlCommand(adv4th, conn);
        string adv1stres = adv1stcom.ExecuteScalar().ToString();
        string adv2ndres = adv2ndcom.ExecuteScalar().ToString();
        string adv3rdres = adv3rdcom.ExecuteScalar().ToString();
        string adv4thres = adv4thcom.ExecuteScalar().ToString();

        string counter1 = "select count(userid) from [Table] where userid='" + adv1stres + "'";
        string counter2 = "select count(userid) from [Table] where userid='" + adv2ndres + "'";
        string counter3 = "select count(userid) from [Table] where userid='" + adv3rdres + "'";
        string counter4 = "select count(userid) from [Table] where userid='" + adv4thres + "'";
        SqlCommand countercom1 = new SqlCommand(counter1, conn);
        SqlCommand countercom2 = new SqlCommand(counter2, conn);
        SqlCommand countercom3 = new SqlCommand(counter3, conn);
        SqlCommand countercom4 = new SqlCommand(counter4, conn);
        string counterres1 = countercom1.ExecuteScalar().ToString();
        string counterres2 = countercom2.ExecuteScalar().ToString();
        string counterres3 = countercom3.ExecuteScalar().ToString();
        string counterres4 = countercom4.ExecuteScalar().ToString();
        if (counterres1 != "0")
        {
            string h1s = "select heading from [Table] where userid='" + adv1stres + "'";
            string abt1 = "select about from [Table] where userid='" + adv1stres + "'";
            SqlCommand h1scom = new SqlCommand(h1s, conn);
            newsleb1.Text = h1scom.ExecuteScalar().ToString();
            SqlCommand abt1com = new SqlCommand(abt1, conn);
            newsbodyleb1.Text = abt1com.ExecuteScalar().ToString();
        }
        if (counterres2 != "0")
        {
            string h2s = "select heading from [Table] where userid='" + adv2ndres + "'";
            string abt2 = "select about from [Table] where userid='" + adv2ndres + "'";
            SqlCommand h2scom = new SqlCommand(h2s, conn);
            newsleb2.Text = h2scom.ExecuteScalar().ToString();
            SqlCommand abt2com = new SqlCommand(abt2, conn);
            newsbodyleb2.Text = abt2com.ExecuteScalar().ToString();
        }

        if(counterres3 != "0")
        {
            string h3s = "select heading from [Table] where userid='" + adv3rdres + "'";
            string abt3 = "select about from [Table] where userid='" + adv3rdres + "'";
            SqlCommand h3scom = new SqlCommand(h3s, conn);
            newsleb3.Text = h3scom.ExecuteScalar().ToString();
            SqlCommand abt3com = new SqlCommand(abt3, conn);
            newsbodyleb3.Text = abt3com.ExecuteScalar().ToString();
        }

        if(counterres4 != "0")
        {
            string h4s = "select heading from [Table] where userid='" + adv4thres + "'";
            string abt4 = "select about from [Table] where userid='" + adv4thres + "'";
            SqlCommand h4scom = new SqlCommand(h4s, conn);
            newsleb4.Text = h4scom.ExecuteScalar().ToString();
            SqlCommand abt4com = new SqlCommand(abt4, conn);
            newsbodyleb4.Text = abt4com.ExecuteScalar().ToString();
        }


        conn.Close();
    }



    protected void userbutton_Click(object sender, EventArgs e)
    {
        Response.Redirect("main.aspx");
    }
}


