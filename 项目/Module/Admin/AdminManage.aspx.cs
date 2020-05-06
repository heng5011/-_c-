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

public class SqlData_2
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
	public SqlData_2()
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


public partial class Module_Admin_Append : System.Web.UI.Page
{
	protected void Page_Load(object sender, EventArgs e)
	{
		if (!IsPostBack)
		{
			if (Session["UserName"] == null)
			{
				Response.Redirect("../../Index.aspx");
			}
			SqlData_2 da = new SqlData_2();
			this.gvAdmin.DataSource = da.ExceDS("select * from tb_Admin");
			gvAdmin.DataKeyNames = new string[] { "id" };
			gvAdmin.DataBind();
		}
	}

	protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
	{
		if ("是" == Session["SuperAdmin"].ToString())
		{
			SqlData_2 da = new SqlData_2();
			da.ExceSQL("delete from tb_Admin where ID='" + gvAdmin.DataKeys[e.RowIndex].Value + "'");
			Page.Response.Redirect("AdminManage.aspx");
		}
		else
		{
			Response.Write("<script language=javascript>alert('非超级管理员不能进行删除操作！')</script>");
		}
	}
	protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
	{
		gvAdmin.PageIndex = e.NewPageIndex;
		gvAdmin.DataBind();
	}

	protected void btnSearch_Click(object sender, EventArgs e)
	{
		SqlData_2 da = new SqlData_2();
		string search=this.ddlSearch.SelectedValue;
		switch (search)
		{
			case "管理员ID":
				da.BindData(this.gvAdmin, "Select * From tb_Admin Where ID  Like  '%" + this.txtKey.Text + "%'");
				break;
			case "用户名":
				da.BindData(this.gvAdmin, "Select * From tb_Admin Where UserName  Like  '%" + this.txtKey.Text + "%'");
				break;
			case "QQ":
				da.BindData(this.gvAdmin, "Select * From tb_Admin Where QQ  Like  '%" + this.txtKey.Text + "%'");
				break;
			default:
				Response.Write("<script lanuage=javascript>alert('出错拉！');location='javascript:history.go(-1)'</script>");
				break;
     	}
	}
	protected void gvAdmin_RowDataBound(object sender, GridViewRowEventArgs e)
	{
		if (e.Row.RowType == DataControlRowType.DataRow)
		{
			((LinkButton)(e.Row.Cells[6].Controls[0])).Attributes.Add("onclick", "return confirm('确定删除吗？')");
		}
	}
}
