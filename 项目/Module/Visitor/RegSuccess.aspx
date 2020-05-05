<%@ Page Language="C#" AutoEventWireup="true" CodeFile="RegSuccess.aspx.cs" Inherits="Module_Visitor_RegSuccess" %>

<%@ Register Src="Footer.ascx" TagName="Footer" TagPrefix="uc2" %>

<%@ Register Src="VisitorHeader.ascx" TagName="VisitorHeader" TagPrefix="uc1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>无标题页</title>
</head>
<body style="margin-top: 0px; padding-top: 0px";  background="../../Images/skin/background4.png">
    <form id="form1" runat="server">
    <div style="text-align: center">
        <table align="center"; table style="width: 755px; vertical-align: top; text-align: center;" cellpadding="0" cellspacing="0">
            <tr>
                <td colspan="3">
                    <uc1:VisitorHeader ID="VisitorHeader1" runat="server" />
                </td>
            </tr>
            <tr>
                <td colspan="3" style="height: 216px">
                    <table style="border-right: black thin solid; border-top: black thin solid; border-left: black thin solid;
                        width: 392px; border-bottom: black thin solid" cellpadding="0" cellspacing="0">
                        <tr>
                            <td colspan="5" rowspan="2" style="height: 20px; text-align: center">
                                <span style="color: #993300; font-family: 宋体"><strong>访客注册信息</strong></span></td>
                        </tr>
                        <tr style="font-family: 宋体">
                        </tr>
                        <tr style="font-family: 宋体">
                            <td style="width: 130px; height: 21px; text-align: center">
                                <span style="font-size: 9pt">用户名:</span></td>
                            <td colspan="2" style="width: 7px; height: 21px; text-align: left">
                                <asp:TextBox ID="txtName" runat="server" ReadOnly="True" Width="115px"></asp:TextBox></td>
                            <td colspan="2" style="width: 80px; height: 21px; text-align: left">
                            </td>
                        </tr>
                        <tr>
                            <td style="width: 130px; height: 21px; text-align: center">
                                <span style="font-size: 9pt">密 &nbsp;&nbsp; 码:</span></td>
                            <td colspan="2" style="font-size: 9pt; width: 7px; height: 21px; text-align: left">
                                <asp:TextBox ID="txtPwd" runat="server" ReadOnly="True" Width="117px"></asp:TextBox></td>
                            <td colspan="2" style="font-size: 9pt; width: 80px; height: 21px; text-align: left">
                            </td>
                        </tr>
                        <tr>
                            <td style="width: 130px; height: 14px; text-align: center">
                                <span style="font-size: 9pt">系统ID:</span></td>
                            <td colspan="3" style="height: 14px; text-align: left">
                                <asp:Label ID="labID" runat="server" Font-Size="9pt" Width="116px"></asp:Label></td>
                            <td colspan="1" style="width: 233px; height: 14px; text-align: left">
                                <span style="font-size: 9pt; color: #ff0000">*此ID号是发表评论时的标识</span></td>
                        </tr>
                        <tr>
                            <td colspan="5" style="height: 21px; text-align: center">
                                <asp:Button ID="btnOK" runat="server" Font-Size="9pt" OnClick="btnOK_Click" Text="确定" /></td>
                        </tr>
                        <tr>
                            <td colspan="5" style="height: 21px; text-align: center">
                                <asp:ValidationSummary ID="ValidationSummary1" runat="server" Font-Size="9pt" />
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr>
                <td colspan="3" style="height: 72px">
                    <uc2:Footer ID="Footer1" runat="server" />
                </td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
