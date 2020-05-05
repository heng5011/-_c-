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
    string ID;

    protected void Page_Load(object sender, EventArgs e)
    {
        SqlData da = new SqlData();
        SqlConnection mycon = new SqlConnection(ConfigurationManager.AppSettings["conStr"]);
        mycon.Open();
        DataSet mydataset = new DataSet();
        SqlDataAdapter mydataadapter1 = new SqlDataAdapter("select * from tb_Article where ArticleID='" + Session["ArticleID"] + "'", mycon);
        mydataadapter1.Fill(mydataset, "tb_Article");
        DataRowView rowview1 = mydataset.Tables["tb_Article"].DefaultView[0];
        ID = rowview1["BlogID"].ToString();
    }
	protected void btnOK_Click(object sender, EventArgs e)
	{
		SqlData da = new SqlData();
		SqlDataReader read = da.ExceRead("select * from tb_Visitor where VisitorName='" + this.txtName.Text + "'");
		read.Read();
		if (read.HasRows)
		{
			if (this.txtName.Text == read["VisitorName"].ToString())
			{
				Response.Write("<script language=javascript>alert('对不起，该用户已经注册！');location='Register.aspx'</script>");
				return;
			}
		}
		read.Close();
		//若用户名不存在，则执行下面的SQL语句
		string Com = "insert into tb_Visitor(VisitorName,PassWord,ReallyName,Birthday,Address,PostCode,Email,HomePhone,MobilePhone,QQ,ICQ,Sex,RegTime,IP,BlogID)"
		+ " values('" + this.txtName.Text + "','" + this.txtPwd.Text + "','" + this.txtRealName.Text + "','" + this.txtBirthday.Text + "'"
		+ ",'" + this.txtAddress.Text + "','" + this.txtPostCode.Text + "','" + this.txtEmail.Text + "','" + this.txtHphone.Text + "'"
		+ ",'" + this.txtMphone.Text + "','" + this.txtQQ.Text + "','" + this.txtICQ.Text + "'"
		+ ",'" + this.DropDownList1.SelectedValue + "','" + DateTime.Now.ToString() + "','"+Page.Request.UserHostAddress+"','"+ID+"')";
		da.ExceSQL(Com);
		string StrName = this.txtName.Text;
		Response.Redirect("RegSuccess.aspx?VisitorName=" + StrName);
	}
	protected void Button1_Click(object sender, EventArgs e)
	{
		SqlData da = new SqlData();
		SqlDataReader read = da.ExceRead("select * from tb_Visitor where VisitorName='" + this.txtName.Text + "'");
		read.Read();
		if (read.HasRows)
		{
			if (this.txtName.Text == read["VisitorName"].ToString())
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
	protected void btnBack_Click(object sender, EventArgs e)
	{
		Response.Redirect("~/Index.aspx");
	}
}
