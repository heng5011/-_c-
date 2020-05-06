<%@ Control Language="C#" AutoEventWireup="true" CodeFile="Header.ascx.cs" Inherits="UseControls_Header" %>
<%@ Register Src="VisitorNav.ascx" TagName="VisitorNav" TagPrefix="uc2" %>
<style type="text/css">
    .style1
    {
        width: 593px;
        height: 128px;
    }
    .style4
    {
        font-size: x-large;
    }
    .style5
    {
        font-size: smaller;
        color: #FFFFFF;
    }
    .style7
    {
        height: 4px;
    }
    .style8
    {
        font-size: xx-large;
        color: #FFFFFF;
    }
    .style9
    {
        font-size: smaller;
    }
    .style10
    {
        height: 13px;
        width: 50px;
    }
    .auto-style1 {
        width: 61%;
        height: 141px;
    }
</style>
<table align="center" 
    style="background-image: url('../../Images/skin/head.jpg'); " cellpadding="0"  
    cellspacing="0" class="auto-style1">
    <tr>
        <td colspan="5" style="width: 716px; height: 20px; text-align: right">
            <uc2:VisitorNav ID="VisitorNav1" runat="server" />
            <span lang="zh-cn">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span>&nbsp;&nbsp;</td>
    </tr>
    <tr>
        <td colspan="5" style="height: 50px; width: 716px;" align="left">
            <span lang="zh-cn">&nbsp;&nbsp; <span class="style4">&nbsp;</span><span 
                class="style8"> Blue space</span></span>&nbsp;<span lang="zh-cn">&nbsp;<span 
                class="style9"> </span>
            <span class="style4">&nbsp;个人微博</span></span></td>
    </tr>
    <tr>
        <td align="center" colspan="4" 
            style="height: 14px; text-align: center; width: 755px;">
            <table cellpadding="0" cellspacing="0" width="750" class="style7">
                <tr>
                    <td align="center" colspan="1" 
                        style="width: 84px; height: 13px; text-align: right">
                    </td>
                    <td align="center" colspan="3" 
                        style="width: 50px; height: 13px; text-align: center">
                        <span style="font-size: 9pt">用户名</span></td>
                    <td align="center" colspan="1" style="text-align: center" class="style10">
                        <asp:TextBox ID="txtUid" runat="server" Width="54px" Font-Size="9pt"></asp:TextBox></td>
                    <td align="center" colspan="1" 
                        style="width: 49px; height: 13px; text-align: center;">
                        <span style="font-size: 9pt">密码</span></td>
                    <td align="center" colspan="1" style="width: 65px; height: 13px">
                        <asp:TextBox ID="txtPwd" runat="server" Width="59px" TextMode="Password" 
                            Font-Size="9pt"></asp:TextBox></td>
                    <td align="center" colspan="1" 
                        style="width: 50px; height: 13px; text-align: center">
                        <span style="font-size: 9pt">验证码</span></td>
                    <td align="center" colspan="1" 
                        style="width: 65px; height: 13px; text-align: center">
                        <asp:TextBox ID="txtVali" runat="server" Width="65px" Font-Size="9pt"></asp:TextBox></td>
                    <td align="center" colspan="1" 
                        style="width: 71px; height: 13px; text-align: center">
                        <asp:Label ID="labVali" runat="server" Width="72px" BackColor="GhostWhite" ForeColor="Red" Font-Size="12pt"></asp:Label></td>
                    <td align="center" colspan="1" 
                        style="width: 12px; height: 13px; text-align: center">
                        <asp:Button ID="btnOK" runat="server" Text="登录" Font-Size="9pt" OnClick="btnOK_Click" /></td>
                    <td align="center" colspan="1" 
                        style="width: 17px; height: 13px; text-align: center">
                        <asp:Button ID="btnReg" runat="server" Text="注册" OnClick="btnReg_Click" CausesValidation="False" Font-Size="9pt" /></td>
                    <td align="center" colspan="1" 
                        style="height: 13px; text-align: center; width: 66px;">
                        <asp:LinkButton ID="lnkbtnForget" runat="server" Font-Size="9pt" PostBackUrl="~/Module/Blog/Findpwd1.aspx" CausesValidation="False" Font-Underline="False" ForeColor="Red">忘记密码？</asp:LinkButton></td>
                    <td align="center" colspan="1" 
                        style="width: 65px; height: 13px; text-align: center">
                        <asp:LinkButton ID="lnkbtnAdmin" runat="server" Font-Size="9pt" PostBackUrl="~/Module/Admin/Index.aspx" CausesValidation="False" Font-Underline="False" ForeColor="Red">管理员登录</asp:LinkButton></td>
                    <td align="center" colspan="1" 
                        style="width: 40px; height: 13px; text-align: center">
                    </td>
                </tr>
                </table>
        </td>
    </tr>
    </table>
