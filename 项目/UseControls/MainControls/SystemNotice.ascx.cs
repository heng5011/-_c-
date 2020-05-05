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

public partial class UseControls_MainControls_SystemNotice : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
	protected void lnkbtnLnk_Click(object sender, EventArgs e)
	{
		Page.Response.Redirect("~/Module/Admin/Notice.aspx");
	}
}
