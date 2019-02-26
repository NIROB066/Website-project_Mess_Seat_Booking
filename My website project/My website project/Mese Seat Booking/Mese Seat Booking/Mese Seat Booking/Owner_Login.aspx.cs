using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class Mese_Seat_Booking_Owner_Login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
        
    {
        if (Session["muimui"] != null)
        {
            Response.Write("<script>alert('Accepted Successfully!!!');</script>");
            Session["muimui"] = null;
        }
        if (Session["muimui2"] != null)
        {
            Response.Write("<script>alert('Deleted Request Successfully!!!');</script>");
            Session["muimui2"] = null;
        }
        if (Session["updateheadandabt"]!=null)
        {
            if(Session["updateheadandabt"].ToString()=="yes")
            {
                Response.Write("<script>alert('Updated successfully!!!');</script>");
                Session["updateheadandabt"] = null;

            }
        }
        if (Session["deletestudentid"] != null)
        {
            if(Session["deletestudentid"].ToString()=="yes")
            {
                Response.Write("<script>alert('Deleted successfully!!!');</script>");
                Session["deletestudentid"] = null;
            }
            else
            {
                Response.Write("<script>alert('Userid doesnot exist!!!');</script>");
                Session["deletestudentid"] = null;
            }
        }
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["RegistrationConnectionString"].ConnectionString);
        conn.Open();
        string reqcou = "select count(susername) from [booking]";
        SqlCommand reqcoucom = new SqlCommand(reqcou, conn);
        bookreq.Text = reqcoucom.ExecuteScalar().ToString();


        string masq = "select hotnews from [admin] where username='admin01'";
        SqlCommand masqcom = new SqlCommand(masq, conn);
        string masqans = masqcom.ExecuteScalar().ToString();
        masqueetext.Text = masqans;
        if(Session["usname_o"]!=null)
        {
            userlabel.Text = Session["usname_o"].ToString();
            string totalreq = "select count(username) from [studentreq]";
            SqlCommand totalreqcom = new SqlCommand(totalreq, conn);
            reql.Text = totalreqcom.ExecuteScalar().ToString();
            string messsname = "select mesename from [Table] where userid='" + Session["usname_o"].ToString() + "'";
            SqlCommand messsnamecom = new SqlCommand(messsname, conn);
            bodylev1.Text = messsnamecom.ExecuteScalar().ToString();
            bodylev2.Text = Session["ownername"].ToString();
            string messsnum = "select count(Username) from [Table1] where Usertype='student'";
            SqlCommand messsnumecom = new SqlCommand(messsnum, conn);
            bodylev3.Text = messsnumecom.ExecuteScalar().ToString();
            string bookedroomss = "select roomnum from [rooms] where username='" + Session["usname_o"].ToString() + "' and status='Booked'";
            SqlCommand bookedroomsscom = new SqlCommand(bookedroomss, conn);
            bodylev4.DataSource = bookedroomsscom.ExecuteReader();
            bodylev4.DataTextField = "roomnum";
            bodylev4.DataValueField = "roomnum";
            bodylev4.DataBind();
           

        }
        conn.Close();
        SqlConnection connew = new SqlConnection(ConfigurationManager.ConnectionStrings["RegistrationConnectionString"].ConnectionString);
        connew.Open();
        if (Session["usname_o"] != null)
        {
            string unbookedroomss = "select roomnum from [rooms] where username='" + Session["usname_o"].ToString() + "' and status='Unbooked'";
            SqlCommand unbookedroomsscom = new SqlCommand(unbookedroomss, connew);
            bodylev5.DataSource = unbookedroomsscom.ExecuteReader();
            bodylev5.DataTextField = "roomnum";
            bodylev5.DataValueField = "roomnum";
            bodylev5.DataBind();
        }
        connew.Close();
        SqlConnection connew1 = new SqlConnection(ConfigurationManager.ConnectionStrings["RegistrationConnectionString"].ConnectionString);
        connew1.Open();
        if (Session["usname_o"] != null && !IsPostBack)
        {
            string abtstr = "select about from [Table] where userid='" + Session["usname_o"].ToString() + "'";
            string headstr = "select heading from [Table] where userid='" + Session["usname_o"].ToString() + "'";
            SqlCommand abtstrcom = new SqlCommand(abtstr, connew1);
            SqlCommand headstrcom = new SqlCommand(headstr, connew1);
            TextBoxhead.Text = headstrcom.ExecuteScalar().ToString();
            TextBoxdetails.Text = abtstrcom.ExecuteScalar().ToString();


        }
        connew1.Close();

    }

    protected void addroomsbutton_Click(object sender, EventArgs e)
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["RegistrationConnectionString"].ConnectionString);
        conn.Open();
        if(Session["usname_o"] != null)
        {
            string roomadd = "insert into [rooms] (username,roomnum,floor,status,roomrent,about) values(@uname,@uroom,@ufloor,@ustatus,@uroomrent,@aboutt)";
            SqlCommand roomaddcom = new SqlCommand(roomadd, conn);
            roomaddcom.Parameters.AddWithValue("@uname", Session["usname_o"].ToString());
            roomaddcom.Parameters.AddWithValue("@uroom", roomnumtext.Text);
            roomaddcom.Parameters.AddWithValue("@ufloor", dropdownroomselect.SelectedItem.Text);
            roomaddcom.Parameters.AddWithValue("@ustatus", "Unbooked");
            roomaddcom.Parameters.AddWithValue("@uroomrent", roomrentbox.Text);
            roomaddcom.Parameters.AddWithValue("@aboutt", "chowa");
            roomaddcom.ExecuteNonQuery();
            Response.Write("<script>alert('room added successfully!!!');</script>");

        }
        conn.Close();
    }

    protected void delbut_Click(object sender, EventArgs e)
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["RegistrationConnectionString"].ConnectionString);
        conn.Open();
        if (Session["usname_o"] != null)
        {
            string checkstd = "select count(username) from [Table1] where username='" + TextBoxstdid.Text + "'";
            SqlCommand checkstdcom = new SqlCommand(checkstd, conn);
            string checkres = checkstdcom.ExecuteScalar().ToString();
            if (checkres != "0")
            {
                string delstring = "delete from [Table1] where username='" + TextBoxstdid.Text + "'";
                SqlCommand delstringcom = new SqlCommand(delstring, conn);
                delstringcom.ExecuteScalar();
                Session["deletestudentid"] = "yes";
                conn.Close();
                Response.Redirect("Owner_Login.aspx");
            }
            else
            {
                Session["deletestudentid"] = "no";
                conn.Close();
                Response.Redirect("Owner_Login.aspx");
            }
        }
        Response.Redirect("Owner_Login.aspx");
        conn.Close();
    }

    protected void Update_Click(object sender, EventArgs e)
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["RegistrationConnectionString"].ConnectionString);
        conn.Open();
        if(IsPostBack)
        {
            if (Session["usname_o"] != null)
            {
                string uphead = "update [Table] set heading='" + TextBoxhead.Text + "' where userid='" + Session["usname_o"].ToString().Replace(" ", "") + "'";
                string upabt = "update [Table] set about='" + TextBoxdetails.Text + "' where userid='" + Session["usname_o"].ToString().Replace(" ","")+ "'";
                SqlCommand upheadcom = new SqlCommand(uphead, conn);
                SqlCommand upabtcom = new SqlCommand(upabt, conn);
                upheadcom.ExecuteScalar();
                upabtcom.ExecuteScalar();
                Session["updateheadandabt"] = "yes";
                Response.Redirect("Owner_Login.aspx");


            }
        }
        
        conn.Close();
    }

    protected void userbutton_Click(object sender, EventArgs e)
    {
        Response.Redirect("main.aspx");
    }
}