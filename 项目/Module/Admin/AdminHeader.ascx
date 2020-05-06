<%@ Control Language="C#" AutoEventWireup="true" CodeFile="AdminHeader.ascx.cs" Inherits="UseControls_LoginHeader" %>
<%@ Register Src="AdminNav.ascx" TagName="AdminNav" TagPrefix="uc1" %>
<style type="text/css">
    .auto-style1 {
        width: 903px;
        height: 128px;
    }
</style>
<table style="background-image: url('../../Images/Skin/head.jpg');" cellpadding="0" cellspacing="0" class="auto-style1">
    <tr>
        <td colspan="1" style="vertical-align: text-top; width: 163px; height: 125px;
            text-align: right">
        </td>
        <td colspan="1" style="vertical-align: text-top; width: 71px; height: 125px;
            text-align: right">
        </td>
        <td colspan="1" style="vertical-align: text-top; width: 236px; height: 125px;
            text-align: right">
            </td>
        <td colspan="1" style="vertical-align: text-top; width: 85px; height: 125px;
            text-align: right">
        </td>
        <td colspan="3" style="vertical-align: text-top; height: 125px; text-align: right; width: 283px;">
            &nbsp;&nbsp;</td>
    </tr>
    <tr>
        <td colspan="1" style="vertical-align: text-top; width: 163px; height: 22px;
            text-align: right">
            <span style="font-size: 9pt">欢迎您:</span></td>
        <td colspan="1" style="vertical-align: text-top; width: 71px; height: 22px;
            text-align: left">
            <asp:Label ID="labName" runat="server" Font-Size="9pt" ForeColor="#FF0000" Width="78px"></asp:Label></td>
        <td colspan="5" style="font-size: 9pt; vertical-align: text-top; color: red;
            font-family: 宋体; height: 22px; text-align: left">
            <uc1:AdminNav ID="AdminNav1" runat="server" />
        </td>
    </tr>
</table>
