<%@ Page Language="C#" AutoEventWireup="true" CodeFile="VisitorInfo.aspx.cs" Inherits="Module_Blog_VisitorInfo" %>

<%@ Register Src="AdminHeader.ascx" TagName="AdminHeader" TagPrefix="uc4" %>

<%@ Register Src="Footer.ascx" TagName="Footer" TagPrefix="uc3" %>

<%@ Register Src="../Visitor/VisitorHeader.ascx" TagName="VisitorHeader" TagPrefix="uc2" %>


<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>访客信息</title>
            <link href="../../CSS/StyleSheet.css" rel="stylesheet" type="text/css" />
</head>
<body style="margin-top: 0px; padding-top: 0px"; background="../../Images/skin/background5.jpg">
    <form id="form1" runat="server">
    <div style="text-align: center">
        <table align="center"; table style="width: 755px; text-align: center" cellpadding="0" cellspacing="0">
            <tr>
                <td style="height: 21px; width: 784px;" colspan="3">
                    <uc4:AdminHeader ID="AdminHeader1" runat="server" />
                </td>
            </tr>
            <tr>
                <td align="center" colspan="3" style="height: 476px; background-image: url(../../Images/skin/bg.jpg); width: 784px;">
                    <table style="border-right: black thin solid; border-top: black thin solid; border-left: black thin solid;
                        width: 392px; border-bottom: black thin solid">
                        <tr>
                            <td colspan="4" rowspan="1" style="height: 11px; text-align: center">
                            </td>
                        </tr>
                        <tr>
                            <td colspan="4" rowspan="2" style="height: 20px; text-align: center">
                                <span style="color: #993300"><strong>访客详细资料</strong></span></td>
                        </tr>
                        <tr>
                        </tr>
                        <tr>
                            <td style="width: 82px; height: 21px; text-align: center">
                                <span style="font-size: 9pt">用 户 名:</span></td>
                            <td colspan="2" style="font-size: 12pt; width: 16px; height: 21px; text-align: left">
                                <asp:TextBox ID="txtName" runat="server" Width="115px" BackColor="White"></asp:TextBox></td>
                            <td colspan="1" style="font-size: 12pt; width: 173px; height: 21px; text-align: left">
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtName"
                                    ErrorMessage="*用户名不能为空" Font-Size="9pt"></asp:RequiredFieldValidator></td>
                        </tr>
                        <tr style="font-size: 12pt">
                            <td style="width: 82px; height: 21px; text-align: center">
                                <span style="font-size: 9pt">密 &nbsp;&nbsp; 码:</span></td>
                            <td colspan="2" style="width: 16px; height: 21px; text-align: left">
                                <asp:TextBox ID="txtPwd" runat="server" ReadOnly="True" Width="117px" BackColor="#E0E0E0"></asp:TextBox></td>
                            <td colspan="1" style="width: 173px; height: 21px; text-align: left">
                                </td>
                        </tr>
                        <tr style="font-size: 9pt; color: #000000">
                            <td style="width: 82px; height: 17px; text-align: center">
                                <span>修改密码:</span></td>
                            <td colspan="2" style="width: 16px; height: 17px; text-align: left">
                                <asp:TextBox ID="txtOKpwd" runat="server" Width="117px"></asp:TextBox></td>
                            <td colspan="1" style="width: 173px; height: 17px; text-align: left">
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtOKpwd"
                                    ErrorMessage="*密码不能为空"></asp:RequiredFieldValidator></td>
                        </tr>
                        <tr style="font-size: 12pt; color: #000000">
                            <td style="width: 82px; height: 18px; text-align: center">
                                <span style="font-size: 9pt">性 &nbsp;&nbsp; 别:</span></td>
                            <td colspan="2" style="width: 16px; height: 18px; text-align: left">
                                <asp:DropDownList ID="DropDownList1" runat="server">
                                    <asp:ListItem>男</asp:ListItem>
                                    <asp:ListItem>女</asp:ListItem>
                                </asp:DropDownList>&nbsp;</td>
                            <td colspan="1" style="width: 173px; height: 18px">
                            </td>
                        </tr>
                        <tr>
                            <td style="width: 82px; height: 21px; text-align: center">
                                <span style="font-size: 9pt">真实姓名:</span></td>
                            <td colspan="2" style="width: 16px; height: 21px; text-align: left">
                                <asp:TextBox ID="txtRealName" runat="server" Width="117px"></asp:TextBox></td>
                            <td colspan="1" style="width: 173px; height: 21px; text-align: left">
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtRealName"
                                    ErrorMessage="真实姓名不能为空"></asp:RequiredFieldValidator></td>
                        </tr>
                        <tr style="color: #000000">
                            <td style="width: 82px; height: 21px; text-align: center">
                                <span style="font-size: 9pt">生 &nbsp;&nbsp; 日:</span></td>
                            <td colspan="2" style="width: 16px; height: 21px; text-align: left">
                                <asp:TextBox ID="txtBirthday" runat="server" Width="117px"></asp:TextBox></td>
                            <td colspan="1" style="width: 173px; height: 21px; text-align: left">
                                </td>
                        </tr>
                        <tr style="font-size: 12pt">
                            <td style="width: 82px; height: 21px; text-align: center">
                                <span style="font-size: 9pt">家庭地址:</span></td>
                            <td colspan="3" style="font-size: 12pt; height: 21px; text-align: left">
                                <asp:TextBox ID="txtAddress" runat="server" Width="290px"></asp:TextBox></td>
                        </tr>
                        <tr style="font-size: 12pt">
                            <td style="width: 82px; height: 21px; text-align: center">
                                <span style="font-size: 9pt">邮政编码:</span></td>
                            <td colspan="2" style="width: 16px; height: 21px; text-align: left">
                                <asp:TextBox ID="txtPostCode" runat="server" Width="117px"></asp:TextBox></td>
                            <td colspan="1" style="width: 173px; height: 21px">
                            </td>
                        </tr>
                        <tr style="font-size: 12pt">
                            <td style="width: 82px; height: 21px; text-align: center">
                                <span style="font-size: 9pt">密码问题:</span></td>
                            <td colspan="3" style="height: 21px; text-align: left">
                                <asp:TextBox ID="txtQues" runat="server" Width="290px"></asp:TextBox></td>
                        </tr>
                        <tr>
                            <td style="width: 82px; height: 21px; text-align: center">
                                <span style="font-size: 9pt">问题答案:</span></td>
                            <td colspan="3" style="height: 21px; text-align: left">
                                <asp:TextBox ID="txtAns" runat="server" Width="290px"></asp:TextBox></td>
                        </tr>
                        <tr>
                            <td style="width: 82px; height: 21px; text-align: center">
                                <span style="font-size: 9pt">E-mail:</span></td>
                            <td colspan="2" style="width: 16px; height: 21px; text-align: left">
                                <asp:TextBox ID="txtEmail" runat="server" Width="117px"></asp:TextBox></td>
                            <td colspan="1" style="width: 173px; height: 21px; text-align: left">
                                </td>
                        </tr>
                        <tr>
                            <td style="width: 82px; height: 21px; text-align: center">
                                <span style="font-size: 9pt">家庭电话:</span></td>
                            <td colspan="2" style="width: 16px; height: 21px; text-align: left">
                                <asp:TextBox ID="txtHphone" runat="server" Width="117px"></asp:TextBox></td>
                            <td colspan="1" style="width: 173px; height: 21px">
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
                                <span style="font-size: 9pt">QQ:</span></td>
                            <td colspan="2" style="width: 16px; height: 21px; text-align: left">
                                <asp:TextBox ID="txtQQ" runat="server" Width="117px"></asp:TextBox></td>
                            <td colspan="1" style="width: 173px; height: 21px">
                            </td>
                        </tr>
                        <tr>
                            <td style="width: 82px; height: 21px; text-align: center">
                                <span style="font-size: 9pt">ICQ:</span></td>
                            <td colspan="2" style="width: 16px; height: 21px; text-align: left">
                                <asp:TextBox ID="txtICQ" runat="server" Width="117px"></asp:TextBox></td>
                            <td colspan="1" style="width: 173px; height: 21px">
                            </td>
                        </tr>
                        <tr>
                            <td style="width: 82px; height: 21px; text-align: center">
                                <span style="font-size: 9pt">注册时间:</span></td>
                            <td colspan="2" style="width: 16px; height: 21px; text-align: left">
                                <asp:TextBox ID="txtRegTime" runat="server" BackColor="#E0E0E0" ReadOnly="True" Width="117px"></asp:TextBox></td>
                            <td colspan="1" style="width: 173px; height: 21px">
                            </td>
                        </tr>
                        <tr>
                            <td style="width: 82px; height: 21px; text-align: center">
                                IP:</td>
                            <td colspan="2" style="width: 16px; height: 21px; text-align: left">
                                <asp:TextBox ID="txtIP" runat="server" BackColor="#E0E0E0" ReadOnly="True" Width="117px"></asp:TextBox></td>
                            <td colspan="1" style="width: 173px; height: 21px">
                            </td>
                        </tr>
                        <tr>
                            <td colspan="4" style="height: 21px; text-align: center">
                                <asp:Button ID="btnUpdate" runat="server" Font-Size="9pt" Text="修改" OnClick="btnUpdate_Click" />
                                <asp:Button ID="txtBack" runat="server" Font-Size="9pt" Text="返回" CausesValidation="False" OnClick="txtBack_Click" /></td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr>
                <td align="center" colspan="3" style="height: 70px; width: 784px;">
                    <uc3:Footer ID="Footer1" runat="server" />
                </td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
