<%@ Page Language="C#" AutoEventWireup="true" CodeFile="LinkManage.aspx.cs" Inherits="Module_Blog_LinkManage" %>

<%@ Register Src="Footer.ascx" TagName="Footer" TagPrefix="uc2" %>

<%@ Register Src="AdminHeader.ascx" TagName="AdminHeader" TagPrefix="uc1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>链接管理</title>
        <link href="../../CSS/StyleSheet.css" rel="stylesheet" type="text/css" />
</head>
<body style="margin-top: 0px; padding-top: 0px"; background="../../Images/skin/background5.jpg">
    <form id="form1" runat="server">
    <div style="text-align: center">
        <table align="center"; table style="width: 755px; height: 447px" cellpadding="0" cellspacing="0">
            <tr>
                <td colspan="3" style="height: 132px">
                    <uc1:AdminHeader ID="AdminHeader1" runat="server" />
                </td>
            </tr>
            <tr>
                <td colspan="3" style="vertical-align: middle; text-align: center; height: 478px; background-image: url(../../Images/skin/bg.jpg);">
                    <table style="left: 0px; width: 546px; height: 263px;" cellpadding="0" cellspacing="0">
                        <tr>
                            <td colspan="3" style="height: 31px">
                                <span style="color: #993300"><strong>超链接管理</strong></span></td>
                        </tr>
                        <tr>
                            <td colspan="3" rowspan="2" style="height: 205px; vertical-align: top; text-align: center;">
                                <table style="width: 510px; height: 211px;">
                                    <tr>
                                        <td style="width: 114px; height: 10px">
                                            <span style="font-size: 9pt">查询条件</span></td>
                                        <td style="width: 92px; height: 10px">
                                            <asp:DropDownList ID="ddlSearch" runat="server" Font-Size="9pt" Width="114px">
                                                <asp:ListItem Selected="True">地址ID</asp:ListItem>
                                                <asp:ListItem>网站名称</asp:ListItem>
                                                <asp:ListItem>链接网址</asp:ListItem>
                                            </asp:DropDownList></td>
                                        <td style="width: 115px; height: 10px">
                                            <span style="font-size: 9pt">关键字</span></td>
                                        <td style="width: 142px; height: 10px">
                                            <asp:TextBox ID="txtKey" runat="server" Font-Size="9pt" Width="77px"></asp:TextBox></td>
                                        <td style="width: 54px; height: 10px">
                                            <asp:Button ID="btnSearch" runat="server" Font-Size="9pt" OnClick="btnSearch_Click"
                                                Text="查找" /></td>
                                        <td style="width: 111px; height: 10px">
                                            <asp:LinkButton ID="lnkbtnAdd" runat="server" Font-Size="9pt" PostBackUrl="~/Module/Admin/AddLink.aspx" Font-Underline="False" ForeColor="Blue">添加新链接</asp:LinkButton></td>
                                    </tr>
                                    <tr>
                                        <td colspan="6" rowspan="2" style="height: 163px; vertical-align: top; text-align: center;">
                                            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False"
                                                CellPadding="4" Font-Size="9pt" ForeColor="#333333" GridLines="None" OnPageIndexChanging="GridView1_PageIndexChanging"
                                                OnRowDeleting="GridView1_RowDeleting" Width="500px" OnRowDataBound="GridView1_RowDataBound">
                                                <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                                                <Columns>
                                                    <asp:BoundField DataField="HrefID" HeaderText="地址ID" />
                                                    <asp:BoundField DataField="Name" HeaderText="网站名称" />
                                                    <asp:BoundField DataField="Url" HeaderText="链接网址" />
                                                    <asp:HyperLinkField DataNavigateUrlFields="HrefID" DataNavigateUrlFormatString="AmendLink.aspx?ID={0}"
                                                        HeaderText="修改" Text="修改" />
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
                                    <tr>
                                    </tr>
                                </table>
                                &nbsp;&nbsp;</td>
                        </tr>
                        <tr>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr>
                <td colspan="3" style="height: 63px">
                    <uc2:Footer ID="Footer1" runat="server" />
                </td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
