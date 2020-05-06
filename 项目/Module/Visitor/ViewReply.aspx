<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ViewReply.aspx.cs" Inherits="Module_Visitor_ViewReply" %>

<%@ Register Src="Footer.ascx" TagName="Footer" TagPrefix="uc2" %>

<%@ Register Src="VisitorHeader.ascx" TagName="VisitorHeader" TagPrefix="uc3" %>

<%@ Register Src="../../UseControls/MainControls/Reply3.ascx" TagName="Reply3" TagPrefix="uc1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>查看评论</title>
            <link href="../../CSS/StyleSheet.css" rel="stylesheet" type="text/css" />
</head>
<body style="margin-top: 0px; padding-top: 0px";  background="../../Images/skin/background4.png">
    <form id="form1" runat="server">
    <div>
        <table align="center" style="width: 755px; vertical-align: top; text-align: center;" cellpadding="0" cellspacing="0">
            <tr>
                <td colspan="3" style="height: 10px; text-align: center; width: 755px;">
                    <uc3:VisitorHeader id="VisitorHeader1" runat="server">
                    </uc3:VisitorHeader></td>
            </tr>
            <tr>
                <td style="text-align: center; vertical-align: middle; width: 755px; height: 452px; background-color:darkgray;background-image: url(../../Images/skin/bg.jpg);" colspan="3">
                    <uc1:Reply3 id="Reply3_1" runat="server">
                    </uc1:Reply3>&nbsp;</td>
            </tr>
            <tr>
                <td colspan="3" style="text-align: center; width: 755px;">
                    <uc2:Footer ID="Footer1" runat="server" />
                </td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
