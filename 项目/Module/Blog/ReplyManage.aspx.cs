using System;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Data.SqlClient;

public partial class Module_Blog_Revert : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
		if (Session["UserName"] == null)
		{
			Response.Redirect("../../Index.aspx");
		}
		SqlConnection mycon = new SqlConnection(ConfigurationManager.AppSettings["conStr"]);
		SqlDataAdapter mydataadapter = new SqlDataAdapter("select * from tb_Blog",mycon);
		DataSet mydataset = new DataSet();
		mydataadapter.Fill(mydataset, "tb_Blog");
		mycon.Close();
    }
}
