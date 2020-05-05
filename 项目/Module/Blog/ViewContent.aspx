<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ViewContent.aspx.cs" Inherits="Module_Blog_ReplayContent" %>

<%@ Register Src="Footer.ascx" TagName="Footer" TagPrefix="uc4" %>

<%@ Register Src="BlogHeader.ascx" TagName="BlogHeader" TagPrefix="uc3" %>

<%@ Register Src="../../UseControls/MainControls/Reply.ascx" TagName="Reply" TagPrefix="uc2" %>

<%@ Register Src="../../UseControls/MainControls/FeedBack.ascx" TagName="FeedBack"
    TagPrefix="uc1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>查看文章</title>
            <link href="../../CSS/StyleSheet.css" rel="stylesheet" type="text/css" />
</head>
<body style="margin-top: 0px; padding-top: 0px"; background="../../Images/skin/background7.jpg">
    <form id="form1" runat="server">
    <div style="text-align: center">
        <table align="center"; table style="width: 755px; height: 340px" cellpadding="0" cellspacing="0">
            <tr>
                <td colspan="3" style="width: 696px; text-align: center;">
                    <uc3:BlogHeader id="BlogHeader1" runat="server">
                    </uc3:BlogHeader></td>
            </tr>
            <tr>
                <td colspan="3" style="height: 135px; width: 696px; vertical-align: top; text-align: center; background-image: url(../../Images/Skin/bg.jpg);">
                    <table style="width: 699px; height: 239px" cellpadding="0" cellspacing="0">
                        <tr>
                            <td colspan="2" style="width: 91px; height: 22px">
                            </td>
                            <td colspan="2" style="width: 613px; height: 22px; text-align: left">
                            </td>
                        </tr>
                        <tr>
                            <td style="width: 91px; height: 16px;" colspan="2">
                                <span style="font-size: 9pt">主题:</span></td>
                            <td colspan="2" style="text-align: left; width: 613px; height: 16px;">
                                <asp:Label ID="labSubject" runat="server" Width="316px" Font-Size="9pt" ></asp:Label></td>
                        </tr>
                        <tr>
                            <td colspan="2" rowspan="2" style="width: 91px; height: 15px">
                                <span style="font-size: 9pt">内容:</span></td>
                            <td colspan="2" rowspan="2" style="height: 15px; width: 613px; text-align: left; vertical-align: top;">
                                <table style="border-right: black thin solid; border-top: black thin solid; border-left: black thin solid;
                                    width: 457px; border-bottom: black thin solid; height: 251px;">
                                    <tr>
                                        <td colspan="3" rowspan="3" style="width: 637px; height: 193px;">
                                            <asp:TextBox ID="txtContent" runat="server" Font-Size="9pt" Height="257px" TextMode="MultiLine"
                                                Width="603px"></asp:TextBox></td>
                                    </tr>
                                    <tr>
                                    </tr>
                                    <tr>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                        <tr>
                        </tr>
                        <tr>
                            <td colspan="4" rowspan="1" style="vertical-align: top; height: 15px; text-align: center">
                                <asp:Button ID="btnUpdate" runat="server" Font-Size="9pt" OnClick="btnUpdate_Click"
                                    Text="修改" />
                                <asp:Button ID="btnBack" runat="server" Font-Size="9pt" OnClick="btnBack_Click" Text="返回" /></td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr>
                <td colspan="3" style="width: 696px; text-align: center;">
                    <uc4:Footer ID="Footer1" runat="server" />
                </td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
