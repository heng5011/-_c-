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

public partial class Module_Blog_LinkManage : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
		if (Session["UserName"] == null)
		{
			Response.Redirect("../../Index.aspx");
		}
		SqlData da = new SqlData();
		this.GridView1.DataSource = da.ExceDS("select * from tb_Href");
		GridView1.DataKeyNames = new string[] { "HrefID" };
		GridView1.DataBind();
    }
	protected void btnSearch_Click(object sender, EventArgs e)
	{
		SqlData da = new SqlData();
		string search = this.ddlSearch.SelectedValue;
		switch (search)
		{
			case "地址ID":
				da.BindData(this.GridView1, "Select * From tb_Href Where HrefID  Like  '%" + this.txtKey.Text + "%'");
				break;
			case "网站名称":
				da.BindData(this.GridView1, "Select * From tb_Href Where Name  Like  '%" + this.txtKey.Text + "%'");
				break;
			case "链接网址":
				da.BindData(this.GridView1, "Select * From tb_Href Where Url  Like  '%" + this.txtKey.Text + "%'");
				break;
			default:
				Response.Write("<script lanuage=javascript>alert('出错拉！');location='javascript:history.go(-1)'</script>");
				break;
		}
	}
	protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
	{
		SqlData da = new SqlData();
		da.ExceSQL("delete from tb_Href where HrefID='" + GridView1.DataKeys[e.RowIndex].Value + "'");
		Page.Response.Redirect("LinkManage.aspx"); 
	}
	protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
	{
		GridView1.PageIndex = e.NewPageIndex;
		GridView1.DataBind();
	}

	protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
	{
		if (e.Row.RowType == DataControlRowType.DataRow)
		{
			if ((e.Row.Cells[1].Text).Length > 6)
			{
				e.Row.Cells[1].Text = (e.Row.Cells[1].Text).Substring(0, 6) + "…";
			}
			if ((e.Row.Cells[0].Text).Length > 6)
			{
				e.Row.Cells[0].Text = (e.Row.Cells[0].Text).Substring(0, 6) + "…";
			}
			if ((e.Row.Cells[0].Text).Length > 6)
			{
				e.Row.Cells[0].Text = (e.Row.Cells[0].Text).Substring(0, 6) + "…";
			}
		}
		if (e.Row.RowType == DataControlRowType.DataRow)
		{
			((LinkButton)(e.Row.Cells[4].Controls[0])).Attributes.Add("onclick", "return confirm('确定删除吗？')");
		}
	}
}
