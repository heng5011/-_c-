<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ViewContent3.aspx.cs" Inherits="Module_Blog_ReplayContent" %>

<%@ Register Src="Footer.ascx" TagName="Footer" TagPrefix="uc3" %>

<%@ Register Src="BlogHeader.ascx" TagName="BlogHeader" TagPrefix="uc7" %>

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
                <td colspan="3" style="width: 689px; text-align: center;">
                    <uc7:BlogHeader id="BlogHeader1" runat="server">
                    </uc7:BlogHeader></td>
            </tr>
            <tr>
                <td colspan="3" style="height: 146px; width: 689px; text-align: center; background-image: url(../../Images/skin/bg.jpg);">
                    <table style="width: 700px; height: 305px" cellpadding="0" cellspacing="0">
                        <tr>
                            <td colspan="2" style="width: 100px; height: 20px">
                            </td>
                            <td colspan="2" style="width: 600px; height: 20px; text-align: left">
                            </td>
                        </tr>
                        <tr>
                            <td style="width: 100px" colspan="2">
                                <span style="font-size: 9pt">主题:</span></td>
                            <td colspan="2" style="text-align: left; width: 600px;">
                                <asp:Label ID="labSubject" runat="server" Width="426px" Font-Size="9pt" ></asp:Label></td>
                        </tr>
                        <tr>
                            <td rowspan="2" style="height: 21px" colspan="2">
                                &nbsp;<span style="font-size: 9pt">内容:</span></td>
                            <td colspan="2" rowspan="2" style="height: 21px; text-align: left; vertical-align: top;">
                                <table style="border-right: black thin solid; border-top: black thin solid; border-left: black thin solid;
                                    width: 355px; border-bottom: black thin solid">
                                    <tr>
                                        <td colspan="3" rowspan="3" style="height: 262px">
                                <asp:Label ID="labContent" runat="server" Height="322px" Width="574px" Font-Size="9pt"></asp:Label></td>
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
                    </table>
                </td>
            </tr>
            <tr>
                <td colspan="3" style="width: 689px; height: 38px; text-align: center;">
                    <uc3:Footer ID="Footer1" runat="server" />
                </td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
