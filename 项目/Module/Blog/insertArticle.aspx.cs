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
using System.Data.OleDb;

public partial class Module_Blog_AddPhoto : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["UserName"] == null)
        {
            Response.Redirect("../../Index.aspx");
        }
    }
    protected void btnOK_Click(object sender, EventArgs e)
    {
        try
        {
            string pathc = Server.MapPath("~/excel/");
            //string pathc = Server.MapPath("excel");
            string excelpath = System.IO.Path.GetExtension(fileUp.FileName).ToLower();
            fileUp.PostedFile.SaveAs(pathc + fileUp.FileName);
            Session["txt"] = fileUp.FileName;
            string path = Server.MapPath("~/excel/") + Session["txt"].ToString();
            //string path = Server.MapPath("excel") + Session["txt"].ToString();
            string constring = @"Provider=Microsoft.Jet.OLEDB.4.0;Data Source=" + path + "; Extended Properties=Excel 8.0;";
            OleDbConnection con = new OleDbConnection(constring);
            //OleDbDataAdapter da = new OleDbDataAdapter("select * from [A$]", con);
            OleDbDataAdapter da = new OleDbDataAdapter("select * from [tb_Article$]", con);
            DataSet ds = new DataSet();
            //DataSet ds1 = new DataSet();
            da.Fill(ds);
            //da1.Fill(ds1);
            for (int i = 0; i < ds.Tables[0].Rows.Count; i++)
            {
                //string articleID = ds.Tables[0].Rows[i][1].ToString();
                string autor = ds.Tables[0].Rows[i][1].ToString();
                string subject = ds.Tables[0].Rows[i][2].ToString();
                string content = ds.Tables[0].Rows[i][3].ToString();
                string blogID = ds.Tables[0].Rows[i][4].ToString();
                string time = ds.Tables[0].Rows[i][5].ToString();
                string num = ds.Tables[0].Rows[i][6].ToString();
                
                SqlConnection mycon = new SqlConnection(ConfigurationManager.AppSettings["conStr"]);
                string sqlin = "insert into Article_1 values('" + autor + "','" + subject + "','" + content + "','" + blogID + "','" + time + "','" + num + "')";
                string sqlin_1 = "insert into tb_Article values('" + autor + "','" + subject + "','" + content + "','" + blogID + "','" + time + "','" + num + "')";
                SqlCommand com = new SqlCommand(sqlin, mycon);
                SqlCommand com_1 = new SqlCommand(sqlin_1, mycon);
                mycon.Open();
                com.ExecuteNonQuery();
                com_1.ExecuteNonQuery();
                ClientScript.RegisterStartupScript(this.GetType(), "", "<script>alert('恭喜您，添加成功！');</script>");
                mycon.Close();
                mycon.Dispose();
            }
        }
        catch (Exception ey)
        {
            ClientScript.RegisterStartupScript(this.GetType(), "", "<script>alert('请正确选择excel文件！');</script>");
        }
    }
    protected void btnCancle_Click(object sender, EventArgs e)
    {
        Response.Redirect("insertArticleManage.aspx");
    }
}
