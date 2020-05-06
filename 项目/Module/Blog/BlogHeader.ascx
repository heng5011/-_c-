<%@ Control Language="C#" AutoEventWireup="true" CodeFile="BlogHeader.ascx.cs" Inherits="UseControls_LoginHeader" %>
<%@ Register Src="BolgNav.ascx" TagName="BolgNav" TagPrefix="uc1" %>
<style type="text/css">
    .auto-style1 {
        width: 844px;
        height: 157px;
    }
</style>
<table align="center"; table style="background-image: url('../../Images/skin/head.jpg'); " class="auto-style1">
    <tr>
        <td style="width: 79px; height: 17px">
        </td>
        <td style="width: 14px; height: 17px">
        </td>
        <td style="height: 17px">
        </td>
    </tr>
    <tr>
        <td style="width: 79px; height: 95px">
        </td>
        <td style="width: 14px; height: 95px">
        </td>
        <td style="height: 95px">
        </td>
    </tr>
    <tr>
        <td style="width: 79px; text-align: right">
            <span style="margin-top: 0px; font-size: 9pt; vertical-align: top; padding-top: 0px;
                text-align: right">欢迎您:</span></td>
        <td style="vertical-align: top; width: 14px; text-align: left">
            <asp:Label ID="labName" runat="server" Font-Size="9pt" ForeColor="Red" Width="33px"></asp:Label></td>
        <td>
                <uc1:BolgNav ID="BolgNav1" runat="server" />
        </td>
    </tr>
</table>
