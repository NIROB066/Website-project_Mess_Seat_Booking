using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class Mese_Seat_Booking_OwnerStudentView : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if(Session["usname_o"] != null)
        {
            if(Session["delsuccess"]!=null)
            {
                Response.Write("<script>alert('Deleted successfully!!!');</script>");
                Session["delsuccess"] = null;
            }
            if(Session["acceptstdreq"]!=null)
            {
                Response.Write("<script>alert('Accepted successfully!!!');</script>");
                Session["acceptstdreq"] = null;
            }
        }
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["RegistrationConnectionString"].ConnectionString);
        conn.Open();
        string masq = "select hotnews from [admin] where username='admin01'";
        SqlCommand masqcom = new SqlCommand(masq, conn);
        string masqans = masqcom.ExecuteScalar().ToString();
        masqueetext.Text = masqans;
        conn.Close();
        if(!IsPostBack)
        {
            if (Session["usname_o"] != null)
            {
                SqlConnection conn1 = new SqlConnection(ConfigurationManager.ConnectionStrings["RegistrationConnectionString"].ConnectionString);
                conn1.Open();
                string sname = "select firstname from [studentreq] where username='"+Request.QueryString["studentrequestedid"].ToString() +"'";
                string addresss= "select address from[studentreq] where username = '"+Request.QueryString["studentrequestedid"].ToString() +"'";
                string pnumber = "select phone from [studentreq] where username='" + Request.QueryString["studentrequestedid"].ToString() + "'"; 
                string emaila= "select email from [studentreq] where username='" + Request.QueryString["studentrequestedid"].ToString() + "'";

                SqlCommand snamecom = new SqlCommand(sname, conn1);
                SqlCommand addressscom = new SqlCommand(addresss, conn1);
                SqlCommand pnumbercom = new SqlCommand(pnumber, conn1);
                SqlCommand emailacom = new SqlCommand(emaila, conn1);

                snamelev.Text = snamecom.ExecuteScalar().ToString();
                saddress.Text = addressscom.ExecuteScalar().ToString();
                sphone.Text = pnumbercom.ExecuteScalar().ToString();
                unamelev.Text = Request.QueryString["studentrequestedid"].ToString();
                uemail.Text = emailacom.ExecuteScalar().ToString();
                conn1.Close();
            }
        }
    }

    protected void Update_Click(object sender, EventArgs e)
    {
        if(IsPostBack)
        {
            if(Session["usname_o"] != null)
            {
                SqlConnection conn1 = new SqlConnection(ConfigurationManager.ConnectionStrings["RegistrationConnectionString"].ConnectionString);
                conn1.Open();
                string sname = "select firstname from [studentreq] where username='" + Request.QueryString["studentrequestedid"].ToString() + "'";
                string addresss = "select address from[studentreq] where username = '" + Request.QueryString["studentrequestedid"].ToString() + "'";
                string pnumber = "select phone from [studentreq] where username='" + Request.QueryString["studentrequestedid"].ToString() + "'";
                string emaila = "select email from [studentreq] where username='" + Request.QueryString["studentrequestedid"].ToString() + "'";
                string passw = "select password from [studentreq] where username='" + Request.QueryString["studentrequestedid"].ToString() + "'";
                string genw= "select gender from [studentreq] where username='" + Request.QueryString["studentrequestedid"].ToString() + "'";


                SqlCommand snamecom = new SqlCommand(sname, conn1);
                SqlCommand addressscom = new SqlCommand(addresss, conn1);
                SqlCommand pnumbercom = new SqlCommand(pnumber, conn1);
                SqlCommand emailacom = new SqlCommand(emaila, conn1);
                SqlCommand passwcom = new SqlCommand(passw, conn1);
                SqlCommand genwcom = new SqlCommand(genw, conn1);

                string snameans = snamecom.ExecuteScalar().ToString();
                string addressscomans = addressscom.ExecuteScalar().ToString();
                string pnumbercomans = pnumbercom.ExecuteScalar().ToString();
                string usernameans = Request.QueryString["studentrequestedid"].ToString();
                string emailacomans = emailacom.ExecuteScalar().ToString();
                string passwcomans = passwcom.ExecuteScalar().ToString();
                string genwcomans = genwcom.ExecuteScalar().ToString();


                string dels = "delete from [studentreq] where username='" + Request.QueryString["studentrequestedid"].ToString() + "'";
                SqlCommand delscom = new SqlCommand(dels, conn1);
                delscom.ExecuteScalar();

                string addtotable1 = "insert into [Table1](Firstname,Username,Address,Phone,Password,Gender,Usertype,Email) values(@fstname,@usname,@Uaddress,@uphone,@upass,@ugen,@utyp,@uemail)";
                SqlCommand addtotable1com = new SqlCommand(addtotable1, conn1);
                addtotable1com.Parameters.AddWithValue("@fstname", snameans);
                addtotable1com.Parameters.AddWithValue("@usname", usernameans);
                addtotable1com.Parameters.AddWithValue("@Uaddress", addressscomans);
                addtotable1com.Parameters.AddWithValue("@uphone", pnumbercomans);
                addtotable1com.Parameters.AddWithValue("@upass", passwcomans);
                addtotable1com.Parameters.AddWithValue("@ugen", genwcomans);
                addtotable1com.Parameters.AddWithValue("@utyp", "Student");
                addtotable1com.Parameters.AddWithValue("@uemail", emailacomans);

                addtotable1com.ExecuteNonQuery();
                Session["acceptstdreq"] = "yes";
                Response.Redirect("Owner_Login.aspx");
                conn1.Close();
            }
        }
    }

    protected void delete_Click(object sender, EventArgs e)
    {
        if(IsPostBack)
        {
            if (Session["usname_o"] != null)
            {
                SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["RegistrationConnectionString"].ConnectionString);
                con.Open();
                string dels = "delete from [studentreq] where username='"+ Request.QueryString["studentrequestedid"].ToString() + "'";
                SqlCommand delscom = new SqlCommand(dels, con);
                delscom.ExecuteScalar();
                Session["delsuccess"] = "yes";
                Response.Redirect("Owner_Login.aspx");
                con.Close();
            }
        }
    }

    protected void userbutton_Click(object sender, EventArgs e)
    {
        Response.Redirect("main.aspx");
    }
}