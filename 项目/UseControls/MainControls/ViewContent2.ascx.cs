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

public partial class UseControls_MainControls_ViewContent2 : System.Web.UI.UserControl
{
	SqlConnection MyConn;  //申明一个数据库连接对象
						   //分别定义DataList页面中显示的信息条数，数据库中的信息条数，总共页数，当前页数
	int G_int_PageSize, G_int_RecordCount, G_int_PageCount, G_int_CurrentPage;

	protected void Page_Load(object sender, EventArgs e)
	{
		//设定G_int_PageSize 
		G_int_PageSize = 1;

		//连接语句 
		MyConn = new SqlConnection(ConfigurationManager.AppSettings["conStr"]);
		MyConn.Open();

		//第一次请求执行 
		if (!Page.IsPostBack)
		{
			
			ListBind();
			G_int_CurrentPage = 0;
			ViewState["PageIndex"] = 0;

			//计算总共有多少记录 
			G_int_RecordCount = CalculateRecord();
			this.lblRecCount.Text = G_int_RecordCount.ToString();

			//计算总共有多少页 
			if (G_int_RecordCount % G_int_PageSize != 0)
			{
				G_int_PageCount = G_int_RecordCount / G_int_PageSize + 1;
			}
			else
			{
				G_int_PageCount = G_int_RecordCount / G_int_PageSize;
			}
			ViewState["G_int_PageCount"] = G_int_PageCount;
		}
	}

	//计算总共有多少条记录 
	public int CalculateRecord()
	{
		int intCount;
		string strCount = "select count(*) as co from tb_Article";
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
		StartIndex = G_int_CurrentPage * G_int_PageSize;
		string strSel = "select * from tb_Article";
		DataSet ds = new DataSet();

		SqlDataAdapter MyAdapter = new SqlDataAdapter(strSel, MyConn);
		MyAdapter.Fill(ds, StartIndex, G_int_PageSize, "tb_Article");

		return ds.Tables["tb_Article"].DefaultView;
	}

	//将数据绑定到控件中
	public void ListBind()
	{
		this.DataList1.DataSource = CreateSource();
		this.DataList1.DataBind();

		this.lnkbtnPageUp.Enabled = true;
		this.lnkbtnPageDown.Enabled = true;
		if (G_int_CurrentPage == (G_int_PageCount - 1))
			this.lnkbtnPageDown.Enabled = false;
		if (G_int_CurrentPage == 0)
			this.lnkbtnPageUp.Enabled = false;
	}

	public void Page_OnClick(Object sender, CommandEventArgs e)
	{
		G_int_CurrentPage = (int)ViewState["PageIndex"];
		G_int_PageCount = (int)ViewState["G_int_PageCount"];

		string cmd = e.CommandName;
		//判断cmd，以判定翻页方向 
		switch (cmd)
		{
			case "next":
				if (G_int_CurrentPage < (G_int_PageCount - 1)) G_int_CurrentPage++;
				break;
			case "prev":
				if (G_int_CurrentPage > 0) G_int_CurrentPage--;
				break;
			case "first":
				G_int_CurrentPage = 0;
				break;
			case "last":
				G_int_CurrentPage = G_int_PageCount - 1;
				break;

		}

		ViewState["PageIndex"] = G_int_CurrentPage;
		ListBind();

	}
	protected void DataList1_ItemDataBound(object sender, DataListItemEventArgs e)
	{
		if (((Label)e.Item.Controls[0].FindControl("labContext")).Text.Length > 500)
		{
			((Label)e.Item.Controls[0].FindControl("labContext")).Text = ((Label)e.Item.Controls[0].FindControl("labContext")).Text.Substring(0, 500) + "...";
		}
	}

	protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
	{
		if (e.CommandName == "i")
		{

			/*	string str;
				string str2 = Page.Request["ArticleID"].ToString();
				SqlConnection mycon = new SqlConnection(ConfigurationManager.AppSettings["conStr"]);
				SqlCommand Com1 = new SqlCommand("select * from tb_Article where ArticleID='" + str2 + "'", mycon);

				SqlDataAdapter myada = new SqlDataAdapter();
				myada.SelectCommand = Com1;
				DataSet ds = new DataSet();
				myada.Fill(ds, "tb_Article");
				DataRowView rowview = ds.Tables["tb_Article"].DefaultView[0];
	*/

			string ConStr1 = "server=DESKTOP-0BABS1G;user id=sa; pwd=123;database=db_Blog";
			SqlConnection con1 = new SqlConnection(ConStr1);
			String s = e.CommandArgument.ToString();
			string S = "select * from tb_Article where ArticleID='" + s + "'";
			//string S = "select * from Paper1 where name='" + s + "'";
			SqlDataAdapter ada = new SqlDataAdapter(S, con1);
			con1.Open();
			 DataSet editor = new DataSet();
			ada.Fill(editor);
			int hot = Convert.ToInt32(editor.Tables[0].Rows[0][6]) + 1;
			//int hot1 = Convert.ToInt32(editor.Tables[0].Rows[0])
			string mod = "update tb_Article set num='" + hot + "' where ArticleID ='" + s + "'";
			SqlCommand sc = new SqlCommand(mod, con1);
			sc.ExecuteNonQuery();
			con1.Close();
			con1.Dispose();
			Response.Redirect("../Module/Visitor/Index.aspx.ascx");
			/*SqlConnection mycon = new SqlConnection(ConfigurationManager.AppSettings["conStr"]);
			string sID = DataList1.DataKeys[e.Item.ItemIndex].ToString();//获取id
			string sSql = "delete from PingLun where id=" + sID;
			//SqlCommand sc = new SqlCommand(ModuleHandle )
			mycon.ExecuteNonQuery(sSql);
			DataList1.DataBind();*/
		}
	}
}