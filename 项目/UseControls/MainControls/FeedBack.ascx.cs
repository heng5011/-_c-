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

public partial class UseControls_MainControls_FeedBack : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {
		this.Panel2.Visible = false;
		if (!IsPostBack)
		{
			Random ran = new Random();
			this.labVial.Text = ran.Next(1000, 9999).ToString();
		}
    }

	protected void btnReg_Click(object sender, EventArgs e)
	{
		Response.Redirect("../../Module/Visitor/RegPro.aspx");
	}
	protected void btnLogin_Click(object sender, EventArgs e)
	{
		if (this.txtVial.Text != this.labVial.Text)
		{
			Response.Write("<script lanuage=javascript>alert('验证码错误');location='javascript:history.go(-1)'</script>");
		}
		else
		{
			SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["conStr"]);
			con.Open();
			SqlCommand com = new SqlCommand("select count(*) from tb_Visitor where VisitorID='"+this.txtID.Text+"' and VisitorName='" + this.txtUserName.Text + "' and PassWord='" + this.txtPassWord.Text + "' ", con);
			int count = Convert.ToInt32(com.ExecuteScalar());
			if (count > 0)
			{
				Session["VisitorName"] = this.txtUserName.Text;
				this.Panel1.Visible = false;
				this.Panel2.Visible = true;
				this.labName.Text = this.txtUserName.Text;
			}
			else
			{
				Response.Write("<script lanuage=javascript>alert('用户名或密码有误！');location='javascript:history.go(-1)'</script>");
				return;
			}
		}
	}


	protected void txtOK_Click(object sender, EventArgs e)
	{
		if (Session["VisitorName"]==null)
		{
            int id;
            string str2;
			string str = Request["ArticleID"].ToString();
            string com="select * from tb_Article where ArticleID='"+str+"'";
            SqlData da = new SqlData();
            SqlDataReader read = da.ExceRead(com);
            read.Read();
            id = Convert.ToInt32(read["BlogID"]);
            str2 = Convert.ToString(read["Subject"]);
            read.Close();
			string Com = "insert into tb_Revert(VisitorName,Subject,Content,IP,Time,ArticleID,BlogID) values('匿名','" + str2 + "','" + this.txtContent.Text + "','" + Request.UserHostAddress.ToString() + "','"+DateTime.Now.ToString()+"','"+str+"','"+id+"')";
			bool add = da.ExceSQL(Com);
			if (add)
			{
				Response.Write("<script language=javascript>alert('提交成功!');location='../../Module/Visitor/Index.aspx'</script>");
			}
			else
			{
				Response.Write("<script language=javascript>alert('提交失败！');location='javascript:history.go(-1)'</script>");
			}
		}
		else
		{
            int id;
            string str2;
            string str = Request["ArticleID"].ToString();
            string com = "select * from tb_Article where ArticleID='" + str + "'";
            SqlData da = new SqlData();
            SqlDataReader read = da.ExceRead(com);
            read.Read();
            id = Convert.ToInt32(read["BlogID"]);
            str2 = Convert.ToString(read["Subject"]);
            read.Close();
            string Com = "insert into tb_Revert(VisitorID,VisitorName,Subject,Content,IP,Time,ArticleID,BlogID) values('" + this.txtID.Text + "','" + Session["VisitorName"].ToString() + "','" + str2 + "','" + this.txtContent.Text + "','" + Request.UserHostAddress.ToString() + "','" + DateTime.Now.ToString() + "','"+str+"','"+id+"')";
			bool add = da.ExceSQL(Com);
			if (add == true)
			{
				Response.Write("<script language=javascript>alert('提交成功!');location='../../Module/Visitor/Index.aspx'</script>");
			}
			else
			{
				Response.Write("<script language=javascript>alert('提交失败！');location='javascript:history.go(-1)'</script>");
			}
		}
	}
	protected void btnCancle_Click(object sender, EventArgs e)
	{
		Response.Redirect("../../Module/Visitor/Index.aspx");
	}
}
