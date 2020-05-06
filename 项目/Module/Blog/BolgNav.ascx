<%@ Control Language="C#" AutoEventWireup="true" CodeFile="BolgNav.ascx.cs" Inherits="UseControls_MainControls_Navigation" %>
<table style="width: 540px" cellpadding="0" cellspacing="0">
    <tr>
        <td colspan="3" rowspan="3" style="height: 15px; text-align: center; width: 90px;">
            <span style="font-size: 9pt; color: #cc0033">◎ 
                <asp:LinkButton ID="lnkbtnFir" runat="server" CausesValidation="False" Font-Size="9pt"
                    Font-Underline="False" ForeColor="Black" PostBackUrl="~/Module/Blog/Index.aspx">回到首页</asp:LinkButton></span><a href="../../Index.aspx"><span style="font-size: 9pt; color:#000000; text-decoration:none"></span></a></td>
        <td colspan="1" rowspan="3" style="height: 15px; text-align: center; width: 90px;">
            <span style="font-size: 9pt; color: #cc0033">◎ </span>
            <span style="font-size: 9pt"> 
                <asp:LinkButton ID="lnkbtnArt" runat="server" CausesValidation="False" Font-Size="9pt"
                    Font-Underline="False" ForeColor="Black" PostBackUrl="~/Module/Blog/ArticleManage.aspx">文章管理</asp:LinkButton></span></td>
        <td colspan="1" rowspan="3" style="height: 15px; text-align: center; width: 90px;">
            <span style="font-size: 9pt; color: #cc0033">◎ </span>
            <a href="../../Module/Blog/RegPro.aspx"><span style="font-size: 9pt; color: #000000;
                text-decoration: none"></span></a>
            <asp:LinkButton ID="lnkbtnPic" runat="server" CausesValidation="False" Font-Size="9pt"
                Font-Underline="False" ForeColor="Black" PostBackUrl="~/Module/Blog/insertArticleManage.aspx">导入文章管理</asp:LinkButton><span style="font-size: 9pt"></span></td>
        <td colspan="2" rowspan="3" style="height: 15px; text-align: center; width: 90px;">
            <span style="font-size: 9pt"><span style="color: #cc0033">◎ </span>
                <asp:LinkButton ID="lnkbtnRev" runat="server" CausesValidation="False" Font-Size="9pt"
                    Font-Underline="False" ForeColor="Black" PostBackUrl="~/Module/Blog/ReplyManage2.aspx">评论管理</asp:LinkButton></span></td>
        <td colspan="1" rowspan="3" style="width: 90px; height: 15px; text-align: center">
          ◎
                <asp:LinkButton ID="lnkbtnMes" runat="server" CausesValidation="False" Font-Size="9pt"
                    Font-Underline="False" ForeColor="Black" PostBackUrl="~/Module/Blog/LinkManManage.aspx" OnClick="lnkbtnMes_Click">通讯管理</asp:LinkButton>&nbsp;</span>
            </span>
        </td>
        <td colspan="1" style="width: 90px; height: 15px; text-align: center">
            <span style="font-size: 9pt"><span style="color: #cc0033">◎
                 style="font-size: 9pt"><span style="color: #cc0033">◎
                <asp:LinkButton ID="lnkbtnBack" runat="server" CausesValidation="False" Font-Size="9pt"
                    Font-Underline="False" ForeColor="Black" OnClick="lnkbtnBack_Click">退出登录</asp:LinkButton></span>
            </span>
        </td>
    </tr>
    <tr>
    </tr>
    <tr>
    </tr>
</table>
