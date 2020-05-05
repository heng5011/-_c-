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

public partial class Module_Blog_VisitorManage : System.Web.UI.Page
{
    string ID;

	protected void Page_Load(object sender, EventArgs e)
	{
		if (Session["UserName"] == null)
		{
			Response.Redirect("../../Index.aspx");
		}
        SqlData da = new SqlData();
        this.GridView1.DataSource = da.ExceDS("select * from tb_Visitor");
		GridView1.DataKeyNames = new string[] { "VisitorID" };
		GridView1.DataBind();
	}

	protected void btnSearch_Click(object sender, EventArgs e)
	{
		SqlData da = new SqlData();
		string search = this.ddlSearch.SelectedValue;
		switch (search)
		{
			case "游客ID":
                da.BindData(this.GridView1, "Select * From tb_Visitor Where VisitorID  Like  '%" + this.txtKey.Text + "%'  and BlogID='" + ID + "'");
				break;
			case "游客姓名":
                da.BindData(this.GridView1, "Select * From tb_Visitor Where VisitorName  Like  '%" + this.txtKey.Text + "%' and BlogID='" + ID + "'");
				break;
			case "QQ":
                da.BindData(this.GridView1, "Select * From tb_Visitor Where QQ  Like  '%" + this.txtKey.Text + "%' and BlogID='" + ID + "'");
				break;
			default:
				Response.Write("<script lanuage=javascript>alert('出错拉！');location='javascript:history.go(-1)'</script>");
				break;
		}
	}
	protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
	{
		SqlData da = new SqlData();
		bool del = da.ExceSQL("delete from tb_Visitor where VisitorID='" + GridView1.DataKeys[e.RowIndex].Value + "'");
        if (del)
        {
            Response.Write("<script language=javascript>alert('删除成功！');location='VisitorManage.aspx'</script>");
        }
        else
        {
            Response.Write("<script language=javascript>alert('删除失败！');</script>");
        }
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
			((LinkButton)(e.Row.Cells[5].Controls[0])).Attributes.Add("onclick", "return confirm('确定删除吗？')");
		}
	}
}
