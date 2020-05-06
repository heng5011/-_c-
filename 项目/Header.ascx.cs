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

public partial class UseControls_Header : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {
		if (!IsPostBack)
		{
			//生成一个随机数，在初始化时将其显示出来，作为验证码
			Random yzm = new Random();
			this.labVali.Text = yzm.Next(1000, 9999).ToString();
		}
    }

	protected void btnReg_Click(object sender, EventArgs e)
	{
		Page.Response.Redirect("~/Module/Blog/RegPro.aspx");
	}

	protected void btnOK_Click(object sender, EventArgs e)
	{
		if (this.txtVali.Text != this.labVali.Text)
		{
			Response.Write("<script lanuage=javascript>alert('验证码错误');location='javascript:history.go(-1)'</script>");
		}
		else
		{
			SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["conStr"]); //*设置数据库链接
			con.Open();
			SqlCommand com = new SqlCommand("select count(*) from tb_Blog where UserName='" + this.txtUid.Text + "' and PassWord='" + this.txtPwd.Text + "'", con); //*用户名密码验证
            int count = Convert.ToInt32(com.ExecuteScalar());//执行SQL语句并返回值到count第一行的第一列的值并转化为int型
			if (count > 0)
			{
				Session["UserName"] = this.txtUid.Text;
				Session["PassWord"] = this.txtPwd.Text;
                Page.Response.Redirect("Module/Blog/Index.aspx");//Session 通常用于执行以下操作： 存储需要在整个用户会话过程中保持其状态的信息，例如登录信息或用户浏览 Web 应用程序时需要的其它信息。 
			}
			else
			{
				Response.Write("<script lanuage=javascript>alert('用户名或密码有误！');location='javascript:history.go(-1)'</script>");
				return;
			}
		}
	}
}
