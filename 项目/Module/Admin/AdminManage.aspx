<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AdminManage.aspx.cs" Inherits="Module_Admin_Append" %>

<%@ Register Src="Footer.ascx" TagName="Footer" TagPrefix="uc2" %>

<%@ Register Src="AdminHeader.ascx" TagName="AdminHeader" TagPrefix="uc1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>管理员管理</title>
    <link href="../../CSS/StyleSheet.css" rel=stylesheet type="text/css" />
</head>
<body style="font-size: 12pt; margin-top: 0px; padding-top: 0px;" background="../../Images/skin/background5.jpg">
    <form id="form1" runat="server">
    <div align="center">
        <table style="width: 755px; height: 441px" cellpadding="0" cellspacing="0">
            <tr>
                <td colspan="3" style="height: 94px; width: 772px;">
                    <uc1:AdminHeader ID="AdminHeader1" runat="server" />
                </td>
            </tr>
            <tr>
                <td colspan="3" 
                    style="height: 477px; background-image: url(../../Images/skin/bg.jpg); width: 772px; vertical-align: middle; text-align: center;">
                    <table style="left: 0px; width: 546px" cellpadding="0" cellspacing="0">
                        <tr>
                            <td colspan="1" style="width: 112px; height: 31px; text-align: center">
                            </td>
                            <td colspan="3" style="height: 31px; text-align: center; width: 530px;">
                                <span style="color: #993300; font-size: 12pt;"><strong>管理员信息</strong></span></td>
                            <td colspan="1" style="width: 112px; height: 31px; text-align: center">
                            </td>
                        </tr>
                        <tr>
                            <td colspan="1" style="vertical-align: top; height: 203px; text-align: center">
                            </td>
                            <td colspan="3" style="height: 203px; vertical-align: top; text-align: center;">
                                <table style="width: 510px" cellpadding="0" cellspacing="0">
                                    <tr>
                                        <td style="width: 114px; height: 2px">
                                            <span style="font-size: 9pt">查询条件</span></td>
                                        <td style="width: 92px; height: 2px">
                                            <asp:DropDownList ID="ddlSearch" runat="server" Width="114px" Font-Size="9pt">
                                                <asp:ListItem Selected="True">管理员ID</asp:ListItem>
                                                <asp:ListItem>用户名</asp:ListItem>
                                                <asp:ListItem>QQ</asp:ListItem>
                                            </asp:DropDownList></td>
                                        <td style="width: 115px; height: 2px">
                                            <span style="font-size: 9pt">关键字</span></td>
                                        <td style="width: 142px; height: 2px">
                                            <asp:TextBox ID="txtKey" runat="server" Width="81px" Font-Size="9pt"></asp:TextBox></td>
                                        <td style="width: 54px; height: 2px">
                                            <asp:Button ID="btnSearch" runat="server" Text="查找" OnClick="btnSearch_Click" Font-Size="9pt" /></td>
                                        <td style="width: 111px; height: 2px">
                                            <asp:LinkButton ID="lnkbtnAdd" runat="server" Font-Size="9pt" PostBackUrl="~/Module/Admin/Register.aspx" Font-Underline="False" ForeColor="Blue">添加管理员</asp:LinkButton></td>
                                    </tr>
                                    <tr>
                                        <td colspan="6" style="height: 166px; vertical-align: top; text-align: center;">
                                <asp:GridView ID="gvAdmin" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None" AutoGenerateColumns="False" Font-Size="9pt" Width="500px" AllowPaging="True" OnPageIndexChanging="GridView1_PageIndexChanging" OnRowDeleting="GridView1_RowDeleting" Font-Bold="False" OnRowDataBound="gvAdmin_RowDataBound">
                                    <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                                    <Columns>
                                        <asp:BoundField HeaderText="管理员ID" DataField="ID" />
                                        <asp:BoundField HeaderText="用户名" DataField="UserName" />
                                        <asp:BoundField HeaderText="管理员性别" DataField="Sex" />
                                        <asp:BoundField HeaderText="QQ" DataField="QQ" />
                                        <asp:BoundField HeaderText="注册时间" DataField="RegTime" />
                                        <asp:HyperLinkField DataNavigateUrlFields="ID" DataNavigateUrlFormatString="AdminInfo.aspx?ID={0}"
                                            HeaderText="详细信息" Text="详细信息" />
                                        <asp:CommandField ShowDeleteButton="True" HeaderText="删除" />
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
                            <td colspan="1" style="vertical-align: top; height: 203px; text-align: center">
                            </td>
                        </tr>
                        </table>
                </td>
            </tr>
            <tr>
                <td colspan="3" style="height: 55px; width: 772px;">
                    <uc2:Footer ID="Footer1" runat="server" />
                </td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
