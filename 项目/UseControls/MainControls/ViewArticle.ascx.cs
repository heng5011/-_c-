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

public partial class UseControls_MainControls_ViewArticle : System.Web.UI.UserControl
{
	SqlConnection MyConn;
	int PageSize, RecordCount, PageCount, CurrentPage;
    string ID;

	protected void Page_Load(object sender, EventArgs e)
	{
		//设定PageSize 
		PageSize = 1;

		//连接语句 
		MyConn = new SqlConnection(ConfigurationManager.AppSettings["conStr"]);
		MyConn.Open();

        DataSet mydataset = new DataSet();
        SqlDataAdapter mydataadapter = new SqlDataAdapter("select * from tb_Blog where UserName='" + Session["UserName"] + "'", MyConn);
        mydataadapter.Fill(mydataset, "tb_Blog");
        DataRowView rowview = mydataset.Tables["tb_Blog"].DefaultView[0];
        ID = rowview["BlogID"].ToString();

		//第一次请求执行 
		if (!Page.IsPostBack)
		{
			ListBind();
			CurrentPage = 0;
			ViewState["PageIndex"] = 0;

			//计算总共有多少记录 
			RecordCount = CalculateRecord();
			this.lblRecCount.Text = RecordCount.ToString();

			//计算总共有多少页 
            if (RecordCount % PageSize != 0)
            {
                PageCount = RecordCount / PageSize + 1;
            }
            else
            {
                PageCount = RecordCount / PageSize;
            }
			ViewState["PageCount"] = PageCount;
		}
	}

	//计算总共有多少条记录 
	public int CalculateRecord()
	{
		int intCount;

		string strCount = "select count(*) as co from tb_Article where BlogID='"+ID+"'";
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
		string strSel = "select * from tb_Article where BlogID='"+ID+"'";
		DataSet ds = new DataSet();

		SqlDataAdapter MyAdapter = new SqlDataAdapter(strSel, MyConn);
		MyAdapter.Fill(ds, StartIndex, PageSize, "tb_Article");

		return ds.Tables["tb_Article"].DefaultView;
	}
	public void ListBind()
	{
		this.DataList1.DataSource = CreateSource();
		this.DataList1.DataBind();

		this.lnkbtnPageUp.Enabled = true;
		this.lnkbtnPageDown.Enabled = true;
		if (CurrentPage == (PageCount - 1))
			this.lnkbtnPageDown.Enabled = false;
		if (CurrentPage == 0)
			this.lnkbtnPageUp.Enabled = false;
	}

	public void Page_OnClick(Object sender, CommandEventArgs e)
	{
		CurrentPage = (int)ViewState["PageIndex"];
		PageCount = (int)ViewState["PageCount"];

		string cmd = e.CommandName;
		//判断cmd，以判定翻页方向 
		switch (cmd)
		{
			case "next":
				if (CurrentPage < (PageCount - 1)) CurrentPage++;
				break;
			case "prev":
				if (CurrentPage > 0) CurrentPage--;
				break;
            case "first":
                CurrentPage = 0;
                break;
            case "last":
                CurrentPage = PageCount-1;
                break;
		}

		ViewState["PageIndex"] = CurrentPage;
		ListBind();

	}

	protected void DataList1_ItemDataBound(object sender, DataListItemEventArgs e)
	{
		if (((Label)e.Item.Controls[0].FindControl("labContext")).Text.Length > 1000)
		{
			((Label)e.Item.Controls[0].FindControl("labContext")).Text = ((Label)e.Item.Controls[0].FindControl("labContext")).Text.Substring(0, 1000) + "... ...";
		}
	}
}
