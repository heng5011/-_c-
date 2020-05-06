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

public class SqlData1
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
	public SqlData1()
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

public partial class Module_Admin_BlogInfo : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
		if (Session["UserName"] == null)
		{
			Response.Redirect("../../Index.aspx");
		}
		if (!IsPostBack)
		{
			SqlConnection mycon = new SqlConnection(ConfigurationManager.AppSettings["conStr"]);
			SqlDataAdapter mydataadapter = new SqlDataAdapter("select * from tb_Blog where BlogID=" + Request["BlogID"],mycon);
			DataSet ds = new DataSet();
			mydataadapter.Fill(ds, "tb_Blog");
			DataRowView rowview = ds.Tables["tb_Blog"].DefaultView[0];
			this.txtName.Text = Convert.ToString(rowview["UserName"]);
			this.txtPwd.Text = Convert.ToString(rowview["PassWord"]);
			this.ddlSex.SelectedValue = Convert.ToString(rowview["Sex"]);
			this.txtRealName.Text = Convert.ToString(rowview["ReallyName"]);
			this.txtBirthday.Text = Convert.ToString(rowview["Birthday"]);
			this.txtAddress.Text = Convert.ToString(rowview["Address"]);
			this.txtSubject.Text = Convert.ToString(rowview["Subject"]);
			this.txtPostCode.Text = Convert.ToString(rowview["PostCode"]);
			this.txtQues.Text = Convert.ToString(rowview["Question"]);
			this.txtAns.Text = Convert.ToString(rowview["Answer"]);
			this.txtEmail.Text = Convert.ToString(rowview["Email"]);
			this.txtHphone.Text = Convert.ToString(rowview["HomePhone"]);
			this.txtMphone.Text = Convert.ToString(rowview["MobilePhone"]);
			this.txtQQ.Text = Convert.ToString(rowview["QQ"]);
			this.txtICQ.Text = Convert.ToString(rowview["ICQ"]);
			this.TextBox1.Text = Convert.ToString(rowview["RegTime"]);
			this.txtIP.Text = Convert.ToString(rowview["IP"]);
			mycon.Close();
		}
	}
	protected void btnOK_Click(object sender, EventArgs e)
	{
		SqlData1 da = new SqlData1();
		string P_str_Com = "update tb_Blog set UserName='" + this.txtName.Text + "',PassWord='" + this.txtOKpwd.Text + "'"
		+ ",Sex='" + this.ddlSex.SelectedValue + "',ReallyName='" + this.txtRealName.Text + "'"
		+ ",Birthday='" + this.txtBirthday.Text + "',Email='" + this.txtEmail.Text + "',HomePhone='" + this.txtHphone.Text + "'"
		+ ",MobilePhone='" + this.txtMphone.Text + "',PostCode='" + this.txtPostCode.Text + "',QQ='" + this.txtQQ.Text + "'"
		+ ",ICQ='" + this.txtICQ.Text + "',Address='" + this.txtAddress.Text + "',Answer='" + this.txtAns.Text + "'"
		+ ",Subject='"+this.txtSubject.Text+"',Question='" + this.txtQues.Text + "'"
		+ " where BlogID='" + Request["BlogID"] + "'";
		bool add = da.ExceSQL(P_str_Com);
		if (add == true)
		{
			Response.Write("<script language=javascript>alert('信息修改成功!');location='Index.aspx'</script>");
		}
		else
		{
			Response.Write("<script language=javascript>alert('信息修改失败！');location='javascript:history.go(-1)'</script>");
		}
	}
	protected void Button1_Click(object sender, EventArgs e)
	{
		Page.Response.Redirect("Index.aspx");
	}
}
