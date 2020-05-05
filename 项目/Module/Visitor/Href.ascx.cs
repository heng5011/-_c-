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

public partial class UseControls_LeftContorls_FriendHref : System.Web.UI.UserControl
{
	protected void Page_Load(object sender, EventArgs e)
	{
		SqlData da = new SqlData();
		DataSet ds = da.ExceDS("select top 10 * from tb_Href");
		this.DataList1.DataSource = ds;
		this.DataList1.DataBind();
	}
	protected void DataList1_ItemDataBound(object sender, DataListItemEventArgs e)
	{
	}
}
