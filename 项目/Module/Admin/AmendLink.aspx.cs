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

public partial class Module_Blog_AmendLink : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
		if (Session["UserName"] == null)
		{
			Response.Redirect("../../Index.aspx");
		}
		if (!IsPostBack)
		{
			SqlConnection mycon = new SqlConnection(ConfigurationManager.AppSettings["conStr"]);
			SqlDataAdapter mydataadapter = new SqlDataAdapter("select * from tb_Href where HrefID=" + Request["id"],mycon);
			DataSet mydataset = new DataSet();
			mydataadapter.Fill(mydataset, "tb_Href");
			DataRowView rowview = mydataset.Tables["tb_Href"].DefaultView[0];
			this.txtName.Text = Convert.ToString(rowview["Name"]);
			this.txtUrl.Text = Convert.ToString(rowview["Url"]);
			mycon.Close();
		}
    }
	protected void btnCancle_Click(object sender, EventArgs e)
	{
		Response.Redirect("LinkManage.aspx");
	}
	protected void btnAmend_Click(object sender, EventArgs e)
	{
		string P_str_Com = "update tb_Href set Name='" + this.txtName.Text + "',Url='" + this.txtUrl.Text + "' where HrefID='" + Request["id"] + "'";
		SqlData da = new SqlData();
		bool add = da.ExceSQL(P_str_Com);
		if (add == true)
		{
			Response.Write("<script language=javascript>alert('修改链接成功!');location='LinkManage.aspx'</script>");
		}
		else
		{
			Response.Write("<script language=javascript>alert('修改链接失败！');location='javascript:history.go(-1)'</script>");
		}
	}
}
