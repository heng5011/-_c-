<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Index.aspx.cs" Inherits="Module_Blog_Index" %>

<%@ Register Src="Footer.ascx" TagName="Footer" TagPrefix="uc4" %>

<%@ Register Src="VisitorHeader.ascx" TagName="VisitorHeader" TagPrefix="uc2" %>



<%@ Register Src="../../UseControls/LeftContorls/Left.ascx" TagName="Left" TagPrefix="uc12" %>


<%@ Register Src="../../UseControls/LeftContorls/NewRevert2.ascx" TagName="NewRevert2"
    TagPrefix="uc11" %>

<%@ Register Src="../../UseControls/MainControls/ViewContent2.ascx" TagName="ViewContent2"
    TagPrefix="uc7" %>

<%@ Register Src="../../UseControls/MainControls/ViewArticle.ascx" TagName="ViewArticle"
    TagPrefix="uc10" %>

<%@ Register Src="../../UseControls/LeftContorls/Calendar.ascx" TagName="Calendar"
    TagPrefix="uc3" %>
<%@ Register Src="../../UseControls/LeftContorls/NewReview.ascx" TagName="NewReview"
    TagPrefix="uc5" %>
<%@ Register Src="../../UseControls/LeftContorls/Href.ascx" TagName="Href" TagPrefix="uc6" %>

<%@ Register Src="../../UseControls/MainControls/Reply.ascx" TagName="Reply" TagPrefix="uc1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>访客查看</title>
            <link href="../../CSS/StyleSheet.css" rel="stylesheet" type="text/css" />
    <style type="text/css">
        .auto-style4 {
            width: 755px;
            height: 532px;
        }
    </style>
</head>
<body style="margin-top: 0px; padding-top: 0px";  background="../../Images/skin/background4.png">
    <form id="form1" runat="server">
    <div align="center">
        <table style="vertical-align: top; text-align: center;" cellpadding="0" cellspacing="0" class="auto-style4">
            <tr>
                <td colspan="3" 
                    style="height: 3px; vertical-align: top; width: 273px; text-align: center; background-color: #0099FF;">
                    <uc2:VisitorHeader ID="VisitorHeader1" runat="server" />
                </td>
            </tr>
            <tr>
                <td style="width: 273px; height: 477px; text-align: center; vertical-align: top;">
                    <uc12:Left ID="Left1" runat="server" />
                </td>
                <td colspan="2" rowspan="1" style="width: 570px; text-align: center; vertical-align: top; height: 477px;">
                    <uc7:ViewContent2 ID="ViewContent2_1" runat="server" />
                    </td>
            </tr>
            <tr>
                <td colspan="3" rowspan="1" style="vertical-align: top; height: 47px; text-align: center">
                    <uc4:Footer ID="Footer1" runat="server" />
                </td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
