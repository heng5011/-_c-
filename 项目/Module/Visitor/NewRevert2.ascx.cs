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

public partial class UseControls_LeftContorls_NewRevert2 : System.Web.UI.UserControl
{
	SqlConnection MyConn;
	int PageSize, RecordCount, PageCount, CurrentPage;

	protected void Page_Load(object sender, EventArgs e)
	{
		//设定PageSize 
		PageSize = 5;

		//连接语句 
		MyConn = new SqlConnection(ConfigurationManager.AppSettings["conStr"]);
		MyConn.Open();

		//第一次请求执行 
		if (!Page.IsPostBack)
		{
			ListBind();
			CurrentPage = 0;
			ViewState["PageIndex"] = 0;

			//计算总共有多少记录 
			RecordCount = CalculateRecord();

			//计算总共有多少页 
			PageCount = RecordCount / PageSize;
			ViewState["PageCount"] = PageCount;
		}
	}

	//计算总共有多少条记录 
	public int CalculateRecord()
	{
		int intCount;
		string strCount = "select count(*) as co from tb_Revert";
		SqlCommand MyComm = new SqlCommand(strCount, MyConn);
		SqlDataReader dr = MyComm.ExecuteReader();
		if (dr.Read())
		{
			intCount = Int32.Parse(dr["co"].ToString());
		}
		else
		{
			intCount = 0;
		}
		dr.Close();
		return intCount;
	}

	ICollection CreateSource()
	{

		int StartIndex;

		//设定导入的起终地址 
		StartIndex = CurrentPage * PageSize;
		string strSel = "select * from tb_Revert";
		DataSet ds = new DataSet();

		SqlDataAdapter MyAdapter = new SqlDataAdapter(strSel, MyConn);
		MyAdapter.Fill(ds, StartIndex, PageSize, "tb_Revert");

		return ds.Tables["tb_Revert"].DefaultView;
	}
	public void ListBind()
	{
		this.DataList1.DataSource = CreateSource();
		this.DataList1.DataBind();
	}
	protected void DataList1_ItemDataBound(object sender, DataListItemEventArgs e)
	{
		((HyperLink)e.Item.Controls[0].FindControl("HyperLink1")).Text = ((HyperLink)e.Item.Controls[0].FindControl("HyperLink1")).Text.Substring(0,4);
	}
}
