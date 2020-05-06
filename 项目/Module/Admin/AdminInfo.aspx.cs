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

public class SqlData_1
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
	public SqlData_1()
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

public partial class Module_Admin_AdminInfo : System.Web.UI.Page
{

	protected void Page_Load(object sender, EventArgs e)
    {
		if (Session["UserName"] == null)
		{
			Response.Redirect("../../Index.aspx");
		}

		if (!IsPostBack)
		{
			try
			{
				SqlConnection mycon = new SqlConnection(ConfigurationManager.AppSettings["conStr"]);
				mycon.Open();
				DataSet mydataset = new DataSet();
				SqlDataAdapter mydataadapter = new SqlDataAdapter("select * from tb_Admin where id=" + Request["id"],mycon);
				mydataadapter.Fill(mydataset, "tb_Admin");
				DataRowView rowview = mydataset.Tables["tb_Admin"].DefaultView[0];
				this.txtName.Text = Convert.ToString(rowview["UserName"]);
				this.txtPwd.Text = Convert.ToString(rowview["PassWord"]);
				this.ddlSex.SelectedValue = Convert.ToString(rowview["Sex"]);
				this.txtRealName.Text = Convert.ToString(rowview["ReallyName"]);
				this.txtBirthday.Text = Convert.ToString(rowview["Birthday"]);
				this.txtAddress.Text = Convert.ToString(rowview["Address"]);
				this.txtPostCode.Text = Convert.ToString(rowview["PostCode"]);
				this.txtQues.Text = Convert.ToString(rowview["Question"]);
				this.txtAns.Text = Convert.ToString(rowview["Answer"]);
				this.txtEmail.Text = Convert.ToString(rowview["Email"]);
				this.txtHphone.Text = Convert.ToString(rowview["HomePhone"]);
				this.txtMphone.Text = Convert.ToString(rowview["MobilePhone"]);
				this.txtQQ.Text = Convert.ToString(rowview["QQ"]);
				this.txtICQ.Text = Convert.ToString(rowview["ICQ"]);
				this.TextBox1.Text = Convert.ToString(rowview["RegTime"]);
				this.DropDownList1.SelectedValue = Convert.ToString(rowview["SuperAdmin"]);
				this.txtIP.Text = Convert.ToString(rowview["IP"]);
				mycon.Close();
			}
			catch (Exception ex)
			{
				Response.Write(ex.Message);
			}
		}
    }

	protected void btnUpdate_Click(object sender, EventArgs e)
	{
		try
		{

			SqlData_1 da = new SqlData_1();
			/*SqlConnection sqlcon;
			SqlCommand sqlcom;
			SqlDataAdapter sqldata;
			sqlcon = new SqlConnection(ConfigurationManager.AppSettings["conStr"]);
			sqlcon.Open();   //打开链接
*/
			string P_str_Com = "update tb_Admin set UserName='" + this.txtName.Text + "',PassWord='" + this.txtOKpwd.Text + "'"
			+ ",Sex='" + this.ddlSex.SelectedValue + "',ReallyName='" + this.txtRealName.Text + "'"
			+ ",Birthday='" + this.txtBirthday.Text + "',Email='" + this.txtEmail.Text + "',HomePhone='" + this.txtHphone.Text + "'"
			+ ",MobilePhone='" + this.txtMphone.Text + "',PostCode='" + this.txtPostCode.Text + "',QQ='" + this.txtQQ.Text + "'"
			+ ",ICQ='" + this.txtICQ.Text + "',Address='" + this.txtAddress.Text + "',Answer='" + this.txtAns.Text + "',Question='" + this.txtQues.Text + "',SuperAdmin='" + this.DropDownList1.SelectedValue + "'"
			+ " where ID='" + Request["ID"] + "'";
			bool add = da.ExceSQL(P_str_Com);
			if (add == true)
			{
				Response.Write("<script language=javascript>alert('修改信息成功!');location='AdminManage.aspx'</script>");
			}
			else
			{
				Response.Write("<script language=javascript>alert('修改信息失败！');location='javascript:history.go(-1)'</script>");
			}
		}
		catch (Exception ex)
		{
			Response.Write(ex.Message);
		}
	}


	protected void txtBack_Click(object sender, EventArgs e)
	{
		Page.Response.Redirect("AdminManage.aspx");
	}
}
