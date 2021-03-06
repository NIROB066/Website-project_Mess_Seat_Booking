﻿<%@ WebHandler Language="C#" Class="studentid" %>

using System;
using System.Web;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Web.Script.Serialization;

public class studentid : IHttpHandler {
    
    public void ProcessRequest (HttpContext context) {
        string term = context.Request["term"] ?? "";
            List<string> listStudentNames = new List<string>();

            string cs = ConfigurationManager.ConnectionStrings["RegistrationConnectionString"].ConnectionString;
            using(SqlConnection con = new SqlConnection(cs))
            {
                SqlCommand cmd = new SqlCommand("ffff", con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.Add(new SqlParameter()
                {
                    ParameterName = "@term",
                    Value = term
                });
                con.Open();
                SqlDataReader rdr = cmd.ExecuteReader();
                while(rdr.Read())
                {
                    listStudentNames.Add(rdr["Username"].ToString());
                }
            }

            JavaScriptSerializer js = new JavaScriptSerializer();
            context.Response.Write(js.Serialize(listStudentNames));
    }
 
    public bool IsReusable {
        get {
            return false;
        }
    }

}