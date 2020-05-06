<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Register.aspx.cs" Inherits="Module_Admin_Register" %>

<%@ Register Src="Footer.ascx" TagName="Footer" TagPrefix="uc1" %>

<%@ Register Src="VisitorHeader.ascx" TagName="VisitorHeader" TagPrefix="uc2" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>访客注册</title>
            <link href="../../CSS/StyleSheet.css" rel="stylesheet" type="text/css" />
</head>
<body style="text-align: center; margin-top: 0px; padding-top: 0px;" text="#00";  background="../../Images/skin/background4.png">
    <form id="form1" runat="server">
        <table align="center"; table cellpadding="0" cellspacing="0" style="width: 755px">
            <tr>
                <td colspan="3">
                    <uc2:VisitorHeader ID="VisitorHeader1" runat="server" />
                </td>
            </tr>
            <tr>
                <td colspan="3" style="background-image: url(../../Images/skin/bg.jpg); height: 473px; vertical-align: middle; text-align: center;">
                    <table style="border-right: black thin solid; border-left: black thin solid;
                        width: 392px; border-bottom: black thin solid; border-top: black thin solid;" height="477">
                        <tr>
                            <td colspan="4" rowspan="1" style="height: 15px;
                                text-align: center; border-bottom-width: thin; border-bottom-color: black; border-top-width: thin; border-top-color: black;">
                            </td>
                        </tr>
                        <tr>
                            <td colspan="4" rowspan="2" style="height: 20px; text-align: center">
                                <span style="color: #993300"><strong style="border-top-width: thin; border-top-color: black;">访客注册资料</strong></span></td>
                        </tr>
                        <tr>
                        </tr>
                        <tr>
                            <td style="width: 82px; height: 21px; text-align: center">
                                <span style="font-size: 9pt">
                                用户名:</span></td>
                            <td colspan="2" style="width: 16px; height: 21px; text-align: left">
                                <asp:TextBox ID="txtName" runat="server" Width="115px"></asp:TextBox></td>
                            <td colspan="1" style="width: 173px; height: 21px; text-align: left">
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtName"
                                    Font-Size="9pt" ErrorMessage="用户名不能为空">*</asp:RequiredFieldValidator></td>
                        </tr>
                        <tr>
                            <td style="width: 82px; height: 21px; text-align: center">
                            </td>
                            <td colspan="2" style="width: 16px; height: 21px; text-align: left">
                                <asp:Button ID="Button1" runat="server" CausesValidation="False" Text="检测用户" Font-Size="9pt" OnClick="Button1_Click" /></td>
                            <td colspan="1" style="width: 173px; height: 21px; text-align: left">
                                </td>
                        </tr>
                        <tr>
                            <td style="width: 82px; height: 21px; text-align: center">
                                <span style="font-size: 9pt">
                                密 &nbsp;&nbsp; 码:</span></td>
                            <td colspan="2" style="width: 16px; height: 21px; text-align: left; font-size: 9pt;">
                                <asp:TextBox ID="txtPwd" runat="server" Width="117px" TextMode="Password"></asp:TextBox></td>
                            <td colspan="1" style="width: 173px; height: 21px; text-align: left; font-size: 9pt;">
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtPwd"
                                    Font-Size="9pt" ErrorMessage="请输入密码">*</asp:RequiredFieldValidator></td>
                        </tr>
                        <tr style="color: #000000">
                            <td style="width: 82px; height: 17px; text-align: center">
                                <span style="font-size: 9pt">
                                确认密码:</span></td>
                            <td colspan="2" style="width: 16px; height: 17px; text-align: left">
                                <asp:TextBox ID="txtOKpwd" runat="server" Width="117px" TextMode="Password"></asp:TextBox></td>
                            <td colspan="1" style="width: 173px; height: 17px; text-align: left">
                                <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtPwd"
                                    ControlToValidate="txtOKpwd" Font-Size="9pt">*密码不一致</asp:CompareValidator></td>
                        </tr>
                        <tr style="color: #000000">
                            <td style="width: 82px; height: 18px; text-align: center">
                                <span style="font-size: 9pt">
                                性 &nbsp;&nbsp; 别:</span></td>
                            <td colspan="2" style="width: 16px; height: 18px; text-align: left">
                                <asp:DropDownList ID="DropDownList1" runat="server">
                                    <asp:ListItem>男</asp:ListItem>
                                    <asp:ListItem>女</asp:ListItem>
                                </asp:DropDownList><span style="font-size: 9pt">&nbsp;</span></td>
                            <td colspan="1" style="width: 173px; height: 18px; font-size: 9pt;">
                            </td>
                        </tr>
                        <tr style="font-size: 9pt">
                            <td style="width: 82px; height: 21px; text-align: center">
                                <span>
                                真实姓名:</span></td>
                            <td colspan="2" style="width: 16px; height: 21px; text-align: left">
                                <asp:TextBox ID="txtRealName" runat="server" Width="117px"></asp:TextBox></td>
                            <td colspan="1" style="width: 173px; height: 21px; text-align: left;">
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtRealName" Font-Size="9pt" ErrorMessage="姓名不能为空">*</asp:RequiredFieldValidator></td>
                        </tr>
                        <tr style="font-size: 12pt; color: #000000">
                            <td style="width: 82px; height: 21px; text-align: center">
                                <span style="font-size: 9pt">
                                生 &nbsp;&nbsp; 日:</span></td>
                            <td colspan="2" style="width: 16px; height: 21px; text-align: left">
                                <asp:TextBox ID="txtBirthday" runat="server" Width="117px"></asp:TextBox></td>
                            <td colspan="1" style="width: 173px; height: 21px; text-align: left;">
                                </td>
                        </tr>
                        <tr style="font-size: 12pt">
                            <td style="width: 82px; height: 21px; text-align: center">
                                <span style="font-size: 9pt">
                                家庭地址:</span></td>
                            <td colspan="3" style="height: 21px; text-align: left">
                                <asp:TextBox ID="txtAddress" runat="server" Width="290px"></asp:TextBox></td>
                        </tr>
                        <tr>
                            <td style="width: 82px; height: 21px; text-align: center">
                                <span style="font-size: 9pt">
                                邮政编码:</span></td>
                            <td colspan="2" style="width: 16px; height: 21px; text-align: left">
                                <asp:TextBox ID="txtPostCode" runat="server" Width="117px"></asp:TextBox></td>
                            <td colspan="1" style="width: 173px; height: 21px; text-align: left;">
                                </td>
                        </tr>
                        <tr>
                            <td style="width: 82px; height: 21px; text-align: center">
                                <span style="font-size: 9pt">
                                E-mail:</span></td>
                            <td colspan="2" style="width: 16px; height: 21px; text-align: left">
                                <asp:TextBox ID="txtEmail" runat="server" Width="117px"></asp:TextBox></td>
                            <td colspan="1" style="width: 173px; height: 21px; text-align: left">
                                </td>
                        </tr>
                        <tr>
                            <td style="width: 82px; height: 21px; text-align: center">
                                <span style="font-size: 9pt">
                                家庭电话:</span></td>
                            <td colspan="2" style="width: 16px; height: 21px; text-align: left">
                                <asp:TextBox ID="txtHphone" runat="server" Width="117px"></asp:TextBox></td>
                            <td colspan="1" style="width: 173px; height: 21px; text-align: left;">
                                </td>
                        </tr>
                        <tr>
                            <td style="width: 82px; height: 21px; text-align: center">
                                <span style="font-size: 9pt">手机号码</span>:</td>
                            <td colspan="2" style="width: 16px; height: 21px; text-align: left">
                                <asp:TextBox ID="txtMphone" runat="server" Width="117px"></asp:TextBox></td>
                            <td colspan="1" style="width: 173px; height: 21px">
                            </td>
                        </tr>
                        <tr>
                            <td style="width: 82px; height: 21px; text-align: center">
                                <span style="font-size: 9pt">
                                QQ:</span></td>
                            <td colspan="2" style="width: 16px; height: 21px; text-align: left">
                                <asp:TextBox ID="txtQQ" runat="server" Width="117px"></asp:TextBox></td>
                            <td colspan="1" style="width: 173px; height: 21px">
                            </td>
                        </tr>
                        <tr>
                            <td style="width: 82px; height: 21px; text-align: center">
                                <span style="font-size: 9pt">
                                ICQ:</span></td>
                            <td colspan="2" style="width: 16px; height: 21px; text-align: left">
                                <asp:TextBox ID="txtICQ" runat="server" Width="117px"></asp:TextBox></td>
                            <td colspan="1" style="width: 173px; height: 21px">
                            </td>
                        </tr>
                        <tr>
                            <td colspan="4" style="height: 21px; text-align: center">
                                <asp:Button ID="btnOK" runat="server" Text="确定" OnClick="btnOK_Click" Font-Size="9pt" />
                                <asp:Button ID="btnBack" runat="server" Text="返回" OnClick="btnBack_Click" Font-Size="9pt" CausesValidation="False" />
                                <br />
                    <asp:ValidationSummary ID="ValidationSummary1" runat="server" Font-Size="9pt" ShowMessageBox="True" ShowSummary="False" />
                </td>
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
        &nbsp;
    </form>
</body>
</html>
