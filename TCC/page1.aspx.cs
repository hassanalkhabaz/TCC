using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

namespace TCC
{
    public partial class page1 : System.Web.UI.Page
    {
        DAL.DAL x = new DAL.DAL();

        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {

        }

        protected void btnsignin_Click(object sender, EventArgs e)
        {
            x.open();

            DataTable dt = new DataTable();
            string email = TextBox1.Text;
            int password = int.Parse(TextBox2.Text);
            dt = x.RunQuery("select idDapte from users where email='" + email + "' and password=" + password);
            //GridView1.DataSource = dt;
            //GridView1.DataBind(); 
            x.close();
            //Response.Write("erros");
            if (dt.Rows.Count==0)
            {

                Response.Redirect("page2.aspx");
            }
            else
            {
                if (Convert.ToInt32(dt.Rows[0][0])==Convert.ToInt32(Session["idadmin"]))
                {
                    Response.Redirect("page3.aspx");

                }
                Response.Redirect("page4.aspx");
            }
           

        }
    }
}