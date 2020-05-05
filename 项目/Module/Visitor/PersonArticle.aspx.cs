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

public partial class Module_Blog_PersonArticle : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
		string blog = Page.Request["BlogID"];
		SqlData da = new SqlData();
		DataSet ds = da.ExceDS("select * from tb_Article where BlogID='" + blog + "'");
		this.DataList1.DataSource = ds;
		this.DataList1.DataBind();
	}
}
