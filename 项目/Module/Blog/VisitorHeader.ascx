<%@ Control Language="C#" AutoEventWireup="true" CodeFile="VisitorHeader.ascx.cs" Inherits="UseControls_LoginHeader" %>
<%@ Register Src="VisitorNav.ascx" TagName="VisitorNav" TagPrefix="uc1" %>
<style type="text/css">
    .auto-style1 {
        width: 897px;
        height: 133px;
    }
</style>
<table style="background-image: url('../../Images/skin/head.jpg');" cellpadding="0" cellspacing="0" class="auto-style1">
    <tr>
        <td colspan="1" style="vertical-align: text-top; width: 80px; height: 115px;
            text-align: right">
        </td>
        <td colspan="1" style="vertical-align: text-top; width: 61px; height: 115px;
            text-align: right">
        </td>
        <td colspan="1" style="vertical-align: text-top; width: 236px; height: 115px;
            text-align: right">
        </td>
        <td colspan="1" style="vertical-align: text-top; width: 85px; height: 115px;
            text-align: right">
        </td>
        <td colspan="3" style="vertical-align: text-top; height: 115px; text-align: right; width: 273px;">
            &nbsp;</td>
    </tr>
    <tr>
        <td colspan="3" style="vertical-align: text-top; height: 1px; text-align: right">
            <uc1:VisitorNav ID="VisitorNav1" runat="server" />
            </td>
        <td colspan="1" style="vertical-align: text-top; width: 85px; text-align: right; height: 1px;">
            <span style="font-size: 9pt; vertical-align: middle; text-align: center;">当前时间：</span></td>
        <td colspan="3" style="vertical-align: top; text-align: left; height: 1px; font-size:9pt; font-family:宋体; color:Red; width: 273px;">
        <script type="text/javascript"> 
　　　document.write("<span id=labTime width='118px' Font-Size='9pt'></span>") //输出显示日期的容器 
　　　//每1000毫秒(即1秒) 执行一次本段代码 
　　　setInterval("labTime.innerText=new Date().toLocaleString()",1000)  
　　　　</script>
        </td>
    </tr>
</table>
