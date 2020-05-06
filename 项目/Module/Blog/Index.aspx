<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Index.aspx.cs" Inherits="Module_Blog_Index" %>

<%@ Register Src="Footer.ascx" TagName="Footer" TagPrefix="uc4" %>

<%@ Register Src="BlogHeader.ascx" TagName="BlogHeader" TagPrefix="uc2" %>

<%@ Register Src="../../UseControls/LeftContorls/Left.ascx" TagName="Left" TagPrefix="uc9" %>

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
    <title>微博主页</title>
            <link href="../../CSS/StyleSheet.css" rel="stylesheet" type="text/css" />
    <style type="text/css">
        .auto-style1 {
            width: 300px;
        }
    </style>
</head>
<body style="margin-top: 0px; padding-top: 0px"; background="../../Images/skin/background7.jpg">
    <form id="form1" runat="server">
    <div align="center">
        
        <table style="width: 755px; height: 447px" cellpadding="0" cellspacing="0"class="auto-style1">
            <tr>
                <td colspan="3" style="height: 132px; background-color: #0099FF;">
                    <uc2:BlogHeader id="BlogHeader1" runat="server">
                    </uc2:BlogHeader></td>
            </tr>
            <tr>
                <td style="width: 185px; vertical-align: top; text-align: center; height: 450px;">
                    <uc9:Left ID="Left1" runat="server" />
                </td>
            </tr>
            <tr>
                <td colspan="3" rowspan="1" style="vertical-align: top; text-align: center; height: 459px; background-image: url(../../Images/skin/bg.jpg);">
                    <table class="auto-style1">
                        <tr>
                            <td style="height: 18px">
                            </td>
                            <td style="height: 18px">
                            </td>
                            <td style="height: 18px">
                            </td>
                        </tr>
                        <tr>
                            <td colspan="3">
                    <uc10:ViewArticle id="ViewArticle1" runat="server">
                    </uc10:ViewArticle>
                            </td>
                        </tr>
                        </table>
                </td>
            </tr>
            <tr>
                <td colspan="3" style="height: 75px">
                    <uc4:Footer ID="Footer1" runat="server" />
                </td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
