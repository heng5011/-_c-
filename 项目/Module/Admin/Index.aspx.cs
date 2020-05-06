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

public class SqlData_3
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
	public SqlData_3()
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


public partial class Module_Admin_Index : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
		if (!IsPostBack)
		{
			Random ran = new Random();
			this.labVali.Text = ran.Next(1000, 9999).ToString();
		}
    }
	protected void btnOK_Click(object sender, EventArgs e)
	{
		if (this.txtVali.Text != this.labVali.Text)
		{
			Response.Write("<script lanuage=javascript>alert('验证码错误');location='javascript:history.go(-1)'</script>");
		}
		else
		{
			//SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["conStr"]);
			string ConStr1 = "server=DESKTOP-0BABS1G;user id=sa; pwd=123;database=db_Blog";
			SqlConnection con = new SqlConnection(ConStr1);
			con.Open();
			SqlCommand com = new SqlCommand("select count(*) from tb_Admin where UserName='" + this.txtUid.Text + "' and PassWord='" + this.txtPwd.Text + "'", con);
			SqlData_3 da = new SqlData_3();
			SqlDataReader read = da.ExceRead("select * from tb_Admin where UserName='" + this.txtUid.Text + "'");// SqlDataReader对象是只读、前向，Read 方法 作用：得到下一行。如果还有后续数据行存在，返回True；反之，返回False
			read.Read();
            if (read.HasRows)
            {
                Session["SuperAdmin"] = read["SuperAdmin"].ToString();
            }
			read.Close();
			int count = Convert.ToInt32(com.ExecuteScalar());
			if (count > 0)
			{
				Session["UserName"] = this.txtUid.Text;
				Session["PassWord"] = this.txtPwd.Text;
				Page.Response.Redirect("AdminManage.aspx");
			}
			else
			{
				Response.Write("<script lanuage=javascript>alert('用户名或密码有误！');location='javascript:history.go(-1)'</script>");
				return;
			}
		}
	}
	protected void btnCancle_Click(object sender, EventArgs e)
	{
		Response.Redirect("../../Index.aspx");
	}
}
