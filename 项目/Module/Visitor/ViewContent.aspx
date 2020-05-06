<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ViewContent.aspx.cs" Inherits="Module_Blog_ReplayContent" %>

<%@ Register Src="Footer.ascx" TagName="Footer" TagPrefix="uc3" %>

<%@ Register Src="VisitorHeader.ascx" TagName="VisitorHeader" TagPrefix="uc2" %>

<%@ Register Src="../../UseControls/MainControls/FeedBack.ascx" TagName="FeedBack"
    TagPrefix="uc1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>查看文章</title>
            <link href="../../CSS/StyleSheet.css" rel="stylesheet" type="text/css" />
</head>
<body style="margin-top: 0px; padding-top: 0px; text-align: center;";  background="../../Images/skin/background4.png">
    <form id="form1" runat="server">
    <div style="text-align: center; margin-top: 0px; padding-top: 0px;">
        <table align="center"; table style="width: 755px; height: 340px; vertical-align: top; text-align: center;" cellpadding="0" cellspacing="0">
            <tr>
                <td style="height: 9px; width: 723px; text-align: center;" colspan="3">
                    <uc2:VisitorHeader ID="VisitorHeader1" runat="server" />
                </td>
            </tr>
            <tr>
                <td colspan="3" style="height: 492px; width: 723px; text-align: center; background-image: url(../../Images/skin/bg.jpg); background-position-x: center; background-repeat: no-repeat;">
                    <table style="width: 655px; height: 305px" cellpadding="0" cellspacing="0">
                        <tr>
                            <td style="width: 424px; height: 20px">
                            </td>
                            <td colspan="2" style="width: 679px; height: 20px; text-align: left">
                            </td>
                        </tr>
                        <tr>
                            <td style="width: 424px">
                                <span style="font-size: 9pt">主题:</span></td>
                            <td colspan="2" style="text-align: left; width: 679px;">
                                <asp:Label ID="labSubject" runat="server" Width="200px" Font-Size="9pt" ></asp:Label></td>
                        </tr>
                        <tr>
                            <td rowspan="2" style="height: 21px; width: 424px;">
                                <span style="font-size: 9pt">内容:</span></td>
                            <td colspan="2" rowspan="2" style="height: 21px; width: 679px; text-align: left; vertical-align: top;">
                                <table style="border-right: black thin solid; border-top: black thin solid; border-left: black thin solid;
                                    width: 573px; border-bottom: black thin solid" cellpadding="0" cellspacing="0">
                                    <tr>
                                        <td colspan="3" rowspan="3" style="height: 267px">
                                <asp:Label ID="labContent" runat="server" Height="265px" Width="570px" Font-Size="9pt"></asp:Label></td>
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
                            <td rowspan="1" style="width: 424px; height: 21px">
                            </td>
                            <td colspan="2" rowspan="1" style="width: 679px; height: 21px">
                            </td>
                        </tr>
                        <tr>
                            <td rowspan="1" style="width: 424px; height: 21px">
                            </td>
                            <td colspan="2" rowspan="1" style="width: 679px; height: 21px">
                                <uc1:FeedBack ID="FeedBack1" runat="server" />
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr>
                <td colspan="3" style="width: 723px">
                    <uc3:Footer ID="Footer1" runat="server" />
                </td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
