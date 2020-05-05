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

public partial class Module_Blog_VisitorInfo : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
		if (!IsPostBack)
		{
            SqlConnection mycon = new SqlConnection(ConfigurationManager.AppSettings["conStr"]);
            SqlDataAdapter mydataadapter = new SqlDataAdapter("select * from tb_Visitor where VisitorID=" + Request["id"],mycon);
            DataSet mydataset = new DataSet();
			mydataadapter.Fill(mydataset, "tb_Visitor");
			DataRowView rowview = mydataset.Tables["tb_Visitor"].DefaultView[0];
			this.txtName.Text = Convert.ToString(rowview["VisitorName"]);
			this.txtPwd.Text = Convert.ToString(rowview["PassWord"]);
			this.DropDownList1.SelectedValue = Convert.ToString(rowview["Sex"]);
			this.txtRealName.Text = Convert.ToString(rowview["ReallyName"]);
			this.txtBirthday.Text = Convert.ToString(rowview["Birthday"]);
			this.txtAddress.Text = Convert.ToString(rowview["Address"]);
			this.txtPostCode.Text = Convert.ToString(rowview["PostCode"]);
			this.txtEmail.Text = Convert.ToString(rowview["Email"]);
			this.txtHphone.Text = Convert.ToString(rowview["HomePhone"]);
			this.txtMphone.Text = Convert.ToString(rowview["MobilePhone"]);
			this.txtQQ.Text = Convert.ToString(rowview["QQ"]);
			this.txtICQ.Text = Convert.ToString(rowview["ICQ"]);
			this.txtRegTime.Text = Convert.ToString(rowview["RegTime"]);
			this.txtIP.Text = Convert.ToString(rowview["IP"]);
            mycon.Close();
		}
    }
	protected void btnUpdate_Click(object sender, EventArgs e)
	{
		SqlData da = new SqlData();
		string com = "update tb_Visitor set VisitorName='" + this.txtName.Text + "',PassWord='" + this.txtOKpwd.Text + "'"
		+ ",Sex='" + this.DropDownList1.SelectedValue + "',ReallyName='" + this.txtRealName.Text + "'"
		+ ",Birthday='" + this.txtBirthday.Text + "',Email='" + this.txtEmail.Text + "',HomePhone='" + this.txtHphone.Text + "'"
		+ ",MobilePhone='" + this.txtMphone.Text + "',PostCode='" + this.txtPostCode.Text + "',QQ='" + this.txtQQ.Text + "'"
		+ ",ICQ='" + this.txtICQ.Text + "',Address='" + this.txtAddress.Text + "',Answer='" + this.txtAns.Text + "',Question='" + this.txtQues.Text + "'"
		+ " where VisitorID='" + Request["ID"] + "'";
		bool add = da.ExceSQL(com);
		if (add == true)
		{
			Response.Write("<script language=javascript>alert('修改成功!');location='VisitorManage.aspx'</script>");
		}
		else
		{
			Response.Write("<script language=javascript>alert('修改失败！');location='javascript:history.go(-1)'</script>");
		}
	}
    protected void txtBack_Click(object sender, EventArgs e)
    {
        Response.Redirect("VisitorManage.aspx");
    }
}
