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

public partial class UseControls_MainControls_Reply3 : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {
		string str = Request["ArticleID"].ToString();
        Session["ArtID"] = str;
		SqlConnection mycon = new SqlConnection(ConfigurationManager.AppSettings["conStr"]);
		mycon.Open();
		SqlDataAdapter myada = new SqlDataAdapter("select * from tb_Revert where ArticleID='" + str + "'", mycon);
		DataSet ds = new DataSet();
		myada.Fill(ds);
		this.DataList1.DataSource = ds;
		this.DataList1.DataKeyField = "RevertID";
		this.DataList1.DataBind();
		mycon.Close();
    }
}
