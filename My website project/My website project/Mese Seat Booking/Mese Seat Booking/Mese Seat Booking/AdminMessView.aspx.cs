using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
public partial class Mese_Seat_Booking_AdminMessView : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["RegistrationConnectionString"].ConnectionString);
            conn.Open();
            string hotty = "select [hotnews] from [admin] where [username]='admin01'";
            string username = "select [username] from [admin]";
            string countreq = "select count(username) from [request]";
            string messfinder = "select [messname] from [request] where [username]='"+ Request.QueryString["name4"].ToString().Replace(" ","")+ "'";
            SqlCommand com2 = new SqlCommand(username, conn);
            SqlCommand com1 = new SqlCommand(hotty, conn);
            SqlCommand comcount = new SqlCommand(countreq, conn);
            SqlCommand commessfinder = new SqlCommand(messfinder, conn);
            masqueetext.Text = com1.ExecuteScalar().ToString();
            userlabel.Text = com2.ExecuteScalar().ToString();
            h1lev.Text = commessfinder.ExecuteScalar().ToString().ToUpper();
            t2.Text= commessfinder.ExecuteScalar().ToString().ToUpper();
            string messowner = "select [firstname] from [request] where [username]='" + Request.QueryString["name4"].ToString().Replace(" ", "") + "'";
            string messloc = "select [messlocation] from [request] where [username]='" + Request.QueryString["name4"].ToString().Replace(" ", "") + "'";
            string ownerage = "select [age] from [request] where [username]='" + Request.QueryString["name4"].ToString().Replace(" ", "") + "'";
            string ownerprofession = "select [profession] from [request] where [username]='" + Request.QueryString["name4"].ToString().Replace(" ", "") + "'";
            string OwnerContactNumber = "select [phone] from [request] where [username]='" + Request.QueryString["name4"].ToString().Replace(" ", "") + "'";
            string OwnerAddress = "select [address] from [request] where [username]='" + Request.QueryString["name4"].ToString().Replace(" ", "") + "'";
            string OwnerEmail = "select [email] from [request] where [username]='" + Request.QueryString["name4"].ToString().Replace(" ", "") + "'";
            SqlCommand commessowner = new SqlCommand(messowner, conn);
            SqlCommand commessloc = new SqlCommand(messloc, conn);
            SqlCommand comownerage = new SqlCommand(ownerage, conn);
            SqlCommand comownerprofession = new SqlCommand(ownerprofession, conn);
            SqlCommand comOwnerContactNumber = new SqlCommand(OwnerContactNumber, conn);
            SqlCommand comOwnerAddress = new SqlCommand(OwnerAddress, conn);
            SqlCommand comOwnerEmail = new SqlCommand(OwnerEmail, conn);
            o1.Text= commessowner.ExecuteScalar().ToString();
            t3.Text= commessloc.ExecuteScalar().ToString();
            t4.Text= comownerage.ExecuteScalar().ToString();
            t5.Text= comownerprofession.ExecuteScalar().ToString();
            t6.Text= comOwnerContactNumber.ExecuteScalar().ToString();
            t7.Text= comOwnerAddress.ExecuteScalar().ToString();
            t8.Text= comOwnerEmail.ExecuteScalar().ToString();

            conn.Close();
        }
    }

    protected void userbutton_Click(object sender, EventArgs e)
    {
        Response.Redirect("main.aspx");
    }

    protected void Label1_Click(object sender, EventArgs e)
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["RegistrationConnectionString"].ConnectionString);
        conn.Open();
        string firstnamereq= "select firstname from [request] where username='" + Request.QueryString["name4"].ToString() + "'";
        string addressreq = "select address from [request] where username='" + Request.QueryString["name4"].ToString() + "'";
        string phonereq = "select phone from [request] where username='" + Request.QueryString["name4"].ToString() + "'";
        string passwordreq = "select password from [request] where username='" + Request.QueryString["name4"].ToString() + "'";
        string genderreq = "select gender from [request] where username='" + Request.QueryString["name4"].ToString() + "'";
        string usertypereq = "select usertype from [request] where username='" + Request.QueryString["name4"].ToString() + "'";
        string emailreq = "select email from [request] where username='" + Request.QueryString["name4"].ToString() + "'";
        string messnamereq = "select messname from [request] where username='" + Request.QueryString["name4"].ToString() + "'";
        string messlocationreq = "select messlocation from [request] where username='" + Request.QueryString["name4"].ToString() + "'";
        string agereq = "select age from [request] where username='" + Request.QueryString["name4"].ToString() + "'";
        string professionreq = "select profession from [request] where username='" + Request.QueryString["name4"].ToString() + "'";
        string aboutreq = "select about from [request] where username='" + Request.QueryString["name4"].ToString() + "'";
        string headingreq = "select heading from [request] where username='" + Request.QueryString["name4"].ToString() + "'";
        SqlCommand firstnamereqcom = new SqlCommand(firstnamereq, conn);
        SqlCommand addressreqcom = new SqlCommand(addressreq, conn);
        SqlCommand phonereqcom = new SqlCommand(phonereq, conn);
        SqlCommand passwordreqcom = new SqlCommand(passwordreq, conn);
        SqlCommand genderreqcom = new SqlCommand(genderreq, conn);
        SqlCommand usertypereqcom = new SqlCommand(usertypereq, conn);
        SqlCommand emailreqcom = new SqlCommand(emailreq, conn);
        SqlCommand messnamereqcom = new SqlCommand(messnamereq, conn);
        SqlCommand messlocationreqcom = new SqlCommand(messlocationreq, conn);
        SqlCommand agereqcom = new SqlCommand(agereq, conn);
        SqlCommand professionreqcom = new SqlCommand(professionreq, conn);
        SqlCommand aboutreqcom = new SqlCommand(aboutreq, conn);
        SqlCommand headingreqcom = new SqlCommand(headingreq, conn);
        string firstnamereqans = firstnamereqcom.ExecuteScalar().ToString();
        string addressreqans = addressreqcom.ExecuteScalar().ToString();
        string phonereqans = phonereqcom.ExecuteScalar().ToString();
        string passwordreqans = passwordreqcom.ExecuteScalar().ToString();
        string genderreqans = genderreqcom.ExecuteScalar().ToString();
        string usertypereqans = usertypereqcom.ExecuteScalar().ToString();
        string emailreqans = emailreqcom.ExecuteScalar().ToString();
        string messnamereqans = messnamereqcom.ExecuteScalar().ToString();
        string messlocationreqans = messlocationreqcom.ExecuteScalar().ToString();
        string agereqans = agereqcom.ExecuteScalar().ToString();
        string professionreqans = professionreqcom.ExecuteScalar().ToString();
        string aboutreqans = aboutreqcom.ExecuteScalar().ToString();
        string headingreqans = headingreqcom.ExecuteScalar().ToString();
        string insertq = "insert into [Table1](Firstname,Username,Address,Phone,Password,Gender,Usertype,Email) values(@fname,@uname,@uaddress,@uphone,@upass,@ugen,@uusertyp,@uemail)";
        SqlCommand insertqcom = new SqlCommand(insertq, conn);
        insertqcom.Parameters.AddWithValue("@fname", firstnamereqans);
        insertqcom.Parameters.AddWithValue("@uname", Request.QueryString["name4"].ToString());
        insertqcom.Parameters.AddWithValue("@uaddress", addressreqans);
        insertqcom.Parameters.AddWithValue("@uphone", phonereqans);
        insertqcom.Parameters.AddWithValue("@upass", passwordreqans);
        insertqcom.Parameters.AddWithValue("@ugen", genderreqans);
        insertqcom.Parameters.AddWithValue("@uusertyp", usertypereqans);
        insertqcom.Parameters.AddWithValue("@uemail", emailreqans);
        insertqcom.ExecuteNonQuery();


        string insert2q = "insert into [Table](userid,mesename,meselocation,age,profession,about,heading) values(@uid,@umname,@umloc,@uage,@up,@uabt,@uhead)";
        SqlCommand insert2qcom = new SqlCommand(insert2q,conn);
        insert2qcom.Parameters.AddWithValue("@uid", Request.QueryString["name4"].ToString());
        insert2qcom.Parameters.AddWithValue("@umname", messnamereqans);
        insert2qcom.Parameters.AddWithValue("@umloc", messlocationreqans);
        insert2qcom.Parameters.AddWithValue("@uage", agereqans);
        insert2qcom.Parameters.AddWithValue("@up", professionreqans);
        insert2qcom.Parameters.AddWithValue("@uabt", aboutreqans);
        insert2qcom.Parameters.AddWithValue("@uhead", headingreqans);
        insert2qcom.ExecuteNonQuery();

        string delid2 = "delete from [request] where username='" + Request.QueryString["name4"].ToString() + "'";
        SqlCommand delcom = new SqlCommand(delid2, conn);
        delcom.ExecuteScalar();




        conn.Close();
        Session["accepted"] = "yes";
        Response.Redirect("admin.aspx");
    }

    protected void Label2_Click(object sender, EventArgs e)
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["RegistrationConnectionString"].ConnectionString);
        conn.Open();
        string delid = "delete from [request] where username='" + Request.QueryString["name4"].ToString() + "'";
        SqlCommand delcom = new SqlCommand(delid, conn);
        delcom.ExecuteScalar();
        Session["reqdeleted"] = "yes";
        Response.Redirect("Admin.aspx");
        conn.Close();
    }
}