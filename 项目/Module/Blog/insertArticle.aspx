<%@ Page Language="C#" AutoEventWireup="true" CodeFile="insertArticle.aspx.cs" Inherits="Module_Blog_AddPhoto" %>

<%@ Register Src="Footer.ascx" TagName="Footer" TagPrefix="uc2" %>

<%@ Register Src="BlogHeader.ascx" TagName="BlogHeader" TagPrefix="uc1" %>


<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>导入文章</title>
    <link href="../../CSS/StyleSheet.css" rel="stylesheet" type="text/css" />
</head>
<body style="margin-top: 0px; padding-top: 0px"; background="../../Images/skin/background7.jpg">
    <form id="form1" runat="server">
        <div align="center">
            <table style="width: 755px" cellpadding="0" cellspacing="0">
                <tr>
                    <td colspan="3" style="height: 128px">
                        <uc1:BlogHeader ID="BlogHeader1" runat="server"></uc1:BlogHeader>
                    </td>
                </tr>
                <tr>
                    <td colspan="3" style="height: 241px; background-image: url(../../Images/skin/bg.jpg);">
                        <table style="width: 475px; height: 60px">
                            <tr>
                                <td colspan="5" style="text-align: center">
                                    <strong><span style="color: #993300">添加文章</span></strong></td>
                            </tr>
                            <tr>
                                <td style="width: 86px">
                                    <span style="font-size: 9pt">文章主题:</span></td>
                                <td colspan="4">
                                    <asp:TextBox ID="txtSubject" runat="server" Width="225px" Font-Size="9pt"></asp:TextBox></td>
                            </tr>
                            <tr>
                                <td style="width: 86px">
                                    <span style="font-size: 9pt">上传文章:</span></td>
                                <td colspan="4">
                                    <asp:FileUpload ID="fileUp" runat="server" Font-Size="9pt" Width="231px" /></td>
                            </tr>
                            <tr>
                                <td style="width: 86px"></td>
                                <td colspan="4">
                                    <asp:Button ID="btnOK" runat="server" Font-Size="9pt" Text="确定" OnClick="btnOK_Click" />
                                    <asp:Button ID="btnCancle" runat="server" Font-Size="9pt" Text="取消" OnClick="btnCancle_Click" /></td>
                            </tr>
                        </table>
                    </td>
                </tr>
                <tr>
                    <td colspan="3" style="height: 87px">
                        <uc2:Footer ID="Footer1" runat="server" />
                    </td>
                </tr>
            </table>

        </div>
    </form>
</body>
</html>
