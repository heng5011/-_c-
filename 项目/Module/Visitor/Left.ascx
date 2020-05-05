<%@ Control Language="C#" AutoEventWireup="true" CodeFile="Left.ascx.cs" Inherits="UseControls_LeftContorls_Left" %>
<%@ Register Src="NewRevert2.ascx" TagName="NewRevert2" TagPrefix="uc4" %>
<%@ Register Src="Calendar.ascx" TagName="Calendar" TagPrefix="uc2" %>
<%@ Register Src="Href.ascx" TagName="Href" TagPrefix="uc3" %>
<table background="../../Images/Skin/left.jpg" style="width: 185px;" cellpadding="0" cellspacing="0" width="185" height="492">
    <tr>
        <td colspan="1" style="vertical-align: top; width: 895px; text-align: center" rowspan="5">
        </td>
        <td colspan="3" style="vertical-align: top; width: 166px; height: 7px; text-align: center">
        </td>
        <td colspan="1" style="vertical-align: top; width: 19px; height: 7px; text-align: center">
        </td>
    </tr>
    <tr>
        <td colspan="3" style="vertical-align: top; width: 166px; height: 140px; text-align: center">
            <uc2:Calendar ID="Calendar1" runat="server" />
        </td>
        <td colspan="1" style="vertical-align: top; width: 19px; text-align: center">
        </td>
    </tr>
    <tr>
        <td colspan="3" style="vertical-align: top; width: 166px; height: 22px; text-align: center">
        </td>
        <td colspan="1" style="vertical-align: top; width: 19px; text-align: center; height: 22px;">
        </td>
    </tr>
    <tr>
        <td colspan="3" style="vertical-align: top; width: 166px; height: 144px; text-align: center">
            <uc4:NewRevert2 ID="NewRevert2_1" runat="server" />
            &nbsp;</td>
        <td colspan="1" style="vertical-align: top; width: 19px; text-align: center; height: 144px;">
        </td>
    </tr>
    <tr>
        <td colspan="3" style="width: 166px; height: 88px; text-align: center; vertical-align: top;">
            <uc3:Href ID="Href1" runat="server" />
        </td>
        <td colspan="1" style="vertical-align: top; width: 19px; height: 88px; text-align: center">
        </td>
    </tr>
</table>
