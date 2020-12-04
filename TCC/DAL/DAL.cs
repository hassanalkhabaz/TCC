using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.Sql;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

namespace TCC.DAL
{
    public class DAL
    {
        SqlConnection conn;
        string connstring;
        public DAL ()
        {
            connstring = ConfigurationManager.ConnectionStrings["tccDB"].ConnectionString;
            
            conn = new SqlConnection(connstring);
        }
        //method to open the connection
        public void open()
        {
            if (conn.State== ConnectionState.Closed)
            {
                conn.Open();
            }
        }
        //method to close the connection
        public void close()
        {
            if (conn.State==ConnectionState.Open)
            {
                conn.Close();
            }
        }
        //method to run select type query have one parameter it's query
        public DataTable RunQuery(string query)
        {
            SqlCommand comm = new SqlCommand(query, conn);
            SqlDataAdapter adapter = new SqlDataAdapter(comm);
            DataTable dt = new DataTable();
            adapter.Fill(dt);
            return dt;
        }
        //method to run insert,delet,updata type query have one parameter it's query
        public int ExcuChange(string query)
        {
            SqlCommand comm = new SqlCommand(query, conn);
           return comm.ExecuteNonQuery();
        }
    }
}