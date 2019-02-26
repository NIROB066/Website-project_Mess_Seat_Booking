using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
public partial class Asthayee_Nibash : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        SqlConnection conn1 = new SqlConnection(ConfigurationManager.ConnectionStrings["RegistrationConnectionString"].ConnectionString);
        conn1.Open();
        if(Request.QueryString["name"] != null)
        {
            Session["Asthayee"]= Request.QueryString["name"] as String;
        }
        if (Request.QueryString["name"] != null)
        {
            Session["useridfromajax"] = Request.QueryString["name"] as String;
        }

        Session["Asthayee"] = Session["useridfromajax"];
        string email1 = "select Email from [Table1] where  Username='" + Session["Asthayee"].ToString().Replace(" ", "") + "'";
        SqlCommand emailcom = new SqlCommand(email1, conn1);
        string resemail = emailcom.ExecuteScalar().ToString();
        Label2.Text = resemail;

        string opmesename = "select Firstname from [Table1] where  Username='" + Session["Asthayee"].ToString().Replace(" ", "") + "'";
        SqlCommand opcommesename = new SqlCommand(opmesename, conn1);
        string opstmesename = opcommesename.ExecuteScalar().ToString();
        Label1.Text = opstmesename;

        string opmeseage = "select age from [Table] where  userid='" + Session["Asthayee"].ToString().Replace(" ", "") + "'";
        SqlCommand opcommeseage = new SqlCommand(opmeseage, conn1);
        string opstmeseage = opcommeseage.ExecuteScalar().ToString();
        Label3.Text = opstmeseage;

        string opmeseprofession = "select profession from [Table] where  userid='" + Session["Asthayee"].ToString().Replace(" ", "") + "'";
        SqlCommand opcommeseprofession = new SqlCommand(opmeseprofession, conn1);
        string opstmeseprofession = opcommeseprofession.ExecuteScalar().ToString();
        Label4.Text = opstmeseprofession;

        string opmesenum = "select Phone from [Table1] where  Username='" + Session["Asthayee"].ToString().Replace(" ", "") + "'";
        SqlCommand opcommesenum = new SqlCommand(opmesenum, conn1);
        string opstmesenum = opcommesenum.ExecuteScalar().ToString();
        Label5.Text = opstmesenum;

        string opmeseadd = "select Address from [Table1] where  Username='" + Session["Asthayee"].ToString().Replace(" ", "") + "'";
        SqlCommand opcommeseadd = new SqlCommand(opmeseadd, conn1);
        string opstmeseadd = opcommeseadd.ExecuteScalar().ToString();
        Label6.Text = opstmeseadd;


        conn1.Close();

        SqlConnection sqlConnection = new SqlConnection(ConfigurationManager.ConnectionStrings["RegistrationConnectionString"].ConnectionString);
        sqlConnection.Open();
        string findmessname = "select mesename from [Table] where userid='"+ Session["useridfromajax"].ToString()+ "'";
        SqlCommand sqlCommand = new SqlCommand(findmessname, sqlConnection);
        string getmessname = sqlCommand.ExecuteScalar().ToString();
        messname.Text = getmessname;
        mname.Text = getmessname;

        if(!IsPostBack)
        {
            string dlmessname = "select mesename from [Table] where userid='" + Session["useridfromajax"].ToString() + "'";
            SqlCommand dlmessbnamecom = new SqlCommand(dlmessname, sqlConnection);
            DropDown_Mess_selection.DataSource = dlmessbnamecom.ExecuteReader();
            DropDown_Mess_selection.DataTextField = "mesename";
            DropDown_Mess_selection.DataValueField= "mesename";
            DropDown_Mess_selection.DataBind();
        }


        sqlConnection.Close();


        SqlConnection newcon = new SqlConnection(ConfigurationManager.ConnectionStrings["RegistrationConnectionString"].ConnectionString);
        newcon.Open();
        if(!IsPostBack)
        {
            string dlroom = "select roomnum from [rooms] where username='" + Session["useridfromajax"].ToString() + "' and status='Unbooked'";
            SqlCommand dlroomcom = new SqlCommand(dlroom, newcon);
            DropDown_room_selection.DataSource = dlroomcom.ExecuteReader();
            DropDown_room_selection.DataTextField = "roomnum";
            DropDown_room_selection.DataValueField = "roomnum";
            DropDown_room_selection.DataBind();
        }
        newcon.Close();

        SqlConnection updatecon = new SqlConnection(ConfigurationManager.ConnectionStrings["RegistrationConnectionString"].ConnectionString);
        updatecon.Open();
        string fnum = "select count(distinct(floor)) from [rooms] where username='"+ Session["useridfromajax"].ToString() + "'";
        SqlCommand fcom = new SqlCommand(fnum, updatecon);
        floornum.Text = fcom.ExecuteScalar().ToString();

        string troom = "select count(roomnum) from [rooms] where username='" + Session["useridfromajax"].ToString() + "'";
        SqlCommand trcom = new SqlCommand(troom, updatecon);
        roomnum.Text = trcom.ExecuteScalar().ToString();

        string broom = "select count(roomnum) from [rooms] where username='" + Session["useridfromajax"].ToString() + "' and status='Booked'";
        SqlCommand brcom = new SqlCommand(broom, updatecon);
        booked.Text = brcom.ExecuteScalar().ToString();

        string ubroom = "select count(roomnum) from [rooms] where username='" + Session["useridfromajax"].ToString() + "' and status='Unbooked'";
        SqlCommand ubrcom = new SqlCommand(ubroom, updatecon);
        unbooked.Text = ubrcom.ExecuteScalar().ToString();

        string avgrent = "select avg(roomrent) from [rooms] where username='" + Session["useridfromajax"].ToString() + "'";
        SqlCommand avgcom = new SqlCommand(avgrent, updatecon);
        rentshow.Text = avgcom.ExecuteScalar().ToString();

        string aboutsec = "select about from [Table] where userid='" + Session["useridfromajax"].ToString() + "'";
        SqlCommand aboutcom = new SqlCommand(aboutsec, updatecon);
        ownertalk.Text = aboutcom.ExecuteScalar().ToString();
        updatecon.Close();

        
    }

    protected void Unnamed1_Click(object sender, EventArgs e)
    {
        SqlConnection rentcon = new SqlConnection(ConfigurationManager.ConnectionStrings["RegistrationConnectionString"].ConnectionString);
        rentcon.Open();
        string rentshow = "select roomrent from [rooms] where roomnum='"+ DropDown_room_selection.SelectedValue+ "' and username='"+ Session["useridfromajax"].ToString() + "'";
        SqlCommand rentcom = new SqlCommand(rentshow, rentcon);
        string showrent = rentcom.ExecuteScalar().ToString();
        roomrentshow.Text =showrent + "/-";

        
        rentcon.Close();
    }
}