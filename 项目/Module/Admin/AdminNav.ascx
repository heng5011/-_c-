<%@ Control Language="C#" AutoEventWireup="true" CodeFile="AdminNav.ascx.cs" Inherits="UseControls_MainControls_Navigation" %>
<table style="width: 400px" cellpadding="0" cellspacing="0">
    <tr>
        <td colspan="3" rowspan="3" style="height: 15px; text-align: center; width: 60px;">
            <span style="font-size: 9pt; color: #cc0033">◎ 
                <asp:LinkButton ID="lnkbtnAdmin" runat="server" Font-Size="9pt" Font-Underline="False"
                    ForeColor="Black" PostBackUrl="~/Module/Admin/AdminManage.aspx" CausesValidation="False">管理员</asp:LinkButton></span></td>
        <td colspan="1" rowspan="3" style="height: 15px; text-align: center; width: 80px;">
            <span style="font-size: 9pt; color: #cc0033">◎ 
                <asp:LinkButton ID="lnkbtnManage" runat="server" Font-Size="9pt" Font-Underline="False"
                    ForeColor="Black" PostBackUrl="~/Module/Admin/BlogManage.aspx" CausesValidation="False">管理微博</asp:LinkButton></span><span style="font-size: 9pt"> </span>
        </td>
        <td colspan="1" rowspan="3" style="height: 15px; text-align: center; width: 80px; color: #000000;">
            <span style="font-size: 9pt; color: #cc0033">◎ 
                <asp:LinkButton ID="lnkbtnLink" runat="server" Font-Size="9pt" Font-Underline="False"
                    ForeColor="Black" PostBackUrl="~/Module/Admin/LinkManage.aspx" CausesValidation="False">链接管理</asp:LinkButton></span><span style="font-size: 9pt"></span></td>
        <td colspan="1" rowspan="3" style="width: 90px; color: #000000; height: 15px; text-align: center">
            <span style="font-size: 9pt; color: #cc0033">◎ </span>
            <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" Font-Size="9pt"
                Font-Underline="False" ForeColor="Black" PostBackUrl="~/Module/Admin/VisitorManage.aspx">游客管理</asp:LinkButton><span style="font-size: 9pt"></span></td>
        <td colspan="2" rowspan="3" style="height: 15px; text-align: center; width: 90px;">
            <span style="font-size: 9pt"><span style="color: #cc0033">◎ </span><a href="../../Index.aspx" style="color: #000000;
                text-decoration: none">
                <asp:LinkButton ID="lnkbtnCancle" runat="server" Font-Size="9pt" Font-Underline="False"
                    ForeColor="Black" OnClick="lnkbtnCancle_Click" CausesValidation="False">退出登录</asp:LinkButton></a> </span>
        </td>
    </tr>
    <tr>
    </tr>
    <tr>
    </tr>
</table>
