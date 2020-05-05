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

public partial class Module_Blog_AddFriend : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
		if (Session["UserName"] == null)
		{
			Response.Redirect("../../Index.aspx");
		}
    }
	protected void btnCancle_Click(object sender, EventArgs e)
	{
		Page.Response.Redirect("LinkManManage.aspx");
	}
	protected void btnOK_Click(object sender, EventArgs e)
	{
        string ID;
        SqlConnection mycon = new SqlConnection(ConfigurationManager.AppSettings["conStr"]);
        mycon.Open();
        DataSet mydataset = new DataSet();
        SqlDataAdapter mydataadapter = new SqlDataAdapter("select * from tb_Blog where UserName='" + Session["UserName"] + "'", mycon);
        mydataadapter.Fill(mydataset, "tb_Blog");
        DataRowView rowview = mydataset.Tables["tb_Blog"].DefaultView[0];
        ID = rowview["BlogID"].ToString();

		string P_str_Com = "Insert into tb_Message(FriendName,Sex,HomePhone,MobilePhone,QQ,ICQ,Address,Birthday,Email,PostCode,BlogID,IP)"
			+" values ('"+this.txtName.Text+"','"+this.DropDownList1.SelectedValue+"','"+this.txtHphone.Text+"'"
		+",'"+this.txtMphone.Text+"','"+this.txtQQ.Text+"','"+this.txtICQ.Text+"','"+this.txtAddress.Text+"'"
		+",'"+this.txtBirthday.Text+"','"+this.txtEmail.Text+"','"+this.txtPostCode.Text+"','"+ID+"','"+Request.UserHostAddress+"')";
		SqlData da = new SqlData();
		bool add = da.ExceSQL(P_str_Com);
		if (add == true)
		{
			Response.Write("<script language=javascript>alert('添加成功!');location='LinkManManage.aspx'</script>");
		}
		else
		{
			Response.Write("<script language=javascript>alert('添加失败！');location='javascript:history.go(-1)'</script>");
		}
	}
}
