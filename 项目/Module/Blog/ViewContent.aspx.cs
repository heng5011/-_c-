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
        if (!IsPostBack)
        {
            try
            {
                string str;
                string str2 = Page.Request["id"].ToString();

                //此处用来实现将数据绑定到前台

                SqlConnection mycon = new SqlConnection(ConfigurationManager.AppSettings["conStr"]);
                mycon.Open();
                SqlDataAdapter myada = new SqlDataAdapter("select * from tb_Article where ArticleID='" + str2 + "'", mycon);
                DataSet ds = new DataSet();
                myada.Fill(ds, "tb_Article");
                DataRowView rowview = ds.Tables["tb_Article"].DefaultView[0];
                this.labSubject.Text = rowview["Subject"].ToString();
                this.txtContent.Text = rowview["Content"].ToString();
                mycon.Close();
            }
            catch (Exception ex)
            {
                Response.Write(ex.Message);
            }
        }
	}
    protected void btnUpdate_Click(object sender, EventArgs e)
    {
        string id = Request["id"].ToString();
        string Com = "update tb_Article set Content='" + this.txtContent.Text + "' where ArticleID='" + id + "'";
        SqlData da = new SqlData();
        bool update = da.ExceSQL(Com);
        if (update)
        {
            Response.Write("<script language=javascript>alert('修改成功！');location='ArticleManage.aspx'</script>");
        }
        else
        {
            Response.Write("<script language=javascript>alert('修改失败！');</script>");
        }
    }
    protected void btnBack_Click(object sender, EventArgs e)
    {
        Response.Redirect("ArticleManage.aspx");
    }
}
