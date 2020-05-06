<%@ Page Language="C#" AutoEventWireup="true" CodeFile="VisitorManage.aspx.cs" Inherits="Module_Blog_VisitorManage" %>

<%@ Register Src="AdminHeader.ascx" TagName="AdminHeader" TagPrefix="uc2" %>

<%@ Register Src="Footer.ascx" TagName="Footer" TagPrefix="uc1" %>


<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>访客管理</title>
            <link href="../../CSS/StyleSheet.css" rel="stylesheet" type="text/css" />
</head>
<body style="margin-top: 0px; padding-top: 0px; text-align: center;" background="../../Images/skin/background5.jpg">
    <form id="form1" runat="server">
    <div>
        <table align="center" style="width: 755px; height: 187px" cellpadding="0" cellspacing="0">
            <tr>
                <td colspan="3" style="width: 754px">
                    <uc2:AdminHeader ID="AdminHeader1" runat="server" />
                </td>
            </tr>
            <tr>
                <td colspan="3" style="width: 754px; height: 477px; text-align: center; background-image: url(../../Images/skin/bg.jpg);">
                    <span style="color: #993300">
                        <table style="width: 478px;" cellpadding="0" cellspacing="0">
                            <tr>
                                <td colspan="3" style="height: 21px; text-align: center">
                                    <span style="font-size: 12pt"><strong>
                                    访客注册管理</strong></span></td>
                            </tr>
                            <tr>
                                <td rowspan="2" style="text-align: center; height: 208px; vertical-align: top;" colspan="3">
                                    <table style="width: 510px" cellpadding="0" cellspacing="0">
                                        <tr>
                                            <td style="width: 114px; height: 13px">
                                                <span style="font-size: 9pt; color: #000000">查询条件</span></td>
                                            <td style="width: 92px; height: 13px">
                                                <asp:DropDownList ID="ddlSearch" runat="server" Width="114px" Font-Size="9pt">
                                                    <asp:ListItem Selected="True">游客ID</asp:ListItem>
                                                    <asp:ListItem>游客姓名</asp:ListItem>
                                                    <asp:ListItem>QQ</asp:ListItem>
                                                </asp:DropDownList></td>
                                            <td style="width: 115px; height: 13px">
                                                <span style="font-size: 9pt; color: #000000; text-decoration: none;">关键字</span></td>
                                            <td style="width: 142px; height: 13px">
                                                <asp:TextBox ID="txtKey" runat="server" Width="67px" Font-Size="9pt"></asp:TextBox></td>
                                            <td style="width: 67px; height: 13px">
                                                <asp:Button ID="btnSearch" runat="server" OnClick="btnSearch_Click" Text="查找" Font-Size="9pt" /></td>
                                            <td style="width: 111px; height: 13px">
                                            </td>
                                        </tr>
                                        <tr>
                                            <td colspan="6" rowspan="2" style="height: 95px; vertical-align: top; text-align: center;">
                                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" Font-Bold="False"
                                        Width="500px" CellPadding="4" Font-Size="9pt" ForeColor="#333333" GridLines="None" AllowPaging="True" OnRowDeleting="GridView1_RowDeleting" OnPageIndexChanging="GridView1_PageIndexChanging" OnRowDataBound="GridView1_RowDataBound">
                                        <Columns>
                                            <asp:BoundField HeaderText="游客ID" DataField="VisitorID" />
                                            <asp:BoundField HeaderText="游客姓名" DataField="VisitorName" />
                                            <asp:BoundField HeaderText="游客性别" DataField="Sex" />
                                            <asp:BoundField HeaderText="QQ" DataField="QQ" />
                                            <asp:HyperLinkField DataNavigateUrlFields="VisitorID" DataNavigateUrlFormatString="VisitorInfo.aspx?id={0}"
                                                HeaderText="详细信息" Text="详细信息" />
                                            <asp:CommandField HeaderText="删除" ShowDeleteButton="True" />
                                        </Columns>
                                        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
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
                                </td>
                            </tr>
                            <tr>
                            </tr>
                        </table>
                    </span>
                </td>
            </tr>
            <tr>
                <td colspan="3" style="width: 754px; height: 40px; text-align: center">
                    <uc1:Footer ID="Footer1" runat="server" />
                </td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
