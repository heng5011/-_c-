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

public partial class Module_Visitor_RegSuccess : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
		if (!IsPostBack)
		{
			SqlConnection mycon = new SqlConnection(ConfigurationManager.AppSettings["conStr"]);
			SqlDataAdapter mydataadapter = new SqlDataAdapter("select * from tb_Visitor where VisitorName='"+Request["VisitorName"]+"'", mycon);
			DataSet mydataset = new DataSet();
			mydataadapter.Fill(mydataset, "tb_Visitor");
			DataRowView rowview = mydataset.Tables["tb_Visitor"].DefaultView[0];
			this.txtName.Text = Convert.ToString(rowview["VisitorName"]);
			this.txtPwd.Text = Convert.ToString(rowview["PassWord"]);
			this.labID.Text = Convert.ToString(rowview["VisitorID"]);
			mycon.Close();
		}
    }
	protected void btnOK_Click(object sender, EventArgs e)
	{
		Response.Redirect("ViewContent.aspx?ArticleID="+Session["ArticleID"].ToString()+"");
	}
}
