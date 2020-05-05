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
