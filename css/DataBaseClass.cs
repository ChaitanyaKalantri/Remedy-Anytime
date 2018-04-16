using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Web.Configuration;

/// <summary>
/// Summary description for DataBaseClass
/// </summary>
public class DataBaseClass
{
    public static string connString = WebConfigurationManager.ConnectionStrings["UserConnect"].ConnectionString;

    SqlDataAdapter da;
    SqlConnection con;
    SqlCommand cmd = new SqlCommand();
    DataSet ds = new DataSet();
    DataTable dt = new DataTable();

    public DataBaseClass()
    {
        //
        // TODO: Add constructor logic here
        //
    }

    public void ConnectDataBaseToInsert(string Query)
    {
        con = new SqlConnection(connString);
        cmd.CommandText = Query;
        cmd.Connection = con;
        da = new SqlDataAdapter(cmd);        
        con.Open();
        cmd.ExecuteNonQuery();       
        con.Close();

    }
    public DataSet ConnectDataBaseReturnDS(string Query)
    {
        ds = new DataSet();
        con = new SqlConnection(connString);
        cmd.CommandText = Query;
        cmd.Connection = con;
        da = new SqlDataAdapter(cmd);
        da.Fill(ds);
        con.Open();
        cmd.ExecuteNonQuery();
        con.Close();        
        return ds;
    }
    public DataTable ConnectDataBaseReturnDT(string Query)
    {
        dt = new DataTable();
        con = new SqlConnection(connString);
        cmd.CommandText = Query;
        cmd.Connection = con;
        da = new SqlDataAdapter(cmd);
        da.Fill(dt);
        con.Open();
        cmd.ExecuteNonQuery();
        con.Close();
        return dt;
    }


    public static DataTable GetData(string query)
    {
        DataTable dt = new DataTable();
        SqlConnection conn = new SqlConnection(connString);
        SqlDataAdapter sda = new SqlDataAdapter(query, conn);
        conn.Open();
        sda.Fill(dt);
        conn.Close();
        return dt;
    }
}
