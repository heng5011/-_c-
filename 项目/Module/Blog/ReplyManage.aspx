<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ReplyManage.aspx.cs" Inherits="Module_Blog_Revert" %>

<%@ Register Src="../../UseControls/MainControls/Reply.ascx" TagName="Reply" TagPrefix="uc2" %>
<%@ Register Src="Footer.ascx" TagName="Footer" TagPrefix="uc3" %>

<%@ Register Src="BlogHeader.ascx" TagName="BlogHeader" TagPrefix="uc1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>回复管理</title>
            <link href="../../CSS/StyleSheet.css" rel="stylesheet" type="text/css" />
</head>
<body style="margin-top: 0px; padding-top: 0px"; background="../../Images/skin/background7.jpg">
    <form id="form1" runat="server">
    <div>
        <table align="center"; style="width: 755px" cellpadding="0" cellspacing="0">
            <tr>
                <td colspan="3" style="height: 99px; width: 734px; text-align: center;">
                    <uc1:BlogHeader id="BlogHeader1" runat="server">
                    </uc1:BlogHeader></td>
            </tr>
            <tr>
                <td colspan="3" rowspan="2" style="vertical-align: top; text-align: center; width: 734px; height: 365px; background-image: url(../../Images/skin/bg.jpg);">
                    <table style="width: 228px">
                        <tr>
                            <td style="height: 15px">
                            </td>
                            <td style="height: 15px">
                            </td>
                            <td style="height: 15px">
                            </td>
                        </tr>
                        <tr>
                            <td colspan="3" rowspan="2">
                    <uc2:Reply ID="Reply1" runat="server" />
                            </td>
                        </tr>
                        <tr>
                        </tr>
                    </table>
                    <br />
                </td>
            </tr>
            <tr>
            </tr>
            <tr>
                <td colspan="3" rowspan="1" style="text-align: center; width: 734px; height: 62px;">
                    <uc3:Footer ID="Footer1" runat="server" />
                </td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
