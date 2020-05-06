﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="RegPro.aspx.cs" Inherits="Module_Admin_Register" %>

<%@ Register Src="Footer.ascx" TagName="Footer" TagPrefix="uc1" %>

<%@ Register Src="VisitorHeader.ascx" TagName="VisitorHeader" TagPrefix="uc3" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>注册协议</title>
            <link href="../../CSS/StyleSheet.css" rel="stylesheet" type="text/css" />
</head>
<body style="margin-top: 0px; padding-top: 0px; vertical-align: top; text-align: center;">
    <form id="form1" runat="server">
        <table cellpadding="0" cellspacing="0" style="width: 755px">
            <tr>
                <td colspan="3" style="vertical-align: bottom; height: 6px">
                    <uc3:VisitorHeader id="VisitorHeader1" runat="server">
                    </uc3:VisitorHeader>
                </td>
            </tr>
            <tr>
                <td colspan="3" style="background-image: url(../../Images/Skin/bg.jpg); vertical-align: middle;
                    height: 450px; text-align: center">
                    <table style="width: 224px" cellpadding="0" cellspacing="0">
                        <tr>
                            <td style="width: 368px; height: 21px; text-align: center">
                                <strong><span style="color: #993300">用户注册协议</span></strong></td>
                        </tr>
                        <tr>
                            <td rowspan="2" style="width: 368px; height: 302px;">
                                <table align="center" style="border-right: black thin solid; border-top: black thin solid;
                                    border-left: black thin solid; width: 369px; border-bottom: black thin solid">
                                    <tr>
                                        <td colspan="4" rowspan="4" style="height: 15px; text-align: left;">
                                            <span style="font-size: 9pt">
                                            为维护网上公共秩序和社会稳定，请您自觉遵守以下条款：
                                            <br />
                                            <br />
                                            一、不得利用本站危害国家安全、泄露国家秘密，不得侵犯国家社会集体的和公民的合法权益，不得利用本站制作、复制和传播下列信息：
                                            <br />
                                            （一）煽动抗拒、破坏宪法和法律、行政法规实施的；
                                            <br />
                                            （二）煽动颠覆国家政权，推翻社会主义制度的；
                                            <br />
                                            （三）煽动分裂国家、破坏国家统一的；
                                            <br />
                                            （四）煽动民族仇恨、民族歧视，破坏民族团结的；
                                            <br />
                                            （五）捏造或者歪曲事实，散布谣言，扰乱社会秩序的；
                                            <br />
                                            （六）宣扬封建迷信、淫秽、色情、赌博、暴力、凶杀、恐怖、教唆犯罪的；
                                            <br />
                                            （七）公然侮辱他人或者捏造事实诽谤他人的，或者进行其他恶意攻击的；
                                            <br />
                                            （八）损害国家机关信誉的；
                                            <br />
                                            （九）其他违反宪法和法律行政法规的；
                                            <br />
                                            （十）进行商业广告行为的。
                                            <br />
                                            二、互相尊重，对自己的言论和行为负责。 </span>
                                        </td>
                                    </tr>
                                    <tr>
                                    </tr>
                                    <tr>
                                    </tr>
                                    <tr>
                                    </tr>
                                    <tr>
                                        <td colspan="4" rowspan="1" style="height: 8px; text-align: center">
                                            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="同意以上条款" Font-Size="9pt" CausesValidation="False" />&nbsp;
                                            <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="不同意" Font-Size="9pt" CausesValidation="False" /></td>
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
                <td colspan="3">
                    <uc1:Footer ID="Footer1" runat="server" />
                </td>
            </tr>
        </table>
    </form>
</body>
</html>
