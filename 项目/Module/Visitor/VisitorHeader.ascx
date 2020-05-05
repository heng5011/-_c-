<%@ Control Language="C#" AutoEventWireup="true" CodeFile="VisitorHeader.ascx.cs" Inherits="UseControls_LoginHeader" %>
<%@ Register Src="VisitorNav.ascx" TagName="VisitorNav" TagPrefix="uc3" %>

<style type="text/css">
    .auto-style2 {
        width: 896px;
        height: 137px;
    }
</style>

<table align="center" ;table style="background-image: url('../../Images/skin/head.jpg'); " cellpadding="0" cellspacing="0" class="auto-style2" >
    <tr>
        <td colspan="1" style="vertical-align: text-top; width: 80px; height: 122px;
            text-align: right">
        </td>
        <td colspan="1" style="vertical-align: text-top; width: 61px; height: 122px;
            text-align: right">
        </td>
        <td colspan="1" style="vertical-align: text-top; width: 236px; height: 122px;
            text-align: right">
        </td>
        <td colspan="1" style="vertical-align: text-top; width: 85px; height: 122px;
            text-align: right">
        </td>
        <td colspan="3" style="vertical-align: text-top; height: 122px; text-align: right; width: 273px;">
            &nbsp;</td>
    </tr>
    <tr>
        <td colspan="3" style="vertical-align: text-top; height: 2px; text-align: right">
            <uc3:VisitorNav ID="VisitorNav1" runat="server" />
            </td>
        <td colspan="1" style="vertical-align: text-top; width: 85px; text-align: right; height: 2px;">
            <span style="font-size: 9pt; vertical-align: middle; text-align: center;">当前时间：</span></td>
        <td colspan="3" style="vertical-align: top; text-align: left; height: 2px; font-size:9pt; font-family:宋体; color:Red; width: 273px;">
        <script type="text/javascript"> 
　　　document.write("<span id=labTime width='118px' Font-Size='9pt'></span>") //输出显示日期的容器 
　　　//每1000毫秒(即1秒) 执行一次本段代码 
　　　setInterval("labTime.innerText=new Date().toLocaleString()",1000)  
　　　　</script>
        </td>
    </tr>
</table>
