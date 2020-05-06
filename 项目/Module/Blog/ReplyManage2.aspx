<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ReplyManage2.aspx.cs" Inherits="Module_Blog_ReplyManage2" %>

<%@ Register Src="Footer.ascx" TagName="Footer" TagPrefix="uc3" %>

<%@ Register Src="BlogHeader.ascx" TagName="BlogHeader" TagPrefix="uc2" %>

<%@ Register Src="../../UseControls/MainControls/Reply2.ascx" TagName="Reply2" TagPrefix="uc1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server"> 
    <title>回复管理</title>
            <link href="../../CSS/StyleSheet.css" rel="stylesheet" type="text/css" />
<script language="javascript" type="text/javascript">
<!--

function Button1_onclick() {

}

// -->
</script>
</head>
<body style="margin-top: 0px; padding-top: 0px"; background="../../Images/skin/background7.jpg">
    <form id="form1" runat="server">
    <div style="text-align: center">
        <table align="center"; table style="width: 755px" cellpadding="0" cellspacing="0">
            <tr>
                <td colspan="3" style="height: 111px">
                    <uc2:BlogHeader id="BlogHeader1" runat="server">
                    </uc2:BlogHeader></td>
            </tr>
            <tr>
                <td colspan="3" style="vertical-align: top; text-align: center; height: 477px; background-image: url(../../Images/Skin/bg.jpg);">
                    <table style="width: 295px">
                        <tr>
                            <td style="height: 17px">
                            </td>
                            <td style="height: 17px">
                            </td>
                            <td style="height: 17px">
                            </td>
                        </tr>
                        <tr>
                            <td colspan="3" rowspan="2" style="height: 405px">
                    <uc1:Reply2 id="Reply2_1" runat="server">
                    </uc1:Reply2>
                                &nbsp;
                            </td>
                        </tr>
                        <tr>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr>
                <td colspan="3" style="height: 79px">
                    <uc3:Footer ID="Footer1" runat="server" />
                </td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
