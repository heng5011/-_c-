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

public partial class Module_Blog_ArticleManage : System.Web.UI.Page
{
    string ID;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["UserName"] == null)
        {
            Response.Redirect("../../Index.aspx");
        }
        SqlData da = new SqlData();
        SqlConnection mycon = new SqlConnection(ConfigurationManager.AppSettings["conStr"]);
        mycon.Open();
        DataSet mydataset = new DataSet();
        SqlDataAdapter mydataadapter1 = new SqlDataAdapter("select * from tb_Blog where UserName='" + Session["UserName"] + "'", mycon);
        mydataadapter1.Fill(mydataset, "tb_Blog");
        DataRowView rowview1 = mydataset.Tables["tb_Blog"].DefaultView[0];
        ID = rowview1["BlogID"].ToString();
        this.GridView1.DataSource = da.ExceDS("select * from tb_Article where BlogID='" + ID + "'");
        GridView1.DataKeyNames = new string[] { "ArticleID" };
        GridView1.DataBind();
    }

    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        SqlData da = new SqlData();
        bool delete = da.ExceSQL("delete from tb_Article where ArticleID='" + GridView1.DataKeys[e.RowIndex].Value + "'");
        if (delete)
        {
            Response.Write("<script language=javascript>alert('删除成功！');location='ArticleManage.aspx'</script>");
        }
        else
        {
            Response.Write("<script language=javascript>alert('删除失败！');location='ArticleManage.aspx'</script>");
        }

    }
    protected void btnSearch_Click(object sender, EventArgs e)
    {
        SqlData da = new SqlData();
        string search = this.ddlSearch.SelectedValue;
        switch (search)
        {
            case "文章ID":
                da.BindData(this.GridView1, "Select * From tb_Article Where ArticleID  Like  '%" + this.txtKey.Text + "%' and BlogID='" + ID + "'");
                break;
            case "文章主题":
                da.BindData(this.GridView1, "Select * From tb_Article Where Subject  Like  '%" + this.txtKey.Text + "%' and BlogID='" + ID + "'");
                break;
            default:
                Response.Write("<script lanuage=javascript>alert('出错拉！');location='javascript:history.go(-1)'</script>");
                break;
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
            if ((e.Row.Cells[1].Text).Length > 6)
            {
                e.Row.Cells[1].Text = (e.Row.Cells[1].Text).Substring(0, 6) + "…";
            }
            ((LinkButton)e.Row.Cells[4].Controls[0]).Attributes.Add("onclick", "return confirm('确定要删除吗?')");
        }
    }
}
