<%@ Page Language="C#" AutoEventWireup="true" CodeFile="insertArticleManage.aspx.cs" Inherits="Module_Blog_PhotoManage" %>

<%@ Register Src="Footer.ascx" TagName="Footer" TagPrefix="uc1" %>

<%@ Register Src="BlogHeader.ascx" TagName="BlogHeader" TagPrefix="uc2" %>

<%@ Register Src="BlogHeader.ascx" TagName="BlogHeader" TagPrefix="uc3" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>导入文章</title>
    <link href="../../CSS/StyleSheet.css" rel="stylesheet" type="text/css" />
</head>
<body style="margin-top: 0px; padding-top: 0px"; background="../../Images/skin/background7.jpg">
    <form id="form1" runat="server">
        <div style="text-align: center">
            <table align="center"; table style="width: 755px" cellpadding="0" cellspacing="0">
                <tr>
                    <td colspan="3" style="height: 109px; width: 768px;">
                        <uc2:BlogHeader ID="BlogHeader1" runat="server" />
                    </td>
                </tr>
                <tr>
                    <td colspan="3" style="height: 477px; background-image: url(../../Images/skin/bg.jpg); width: 768px; vertical-align: middle; text-align: center;">
                        <table style="left: 0px; width: 546px; vertical-align: top;" cellpadding="0" cellspacing="0">
                            <tr>
                                <td colspan="3" style="height: 31px; width: 582px;">
                                    <span style="color: #993300"><strong>导入文章管理</strong></span></td>
                            </tr>
                            <tr>
                                <td colspan="3" rowspan="2" style="height: 219px; width: 582px;">
                                    <table style="width: 510px">
                                        <tr>
                                            <td style="width: 114px; height: 26px">
                                                <span style="font-size: 9pt">查询条件</span></td>
                                            <td style="width: 92px; height: 26px">
                                                <asp:DropDownList ID="ddlSearch" runat="server" Font-Size="9pt" Width="114px">
                                                    <asp:ListItem>文章ID</asp:ListItem>
                                                    <asp:ListItem>文章主题</asp:ListItem>
                                                </asp:DropDownList></td>
                                            <td style="width: 83px; height: 26px">
                                                <span style="font关键字</span></td>
                                            <td style="width: 142px; height: 26px">
                                                <asp:TextBox ID="txtKey" runat="server" Width="101px" Font-Size="9pt"></asp:TextBox></td>
                                            <td style="width: 54px; height: 26px">
                                                <asp:Button ID="btnSearch" runat="server" Font-Size="9pt"
                                                    Text="查找" OnClick="btnSearch_Click" /></td>
                                            <td style="width: 111px; height: 26px">
                                                <asp:LinkButton ID="lnkbtnAdd" runat="server" Font-Size="9pt" PostBackUrl="~/Module/Blog/insertArticle.aspx" Font-Underline="False" ForeColor="Blue" CausesValidation="False">导入文章</asp:LinkButton></td>
                                        </tr>
                                        <tr>
                                            <td colspan="6" style="height: 156px; vertical-align: top; text-align: center;">
                                                <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False"
                                                    CellPadding="4" Font-Size="9pt" ForeColor="#333333" GridLines="None" Width="500px" OnRowDeleting="GridView1_RowDeleting" OnPageIndexChanging="GridView1_PageIndexChanging" OnRowDataBound="GridView1_RowDataBound">
                                                    <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                                                    <Columns>
                                                        <asp:BoundField DataField="ArticleID" HeaderText="文章ID" />
                                                        <asp:BoundField DataField="Subject" HeaderText="文章主题" />
                                                        <asp:BoundField DataField="Time" HeaderText="写入时间" />
                                                        <asp:HyperLinkField DataNavigateUrlFields="ArticleID" DataNavigateUrlFormatString="ViewContent.aspx?id={0}"
                                                            HeaderText="编辑" Text="编辑" />
                                                        <asp:CommandField HeaderText="删除" ShowDeleteButton="True" />
                                                    </Columns>
                                                    <RowStyle BackColor="#EFF3FB" />
                                                    <EditRowStyle BackColor="#2461BF" />
                                                    <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                                                    <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                                                    <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                                                    <AlternatingRowStyle BackColor="White" />
                                                </asp:GridView>
                                            </td>
                                        </tr>
                                        </table>
                                    &nbsp;&nbsp;</td>
                            </tr>
                            </table>
                    </td>
                </tr>
                <tr>
                    <td colspan="3" style="text-align: center; height: 65px; width: 768px;">
                        <uc1:Footer ID="Footer1" runat="server" />
                    </td>
                </tr>
            </table>

        </div>
    </form>
</body>
</html>
