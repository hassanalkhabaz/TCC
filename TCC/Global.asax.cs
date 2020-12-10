using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.SessionState;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

namespace TCC
{
    public class Global : System.Web.HttpApplication
    {

        protected void Application_Start(object sender, EventArgs e)
        {
            DAL.DAL dal = new DAL.DAL();
            dal.open();
            DataTable dt = new DataTable();
            dt = dal.RunQuery("select * from depts");
            if (dt.Rows.Count==0)
            {
                dal.ExcuChange("insert into depts VALUES('Admin')");
                dal.ExcuChange("insert into depts VALUES('Softwaer')");
                dal.ExcuChange("insert into depts VALUES('Netowork')");
                dal.ExcuChange("insert into depts VALUES('Computer')");
            }
            dt = dal.RunQuery("select * from users");

            if (dt.Rows.Count==0)
            {
                dt = dal.RunQuery("select id from Depts where name='admin'");
                int value = Convert.ToInt32(dt.Rows[0][0]);
                dal.ExcuChange("Insert into Users Values('hassan','khabaz','mohanad','2010/2/2','0968845632','hassan@gmail.com','123456789',"+value+") ");
            }
          
            dal.close();
        }

        protected void Session_Start(object sender, EventArgs e)
        {
            DAL.DAL dal = new DAL.DAL();
            DataTable dt = new DataTable();
            dal.open();
            dt = dal.RunQuery("select id from Depts where name='admin'");
            Session["idadmin"] = dt.Rows[0][0].ToString();
            dt = dal.RunQuery("select id from Depts where name='Softwaer'");
            Session["idsoftwaer"] = dt.Rows[0][0].ToString();
            dt = dal.RunQuery("select id from Depts where name='Netowork'");
            Session["idnetwork"] = dt.Rows[0][0].ToString();
            dt = dal.RunQuery("select id from Depts where name='Computer'");
            Session["idcomputer"] = dt.Rows[0][0].ToString();
            dal.close();
        }

        protected void Application_BeginRequest(object sender, EventArgs e)
        {

        }

        protected void Application_AuthenticateRequest(object sender, EventArgs e)
        {

        }

        protected void Application_Error(object sender, EventArgs e)
        {

        }

        protected void Session_End(object sender, EventArgs e)
        {

        }

        protected void Application_End(object sender, EventArgs e)
        {

        }
    }
}