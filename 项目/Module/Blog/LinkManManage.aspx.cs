﻿using System;
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

public class SqlData
{
	#region  类中的全局变量

	private SqlConnection sqlcon;  //申明一个SqlConnection对象
	private SqlCommand sqlcom;   //申明一个SqlCommand对象
	private SqlDataAdapter sqldata;   //申明一个SqlDataAdapter对象

	#endregion

	#region  构造函数

	/// <summary>
	/// 创建时间:2020-4-29
	/// 创建人:18 计三 孔伟恒
	/// 构造函数，初始化时连接数据库
	/// </summary>
	public SqlData()
	{
		sqlcon = new SqlConnection(ConfigurationManager.AppSettings["conStr"]);
		sqlcon.Open();   //打开链接
	}

	#endregion

	#region  绑定用户页面中的GridView控件
	/// <summary>
	/// 创建时间:2020-4-29
	/// 创建人:18 计三 孔伟恒
	/// 此方法实现数据绑定到GridView中
	/// </summary>
	/// <param name="dl">要绑定的控件</param>
	/// <param name="SqlCom">要执行的SQL语句</param>
	/// <returns></returns>
	public bool BindData(GridView dl, string SqlCom)
	{
		dl.DataSource = this.ExceDS(SqlCom);
		try
		{
			dl.DataBind();
			return true;
		}
		catch
		{
			return false;
		}
		finally
		{
			sqlcon.Close();
		}
	}
	#endregion

	#region  执行SQL语句
	/// <summary>
	/// 创建时间:2020-4-29
	/// 创建人:18 计三 孔伟恒
	/// 此方法用来执行SQL语句
	/// </summary>
	/// <param name="SqlCom">要执行的SQL语句</param>
	/// <returns></returns>
	public bool ExceSQL(string strSqlCom)
	{
		sqlcom = new SqlCommand(strSqlCom, sqlcon);
		try
		{
			sqlcom.ExecuteNonQuery();
			return true;
		}
		catch
		{
			return false;
		}
		finally
		{
			sqlcon.Close();
		}
	}
	#endregion

	#region  返回DataSet类型数据
	/// <summary>
	/// 创建时间:2020-4-29
	/// 创建人:18 计三 孔伟恒
	/// 此方法返回一个DataSet类型
	/// </summary>
	/// <param name="SqlCom">要执行的SQL语句</param>
	/// <returns></returns>
	public DataSet ExceDS(string SqlCom)
	{
		try
		{
			sqlcom = new SqlCommand(SqlCom, sqlcon);
			sqldata = new SqlDataAdapter();
			sqldata.SelectCommand = sqlcom;
			DataSet ds = new DataSet();
			sqldata.Fill(ds);
			return ds;
		}
		finally
		{
			sqlcon.Close();
		}
	}
	#endregion

	#region  返回SqlDataReader类型的数据
	/// <summary>
	/// 创建时间:2020-4-29
	/// 创建人:18 计三 孔伟恒
	/// </summary>
	/// <param name="SqlCom"></param>
	/// <returns></returns>
	public SqlDataReader ExceRead(string SqlCom)
	{
		sqlcom = new SqlCommand(SqlCom, sqlcon);
		SqlDataReader read = sqlcom.ExecuteReader();
		return read;
	}
	#endregion
}


public partial class Module_Blog_MessageList : System.Web.UI.Page
{
    string ID;
	protected void Page_Load(object sender, EventArgs e)
	{
		if (Session["UserName"] == null)
		{
			Response.Redirect("../../Index.aspx");
		}
        SqlConnection mycon = new SqlConnection(ConfigurationManager.AppSettings["conStr"]);
        mycon.Open();
        DataSet mydataset = new DataSet();
        SqlDataAdapter mydataadapter = new SqlDataAdapter("select * from tb_Blog where UserName='" + Session["UserName"] + "'", mycon);
        mydataadapter.Fill(mydataset, "tb_Blog");
        DataRowView rowview = mydataset.Tables["tb_Blog"].DefaultView[0];
        ID = rowview["BlogID"].ToString();
		SqlData da = new SqlData();
		this.GridView1.DataSource = da.ExceDS("select * from tb_Message where BlogID='"+ID+"'");
		GridView1.DataKeyNames = new string[] { "MessageID" };
		GridView1.DataBind();
	}

	protected void btnSearch_Click(object sender, EventArgs e)
	{
		SqlData da = new SqlData();
		string search=this.ddlSearch.SelectedValue;
		switch (search)
		{
			case "联系人ID":
				da.BindData(this.GridView1, "Select * From tb_Message Where MessageID  Like  '%" + this.txtKey.Text + "%' and BlogID='"+ID+"'");
				break;
			case "姓名":
                da.BindData(this.GridView1, "Select * From tb_Message Where FriendName  Like  '%" + this.txtKey.Text + "%' and BlogID='" + ID + "'");
				break;
			case "QQ":
                da.BindData(this.GridView1, "Select * From tb_Message Where QQ  Like  '%" + this.txtKey.Text + "%'  and BlogID='" + ID + "'");
				break;
			default:
				Response.Write("<script lanuage=javascript>alert('出错拉！');location='javascript:history.go(-1)'</script>");
				break;
		}
	}
	protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
	{
		SqlData da = new SqlData();
		da.ExceSQL("delete from tb_Message where MessageID='" + GridView1.DataKeys[e.RowIndex].Value + "'");
		Page.Response.Redirect("LinkManManage.aspx"); 
	}
	protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
	{
		GridView1.PageIndex = e.NewPageIndex;
		GridView1.DataBind();
	}
	protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
	{
		if (e.Row.RowType == DataControlRowType.DataRow)
		{
			((LinkButton)(e.Row.Cells[5].Controls[0])).Attributes.Add("onclick", "return confirm('确定删除吗？')");
		}
	}
}
