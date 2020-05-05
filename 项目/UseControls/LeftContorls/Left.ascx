<%@ Control Language="C#" AutoEventWireup="true" CodeFile="Left.ascx.cs" Inherits="UseControls_LeftContorls_Left" %>
<%@ Register Src="NewRevert2.ascx" TagName="NewRevert2" TagPrefix="uc4" %>
<%@ Register Src="NewReview.ascx" TagName="NewReview" TagPrefix="uc1" %>
<%@ Register Src="Calendar.ascx" TagName="Calendar" TagPrefix="uc2" %>
<%@ Register Src="Href.ascx" TagName="Href" TagPrefix="uc3" %>
<style type="text/css">
    .style1
    {
        width: 172px;
        height: 416px;
    }
    .style2
    {
        width: 216px;
    }
    .style5
    {
        height: 86px;
        width: 216px;
    }
    .style6
    {
        height: 88px;
        width: 216px;
    }
    .style7
    {
        text-align: left;
    }
</style>
<table background="../../Images/Skin/left.jpg" 
    style="background-color: #FFFFFF;" cellpadding="0" 
    cellspacing="0" class="style1">
    <tr>
        <td style="vertical-align: top; text-align: center" class="style2" valign="top">
            <uc2:Calendar ID="Calendar1" runat="server" />
        </td>
    </tr>
    <tr>
        <td style="vertical-align: top; text-align: center" class="style5">
            <uc4:NewRevert2 ID="NewRevert2_1" runat="server" />
            </td>
    </tr>
    <tr>
        <td style="text-align: center; vertical-align: top;" class="style6">
            <div class="style7">
                <span lang="zh-cn">链接：</span><br />
            </div>
            <uc3:Href ID="Href1" runat="server" />
        </td>
    </tr>
</table>
