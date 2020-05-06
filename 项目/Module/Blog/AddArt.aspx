<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AddArt.aspx.cs" Inherits="Module_Blog_AddArt" %>

<%@ Register Src="Footer.ascx" TagName="Footer" TagPrefix="uc2" %>

<%@ Register Src="BlogHeader.ascx" TagName="BlogHeader" TagPrefix="uc1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>添加文章</title>
        <link href="../../CSS/StyleSheet.css" rel="stylesheet" type="text/css" />
    <style type="text/css">
        .auto-style1 {
            width: 822px;
            height: 722px;
        }
        .auto-style2 {
            height: 118px;
        }
    </style>
</head>
<body style="margin-top: 0px; padding-top: 0px; width: 852px; height: 748px;"; background="../../Images/skin/background7.jpg">
    <form id="form1" runat="server">
    <div align="center"; div style="text-align: center">
        <table align="center"; table align="center"; table cellpadding="0" cellspacing="0" class="auto-style1">
            <tr>
                <td colspan="3" class="auto-style2">
                    <uc1:BlogHeader id="BlogHeader1" runat="server">
                    </uc1:BlogHeader></td>
            </tr>
            <tr>
                <td colspan="3" style="vertical-align: middle; text-align: center; background-image: url(../../Images/skin/bg.jpg); height: 468px;">
                    <table align="center"; table style="width: 533px" cellspacing="0" class="0">
                        <tr>
                            <td style="text-align: right">
                                <span style="font-size: 9pt">文章标题:</span></td>
                            <td colspan="2" style="width: 368px; text-align: left">
                                <asp:TextBox ID="txtSubject" runat="server" Font-Size="9pt" Width="201px"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtSubject"
                                    ErrorMessage="标题不能为空">*</asp:RequiredFieldValidator></td>
                        </tr>
                        <tr>
                            <td style="text-align: right">
                                <span style="font-size: 9pt">作者:</span></td>
                            <td colspan="2" style="width: 368px; text-align: left">
                                <asp:Label ID="Label1" runat="server" Width="152px" Font-Size="9pt"></asp:Label></td>
                        </tr>
                        <tr>
                            <td style="height: 26px; text-align: right">
                                <span style="font-size: 9pt">文章内容:</span></td>
                            <td colspan="2" style="width: 368px; height: 26px">
                                <asp:TextBox ID="txtContent" runat="server" Font-Size="9pt" Height="295px" TextMode="MultiLine"
                                    Width="455px"></asp:TextBox></td>
                        </tr>
                        <tr>
                            <td>
                            </td>
                            <td colspan="2" style="width: 368px">
                                <asp:Button ID="btnAdd" runat="server" Font-Size="9pt" OnClick="btnAdd_Click" Text="添加" />
                                <asp:Button ID="btnCancle" runat="server" Font-Size="9pt" Text="取消" OnClick="btnCancle_Click" CausesValidation="False" /></td>
                        </tr>
                    </table>
                    <asp:ValidationSummary ID="ValidationSummary1" runat="server" Font-Size="9pt" ShowMessageBox="True" />
                </td>
            </tr>
            <tr>
                <td colspan="3" style="text-align: center; height: 101px;">
                    <uc2:Footer ID="Footer1" runat="server" />
                </td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
