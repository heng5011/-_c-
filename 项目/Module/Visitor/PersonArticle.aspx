<%@ Page Language="C#" AutoEventWireup="true" CodeFile="PersonArticle.aspx.cs" Inherits="Module_Blog_PersonArticle" %>

<%@ Register Src="Footer.ascx" TagName="Footer" TagPrefix="uc2" %>

<%@ Register Src="VisitorHeader.ascx" TagName="VisitorHeader" TagPrefix="uc1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>个人文章</title>
            <link href="../../CSS/StyleSheet.css" rel="stylesheet" type="text/css" />
    <style type="text/css">
        .auto-style1 {
            width: 465px;
        }
        .auto-style2 {
            width: 52px;
        }
    </style>
</head>
<body style="margin-top: 0px; padding-top: 0px" background="../../Images/skin/background4.png">
    <form id="form1" runat="server">
    <div style="text-align: center">
        <table align="center"; table style="width: 755px" cellpadding="0" cellspacing="0">
            <tr>
                <td colspan="3" style="text-align: center">
                    <uc1:VisitorHeader ID="VisitorHeader1" runat="server" />
                </td>
            </tr>
            <tr>
                <td colspan="3" style="background-image: url(../../Images/Skin/bg.jpg)">
                    <asp:DataList ID="DataList1" runat="server" Height="238px" Font-Size="9pt">
                        <ItemTemplate>
                            <table class="auto-style1">
                                <tr>
                                    <td style="width: 35px; text-align: right">
                                        <span style="font-size: 9pt">主 题:</span></td>
                                    <td class="auto-style2">
                                        <asp:Label ID="labSubject" runat="server" Font-Size="9pt" Width="214px" Text='<%# DataBinder.Eval(Container.DataItem,"Subject") %>'></asp:Label></td>
                                    <td colspan="1" style="width: 75px">
                                        <span style="font-size: 9pt"><a href=ViewContent.aspx?ArticleID=<%#DataBinder.Eval(Container.DataItem,"ArticleID") %>>【查看全文】 </a></span></td>
                                </tr>
                            </table>
                        </ItemTemplate>
                    </asp:DataList></td>
            </tr>
            <tr>
                <td colspan="3" style="height: 7px">
                    <uc2:Footer ID="Footer1" runat="server" />
                </td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
