<%@ Control Language="C#" AutoEventWireup="true" CodeFile="FeedBack.ascx.cs" Inherits="UseControls_MainControls_FeedBack" %>
<table align="center" table style="width: 540px; height: 154px">
    <tr>
        <td style="height: 5px;" colspan="3">
            <asp:Panel ID="Panel1" runat="server" Height="50px" Width="540px">
                <table style="width: 580px">
                    <tr>
                        <td style="width: 15px; height: 26px; text-align: left">
                            <span style="font-size: 9pt">ID:</span></td>
                        <td style="width: 30px; height: 26px; text-align: left">
                            <asp:TextBox ID="txtID" runat="server" Width="60px" Font-Size="9pt"></asp:TextBox></td>
                        <td style="width: 100px; height: 26px; text-align: center">
                            <span style="font-size: 9pt">用户名:</span></td>
                        <td style="width: 54px; height: 26px">
                            <asp:TextBox ID="txtUserName" runat="server" Width="60px" Font-Size="9pt"></asp:TextBox>
                        </td>
                        <td style="width: 50px; height: 26px; text-align: center">
                            <span style="font-size: 9pt">密码:</span></td>
                        <td style="width: 61px; height: 26px">
                            <asp:TextBox ID="txtPassWord" runat="server" Width="60px" TextMode="Password" Font-Size="9pt"></asp:TextBox></td>
                        <td style="width: 100px; height: 26px; text-align: center">
                            <span style="font-size: 9pt">验证码:</span></td>
                        <td style="width: 39px; height: 26px; text-align: center">
                            <asp:TextBox ID="txtVial" runat="server" Width="60px" Font-Size="9pt"></asp:TextBox></td>
                        <td style="width: 44px; height: 26px; text-align: center">
                            <asp:Label ID="labVial" runat="server" BackColor="#FFC0C0" Font-Size="12pt" ForeColor="#0000C0"
                                Height="23px" Width="60px"></asp:Label></td>
                        <td style="height: 26px; text-align: center">
                                <asp:Button ID="btnLogin" runat="server" Font-Size="9pt" OnClick="btnLogin_Click"
                                    Text="登录" CausesValidation="False" /></td>
                        <td style="width: 46px; height: 26px; text-align: center">
                            <asp:Button ID="btnReg" runat="server" Font-Size="9pt" OnClick="btnReg_Click" Text="注册" CausesValidation="False" /></td>
                    </tr>
                </table>
            </asp:Panel>
            <asp:Panel ID="Panel2" runat="server" Height="25px" Width="540px">
                <table style="width: 580px">
                    <tr>
                        <td style="height: 21px">
                        </td>
                        <td style="width: 125px; height: 21px; text-align: center">
                            <span style="font-size: 9pt">欢迎您:</span><asp:Label ID="labName" runat="server" Font-Size="9pt"
                                ForeColor="#FF3300" Width="52px"></asp:Label></td>
                        <td style="height: 21px">
                        </td>
                    </tr>
                </table>
            </asp:Panel>
        </td>
    </tr>
    <tr>
        <td style="width: 88px; height: 128px; text-align: right;">
            <span style="font-size: 9pt">我要评论:</span></td>
        <td colspan="2" style="width: 505px; height: 128px; text-align: center">
            <asp:TextBox ID="txtContent" runat="server" Height="142px" MaxLength="500" TextMode="MultiLine"
                Width="466px"></asp:TextBox></td>
    </tr>
    <tr>
        <td style="height: 2px; width: 88px;">
        </td>
        <td colspan="2" style="height: 2px; width: 505px; text-align: center;">
            <span style="font-size: 9pt; color: #993300">你最多可发表500字评论</span></td>
    </tr>
    <tr>
        <td style="height: 7px; width: 88px;">
        </td>
        <td colspan="2" rowspan="1" style="height: 7px; width: 505px; text-align: center;">
            <asp:Button ID="btnOK" runat="server" Font-Size="9pt" OnClick="txtOK_Click" Text="提交" CausesValidation="False" />
            <asp:Button ID="btnCancle" runat="server" Font-Size="9pt" Text="取消" OnClick="btnCancle_Click" CausesValidation="False" /></td>
    </tr>
</table>
