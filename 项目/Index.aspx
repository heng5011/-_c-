<%@ Page Language="C#" AutoEventWireup="true"  CodeFile="Index.aspx.cs" Inherits="_Default" %>

<%@ Register Src="Footer.ascx" TagName="Footer" TagPrefix="uc2" %>

<%@ Register Src="Header.ascx" TagName="Header" TagPrefix="uc1" %>

<%@ Register Src="UseControls/LeftContorls/Left.ascx" TagName="Left" TagPrefix="uc9" %>

<%@ Register Src="UseControls/LeftContorls/NewRevert2.ascx" TagName="NewRevert2"
    TagPrefix="uc7" %>

<%@ Register Src="UseControls/MainControls/SystemNotice.ascx" TagName="SystemNotice"
    TagPrefix="uc11" %>

<%@ Register Src="UseControls/LeftContorls/Calendar.ascx" TagName="Calendar" TagPrefix="uc4" %>
<%@ Register Src="UseControls/MainControls/Reply.ascx" TagName="Reply" TagPrefix="uc5" %>
<%@ Register Src="UseControls/LeftContorls/NewReview.ascx" TagName="NewReview" TagPrefix="uc6" %>
<%@ Register Src="UseControls/LeftContorls/Href.ascx" TagName="Href" TagPrefix="uc8" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>微博主页</title>
    <link href="CSS/StyleSheet.css" rel="stylesheet" type="text/css" />
    <style type="text/css">
        .style10
        {
            width: 1000px;
            height: 916px;
        }
    </style>
</head>
<body style="margin-top: 0px; padding-top: 0px; text-align: center;"  background="../../Images/skin/background2.png">
    <form id="form1" runat="server">
        <table cellpadding="0" cellspacing="0" style="width: 1500px" class="style10">
            <tr>
                <td colspan="3" style="vertical-align: bottom; height: 6px">
                    <uc1:Header ID="Header1" runat="server" />
                </td>
            </tr>
            <tr>
                <td style="width: 500px; vertical-align: top; text-align: center; height: 500px;">
                    <uc9:Left ID="Left1" runat="server" />
                </td>
                <td colspan="2" style="vertical-align: top; height: 500px; text-align: center; width: 584px;">
                    <uc11:SystemNotice ID="SystemNotice1" runat="server" />
                </td>
            </tr>
            <tr>
                <td colspan="3">
                    <uc2:Footer ID="Footer1" runat="server" />
                </td>
            </tr>
        </table>
    </form>
</body>
</html>

