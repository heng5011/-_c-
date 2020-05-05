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

public partial class UseControls_MainControls_Reply2 : System.Web.UI.UserControl
{
	SqlConnection MyConn;
	int PageSize, RecordCount, PageCount, CurrentPage;
    string ID;

	protected void Page_Load(object sender, EventArgs e)
	{
		//设定PageSize 
		PageSize = 5;

		//连接语句 
		MyConn = new SqlConnection(ConfigurationManager.AppSettings["conStr"]);
		MyConn.Open();

        SqlConnection mycon = new SqlConnection(ConfigurationManager.AppSettings["conStr"]);
        mycon.Open();
        DataSet mydataset = new DataSet();
        SqlDataAdapter mydataadapter = new SqlDataAdapter("select * from tb_Blog where UserName='" + Session["UserName"] + "'", mycon);
        mydataadapter.Fill(mydataset, "tb_Blog");
        DataRowView rowview = mydataset.Tables["tb_Blog"].DefaultView[0];
        ID = rowview["BlogID"].ToString();


		//第一次请求执行 
		ListBind();
		CurrentPage = 0;
		ViewState["PageIndex"] = 0;

		//计算总共有多少记录 
		RecordCount = CalculateRecord();
        if (RecordCount >0)
        {
            this.lnkbtnfirst.Visible = true;
            this.lnkbtnlast.Visible = true;
            this.lnkbtnNext.Visible = true;
            this.lnkbtnUp.Visible = true;
        }
        else
        {
            this.lnkbtnfirst.Visible = false;
            this.lnkbtnlast.Visible = false;
            this.lnkbtnNext.Visible = false;
            this.lnkbtnUp.Visible = false;
        }

		//计算总共有多少页 
		if (RecordCount % PageSize != 0)
		{
			PageCount = RecordCount / PageSize+1;
		}
		else
		{
			PageCount = RecordCount / PageSize ;
		}
		ViewState["PageCount"] = PageCount;
	}

	//计算总共有多少条记录 
	public int CalculateRecord()
	{
		int intCount;
		string strCount = "select count(*) as co from tb_Revert where BlogID='"+ID+"'";

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
		string strSel = "select * from tb_Revert where BlogID='"+ID+"'";
		DataSet ds = new DataSet();

		SqlDataAdapter MyAdapter = new SqlDataAdapter(strSel, MyConn);
		MyAdapter.Fill(ds, StartIndex, PageSize, "tb_Revert");

		return ds.Tables["tb_Revert"].DefaultView;
	}
	public void ListBind()
	{
		this.DataList1.DataSource = CreateSource();
		this.DataList1.DataKeyField = "RevertID";
		this.DataList1.DataBind();
        this.lnkbtnNext.Enabled = true;
        this.lnkbtnUp.Enabled = true;
        if (CurrentPage == (PageCount - 1))
           this.lnkbtnNext.Enabled = false;
        if (CurrentPage == 0)
           this.lnkbtnUp.Enabled = false;

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
                if (PageCount - 1 >= 0)
                {
                    CurrentPage = PageCount - 1;
                }
                break;
		}

		ViewState["PageIndex"] = CurrentPage;
		ListBind();

	}

	protected void DataList1_DeleteCommand(object source, DataListCommandEventArgs e)
	{
		string strid = this.DataList1.DataKeys[e.Item.ItemIndex].ToString(); //获取当前DataList控件列
		Response.Write(strid);
		string com = "Delete from tb_Revert where RevertID='" + Convert.ToInt32(strid) + "'";
		SqlData da = new SqlData();
		da.ExceSQL(com);
		Page.Response.Redirect("ReplyManage2.aspx");
	}
	protected void DataList1_ItemDataBound(object sender, DataListItemEventArgs e)
	{
		((LinkButton)e.Item.Controls[0].FindControl("LinkButton1")).Attributes.Add("onclick", "return confirm('确定要删除吗？')");
	}
}
