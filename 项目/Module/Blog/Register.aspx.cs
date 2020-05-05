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

public partial class Module_Admin_Register : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
	protected void btnOK_Click(object sender, EventArgs e)
	{
		SqlData da = new SqlData();
		SqlDataReader read = da.ExceRead("select * from tb_Blog where UserName='" + this.txtName.Text + "'");
		read.Read();
		if (read.HasRows)
		{
			if (this.txtName.Text == read["UserName"].ToString())
			{
				Response.Write("<script language=javascript>alert('对不起，该用户已经注册！');location='Register.aspx'</script>");
				return;
			}
		} 
		read.Close();
		string P_str_Com = "insert into tb_Blog(UserName,PassWord,ReallyName,Birthday,Address,PostCode,Subject,Email,HomePhone,MobilePhone,QQ,ICQ, Question,Answer,Sex,RegTime,IP)"
		+ " values('" + this.txtName.Text + "','" + this.txtPwd.Text + "','" + this.txtRealName.Text + "','" +this.txtBirthday.Text+ "'"
		+ ",'" + this.txtAddress.Text + "','" +this.txtPostCode.Text+ "','" + this.txtSubject.Text + "','" + this.txtEmail.Text + "'"
		+ ",'" +this.txtHphone.Text + "','" + this.txtMphone.Text + "','" +this.txtQQ.Text+ "','" +this.txtICQ.Text + "','" + this.txtQues.Text + "'"
		+ ",'" + this.txtAns.Text + "','" + this.DropDownList1.SelectedValue + "','" + DateTime.Now.ToString() + "','"+Page.Request.UserHostAddress+"')";
		bool add = da.ExceSQL(P_str_Com);
		if (add == true)
		{
			Response.Write("<script language=javascript>alert('添加成功!');location='Index.aspx'</script>");
		}
		else
		{
			Response.Write("<script language=javascript>alert('添加失败！');location='javascript:history.go(-1)'</script>");
		}
	}

	protected void btnBack_Click(object sender, EventArgs e)
	{
		Page.Response.Redirect("~/Index.aspx");
	}
	protected void Button1_Click(object sender, EventArgs e)
	{
		SqlData da = new SqlData();
		SqlDataReader read = da.ExceRead("select * from tb_Blog where UserName='" + this.txtName.Text + "'");
		read.Read();
		if (read.HasRows)
		{
			if (this.txtName.Text == read["UserName"].ToString())
			{
				Response.Write("<script language=javascript>alert('对不起，该用户已经注册！');location='Register.aspx'</script>");
			}
		}
		else
		{
			Response.Write("<script language=javascript>alert('恭喜您，该用户可以注册！');</script>");
		}
		read.Close();
	}
}
