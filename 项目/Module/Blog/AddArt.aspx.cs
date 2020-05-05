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

public partial class Module_Blog_AddArt : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
		if (Session["UserName"] == null)
		{
			Response.Redirect("../../Index.aspx");
		}
		this.Label1.Text = Session["UserName"].ToString();
    }
	protected void btnAdd_Click(object sender, EventArgs e)
	{
		string  ID;
		SqlConnection mycon = new SqlConnection(ConfigurationManager.AppSettings["conStr"]);
		mycon.Open();
		DataSet mydataset = new DataSet();
		SqlDataAdapter mydataadapter = new SqlDataAdapter("select * from tb_Blog where UserName='"+Session["UserName"]+"'", mycon);
		mydataadapter.Fill(mydataset, "tb_Blog");
		DataRowView rowview = mydataset.Tables["tb_Blog"].DefaultView[0];
		ID = rowview["BlogID"].ToString();
		string com = "Insert into tb_Article(Subject,Author,Content,Time,BlogID) values('" + this.txtSubject.Text + "','" + Session["UserName"].ToString() + "','" + this.txtContent.Text + "','" + DateTime.Now.ToString() + "','" + ID + "')";
		SqlData da = new SqlData();
		bool add = da.ExceSQL(com);
		if (add)
		{
			Response.Write("<script language=javascript>alert('文章添加成功!');location='ArticleManage.aspx'</script>");
		}
		else
		{
			Response.Write("<script language=javascript>alert('文章添加失败！');location='javascript:history.go(-1)'</script>");
		}
	}
	protected void btnCancle_Click(object sender, EventArgs e)
	{
		Response.Redirect("ArticleManage.aspx");
	}
}
