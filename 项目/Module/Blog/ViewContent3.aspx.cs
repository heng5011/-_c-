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

public partial class Module_Blog_ReplayContent : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
	{
		try
		{
			string str;
			string str2 = Page.Request["ArticleID"].ToString();

            SqlConnection mycon = new SqlConnection(ConfigurationManager.AppSettings["conStr"]);
            mycon.Open();
			//此处用来实现将数据绑定到前台
			SqlDataAdapter myada = new SqlDataAdapter("select * from tb_Article where ArticleID='" + str2 + "'", mycon);
			DataSet ds =new DataSet();
			myada.Fill(ds, "tb_Article");
			DataRowView rowview = ds.Tables["tb_Article"].DefaultView[0];
			this.labSubject.Text = rowview["Subject"].ToString();
			this.labContent.Text = rowview["Content"].ToString();
			mycon.Close();
		}
		catch (Exception ex)
		{
			Response.Write(ex.Message);
		}
	}
}
