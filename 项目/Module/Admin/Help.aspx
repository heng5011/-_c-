<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Help.aspx.cs" Inherits="Module_Admin_Help" %>

<%@ Register Src="Footer.ascx" TagName="Footer" TagPrefix="uc1" %>

<%@ Register Src="VisitorHeader.ascx" TagName="VisitorHeader" TagPrefix="uc2" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>帮助说明</title>
    <link href="../../CSS/StyleSheet.css" rel="stylesheet" type="text/css" />
</head>
<body style="margin-top: 0px; padding-top: 0px"; >
    <form id="form1" runat="server">
    <div style="text-align: center">
        <table align="center"; table style="width: 755px" cellpadding="0" cellspacing="0">
            <tr>
                <td colspan="3" style="height: 10px; width: 744px;">
                    <uc2:VisitorHeader ID="VisitorHeader1" runat="server" />
                </td>
            </tr>
            <tr>
                <td style="height: 477px; background-image: url(../../Images/Skin/bg.jpg); width: 744px;" colspan="3">
                    <div style="width: 478px; height: 314px; text-align: left;">
                        <span style="font-size: 9pt">
                            <div style="width: 486px; height: 1px; text-align: center">
                                <br />
                            系统帮助说明<br />
                            </div>
                            <br />
                            &nbsp; &nbsp;
                            为维护网上公共秩序和社会稳定，请您自觉遵守以下条款：
                            <br />
                            <br />
                            &nbsp; &nbsp;
                            一、不得利用本站危害国家安全、泄露国家秘密，不得侵犯国家社会集体的和公民的合法权益，不得利用本站制作、复制和传播下列信息：
                            <br />
                            &nbsp; &nbsp;
                            （一）煽动抗拒、破坏宪法和法律、行政法规实施的；
                            <br />
                            &nbsp; &nbsp;
                            （二）煽动颠覆国家政权，推翻社会主义制度的；
                            <br />
                            &nbsp; &nbsp;
                            （三）煽动分裂国家、破坏国家统一的；
                            <br />
                            &nbsp; &nbsp;
                            （四）煽动民族仇恨、民族歧视，破坏民族团结的；
                            <br />
                            &nbsp; &nbsp;
                            （五）捏造或者歪曲事实，散布谣言，扰乱社会秩序的；
                            <br />
                            &nbsp; &nbsp;
                            （六）宣扬封建迷信、淫秽、色情、赌博、暴力、凶杀、恐怖、教唆犯罪的；
                            <br />
                            &nbsp; &nbsp;
                            （七）公然侮辱他人或者捏造事实诽谤他人的，或者进行其他恶意攻击的；
                            <br />
                            &nbsp; &nbsp;
                            （八）损害国家机关信誉的；
                            <br />
                            &nbsp; &nbsp;
                            （九）其他违反宪法和法律行政法规的；
                            <br />
                            &nbsp; &nbsp;
                            （十）进行商业广告行为的。
                            <br />
                            &nbsp; &nbsp;
                            二、互相尊重，对自己的言论和行为负责。</span></div>
                </td>
            </tr>
            <tr>
                <td colspan="3" style="width: 744px">
                    <uc1:Footer ID="Footer1" runat="server" />
                </td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
