<%@ Control Language="C#" AutoEventWireup="true" CodeFile="SystemNotice.ascx.cs" Inherits="UseControls_MainControls_SystemNotice" %>
<style type="text/css">
    .style1
    {
        height: 60px;
        font-weight: normal;
        text-align: left;
    }
    .style2
    {
        width: 458px;
        height: 286px;
    }
    .style3
    {
        width: 448px;
        height: 274px;
    }
    .style4
    {
        color: #FF0000;
    }
</style>
<table background="../../Images/skin/right.jpg" cellpadding="0" cellspacing="0"
    width="570" style="height: 492px">
    <tr>
        <td class="style1" colspan="2">
            <span class="style4" lang="zh-cn">友情提示：</span></td>
    </tr>
    <tr>
        <td style="vertical-align: middle; text-align: center; width: 699px; height: 262px;">
            <table cellpadding="0" cellspacing="0" class="style3">
                <tr>
                    <td colspan="3" rowspan="2" style="height: 264px; width: 429px;">
                        <MARQUEE direction="up" onmouseout="this.start()" onmouseover="this.stop()" scrollAmount="2" scrollDelay="7" style="width: 426px; height: 262px">
                        <span style="font-size: 16pt">
                            <br />
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
                    二、互相尊重，对自己的言论和行为负责。
                            <br />
                        </span>
                    </ MARQUEE ></td>
                </tr>
                <tr>
                </tr>
            </table>
        </td>
        <td style="vertical-align: middle; width: 123px; height: 262px; text-align: center">
        </td>
    </tr>
    <tr>
        <td style="vertical-align: middle; width: 699px; height: 58px; text-align: right">
            <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" Font-Size="20pt"
                Font-Underline="False" PostBackUrl="~/Module/Visitor/Index.aspx">点击该处浏览文章>></asp:LinkButton></td>
        <td style="vertical-align: middle; width: 123px; height: 58px; text-align: right">
        </td>
    </tr>
</table>
