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

public partial class UseControls_MainControls_Reply : System.Web.UI.UserControl
{

	protected void Page_Load(object sender, EventArgs e)
	{
		string P_str_sub = Request["ArticleID"].ToString();
		SqlConnection mycon = new SqlConnection(ConfigurationManager.AppSettings["conStr"]);
		mycon.Open();
		SqlDataAdapter myada = new SqlDataAdapter("select * from tb_Revert where ArticleID='" + P_str_sub + "'", mycon);
		DataSet ds = new DataSet();
		myada.Fill(ds);
		this.DataList1.DataSource = ds;
		this.DataList1.DataKeyField = "RevertID";
		this.DataList1.DataBind();
		mycon.Close();
	}
	
	

	protected void DataList1_DeleteCommand(object source, DataListCommandEventArgs e)
	{
		string P_str_strid = this.DataList1.DataKeys[e.Item.ItemIndex].ToString(); //获取当前DataList控件列
		string com = "Delete from tb_Revert where RevertID='" + Convert.ToInt32(P_str_strid) + "'";
		SqlData da = new SqlData();
		da.ExceSQL(com);
		Page.Response.Redirect("ReplyManage.aspx?ArticleID="+Request["ArticleID"]+"");
	}
	protected void DataList1_ItemDataBound(object sender, DataListItemEventArgs e)
	{
		((LinkButton)e.Item.Controls[0].FindControl("LinkButton1")).Attributes.Add("onclick", "return confirm('确定要删除吗？')");
	}
}
