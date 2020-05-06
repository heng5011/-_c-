<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AmendLink.aspx.cs" Inherits="Module_Blog_AmendLink" %>

<%@ Register Src="Footer.ascx" TagName="Footer" TagPrefix="uc2" %>

<%@ Register Src="AdminHeader.ascx" TagName="AdminHeader" TagPrefix="uc1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>修改链接</title>
    <link href="../../CSS/StyleSheet.css" rel="stylesheet" type="text/css" />
</head>
<body style="margin-top: 0px; padding-top: 0px"; background="../../Images/skin/background5.jpg">
    <form id="form1" runat="server">
    <div style="text-align: center">
        <table align="center"; table style="width: 755px; height: 288px;" border="1" cellpadding="0" cellspacing="0">
            <tr>
                <td colspan="2" style="height: 166px">
                    <uc1:AdminHeader ID="AdminHeader1" runat="server" />
                </td>
            </tr>
            <tr>
                <td colspan="2" rowspan="1" style="vertical-align: middle; height: 477px; text-align: center; background-image: url(../../Images/skin/bg.jpg);">
                    <table style="width: 527px">
                        <tr>
                            <td colspan="3">
                                <strong><span style="color: #993300">修改链接</span></strong></td>
                        </tr>
                        <tr>
                            <td style="width: 117px; text-align: right">
                                <span style="font-size: 9pt">网站名称:</span></td>
                            <td colspan="2" style="width: 304px">
                                <asp:TextBox ID="txtName" runat="server" Width="251px"></asp:TextBox></td>
                        </tr>
                        <tr>
                            <td style="width: 117px; height: 21px; text-align: right">
                                <span style="font-size: 9pt">链接地址:</span></td>
                            <td colspan="2" style="height: 21px; width: 304px;">
                                <asp:TextBox ID="txtUrl" runat="server" Width="251px"></asp:TextBox></td>
                        </tr>
                        <tr>
                            <td colspan="3" style="height: 21px">
                                <asp:Button ID="btnAmend" runat="server" OnClick="btnAmend_Click" Text="修改" Font-Size="9pt" />
                                <asp:Button ID="btnCancle" runat="server" OnClick="btnCancle_Click" Text="取消" Font-Size="9pt" /></td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr>
                <td colspan="2" style="height: 56px; text-align: center">
                    <uc2:Footer ID="Footer1" runat="server" />
                </td>
            </tr>
            </table>
    
    </div>
    </form>
</body>
</html>
