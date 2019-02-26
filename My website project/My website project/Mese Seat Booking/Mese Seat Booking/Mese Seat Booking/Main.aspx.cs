using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
public partial class Mese_Seat_Booking_main : System.Web.UI.Page
{
   
    protected void Page_Load(object sender, EventArgs e)
    {
        HttpCookie httpCookie = Request.Cookies["logincookie"];
        if(httpCookie!=null)
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
        if(!IsPostBack)
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
        if(Session["successfulreg"]!=null)
        {
            if(Session["successfulreg"].ToString()=="yes")
            {
                Session["successfulreg"] = null;
                Response.Write("<script>alert('Successfully sent request to admin, When Admin will approve you will be notified and can access to your account...');</script>");
            }
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

        if (counterres3 != "0")
        {
            string h3s = "select heading from [Table] where userid='" + adv3rdres + "'";
            string abt3 = "select about from [Table] where userid='" + adv3rdres + "'";
            SqlCommand h3scom = new SqlCommand(h3s, conn);
            newsleb3.Text = h3scom.ExecuteScalar().ToString();
            SqlCommand abt3com = new SqlCommand(abt3, conn);
            newsbodyleb3.Text = abt3com.ExecuteScalar().ToString();
        }

        if (counterres4 != "0")
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






    protected void Button_o_Click(object sender, EventArgs e)
    {
        int temp;
        string usertypesadmin = loginchecker.SelectedValue.ToString();
        if (IsPostBack)
        {
            
           
            if (usertypesadmin == "3")
            { 
                SqlConnection connn = new SqlConnection(ConfigurationManager.ConnectionStrings["RegistrationConnectionString"].ConnectionString);
                connn.Open();
                string adminpass = "select password from [admin] where username='admin01'";
                SqlCommand adminpasscom = new SqlCommand(adminpass, connn);
                string adminpassans = adminpasscom.ExecuteScalar().ToString().Replace(" ", "");
                if (TextBox3.Text == adminpassans && TextBox1.Text == "admin01")
                {
                    Response.Redirect("Admin.aspx");
                }
                else
                {
                    Session["chk"] = "yes";
                    Response.Redirect("main.aspx");
                }
                connn.Close();
            }



            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["RegistrationConnectionString"].ConnectionString);
            conn.Open();
            string checkuser = "select count(*) from [Table1] where Username='" + TextBox1.Text + "'";
            SqlCommand com = new SqlCommand(checkuser, conn);
            temp = Convert.ToInt32(com.ExecuteScalar().ToString());
            conn.Close();
            
            if (temp == 1)
            {
                conn.Open();
                string checkpasswordrecovery = "select Password from [Table1] where Username='"+TextBox1.Text+"'";
                SqlCommand passcom = new SqlCommand(checkpasswordrecovery, conn);
                string passwordk = passcom.ExecuteScalar().ToString().Replace(" ","");

                string checkownername = "select Firstname from [Table1] where Username='" + TextBox1.Text + "'";
                SqlCommand fstname = new SqlCommand(checkownername, conn);
                string fstnamek = fstname.ExecuteScalar().ToString();

                string checkusertype = "select Usertype from [Table1] where Username='" + TextBox1.Text + "'";
                SqlCommand usertyp = new SqlCommand(checkusertype, conn);
                string usertypk = usertyp.ExecuteScalar().ToString();

                string checkuserusername = "select Username from [Table1] where Username='" + TextBox1.Text + "'";
                SqlCommand usercomusername = new SqlCommand(checkuserusername, conn);
                string usersusername = usercomusername.ExecuteScalar().ToString();
                conn.Close();

                Session["chk"] = "yes";
                Session["usertypee"] = usertypk;
                string usertypes = loginchecker.SelectedItem.Text;
                if(usertypes== "Owner")
                {
                    Session["type"] = "Owner";
                }
                else if(usertypes == "Student")
                {
                    Session["type"] = "Student";
                }

                


                if (passwordk == TextBox3.Text && Session["usertypee"].ToString().Replace(" ", "") == Session["type"].ToString())
                {
                    if(Session["type"].ToString() != "Student")
                    {
                        Session["ownername"] = fstnamek;
                        Session["usname_o"] = usersusername;
                        Session["loginchk"] = "something";
                        Session["chk"] = null;



                        if (CheckBoxListcookie.SelectedItem != null)
                        {
                            HttpCookie httpCookie = new HttpCookie("logincookie");
                            httpCookie["name"] = TextBox1.Text;
                            httpCookie["password"] = TextBox3.Text;
                            httpCookie.Expires = DateTime.Now.AddMinutes(1);
                            Response.Cookies.Add(httpCookie);
                        }



                        if (Session["type"].ToString() == "Owner")
                        {
                            Response.Redirect("Owner_Login.aspx");
                        }
                    }
                    else if(Session["type"].ToString() == "Student")
                    {
                        Session["studentloginsession"] = usersusername;
                        Response.Redirect("Student.aspx");
                    }
                    
                    
                }
                else
                {

                    Session["chk"] = "yes";
                    Response.Redirect("main.aspx");


                }

            }
            else
            {

                Session["chk"] = "yes";
                Response.Redirect("main.aspx");
            }
           
                
            
        }
        
    }



    protected void ajaxbutton_Click(object sender, EventArgs e)
    {
        if(IsPostBack)
        {
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["RegistrationConnectionString"].ConnectionString);
            conn.Open();
            string usernamefinder = "select userid from [Table] where mesename='"+ ajaxtextbox.Text+ "'";
            string counter = "select count(userid) from [Table] where mesename='" + ajaxtextbox.Text + "'";
            SqlCommand comcounter = new SqlCommand(counter, conn);
            SqlCommand sqlCommand = new SqlCommand(usernamefinder, conn);
            string countres = comcounter.ExecuteScalar().ToString();
            if (countres=="1")
            {
                string getuserid = sqlCommand.ExecuteScalar().ToString().Replace(" ", "");
                Session["useridfromajax"] = getuserid;
                conn.Close();
                Response.Redirect("http://localhost:4953/Mese Seat Booking/Asthayee Nibash.aspx");
            }
            else
            {
                conn.Close();
                Response.Redirect("main.aspx");
            }
                
           
        }
    }

}