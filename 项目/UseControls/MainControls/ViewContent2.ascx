<%@ Control Language="C#" AutoEventWireup="true" CodeFile="ViewContent2.ascx.cs" Inherits="UseControls_MainControls_ViewContent2" %>
<style type="text/css">
    .auto-style1 {
        height: 18px;
        width: 165px;
    }
    .auto-style3 {
        margin-right: 29px;
    }
</style>
<table style="width: 570px;" cellpadding="0" cellspacing="0" background="../../Images/skin/BAbg.jpg">
    <tr>
        <td colspan="5" style="height: 12px; text-align: right">
        </td>
    </tr>
    <tr>
        <td colspan="2" style="width: 134px; text-align: right; height: 20px;">
            <span style="font-size: 9pt">总共有</span><asp:Label ID="lblRecCount" runat="server"
                Font-Size="9pt" ForeColor="#FF3300"></asp:Label><span style="font-size: 9pt; vertical-align: top; text-align: right;">条记录</span></td>
        <td colspan="3" style="text-align: center;">
            <span style="font-size: 9pt"></span></td>
    </tr>
    <tr>
        <td colspan="5" 
            style="vertical-align: top;text-align: center; background-color:wheat;">
            <asp:DataList ID="DataList1" runat="server" Width="471px" OnItemDataBound="DataList1_ItemDataBound" CssClass="auto-style3">
                <ItemTemplate>
                    <table style="width: 470px; border-right: #99cc00 1px dashed; border-top: #99cc00 1px dashed; border-left: #99cc00 1px dashed; border-bottom: #99cc00 1px dashed; text-align: left;" cellpadding="0" cellspacing="0">
                        <tr>
                            <td style="width: 109px; text-align: center; height: 19px;">
                                <span style="font-size: 9pt">发表时间</span>:</td>
                            <td style="width: 424px; height: 19px; text-align: left;">
                                <asp:Label ID="labTime" runat="server" Font-Size="9pt" Text='<%# DataBinder.Eval (Container.DataItem, "Time") %>'
                                    Width="162px"></asp:Label></td>
                        </tr>
                        <tr>
                            <td style="width: 109px; text-align: center; height: 19px;">
                                <span style="font-size: 9pt">主 &nbsp; 题:</span></td>
                            <td style="width: 424px; height: 19px; text-align: left;">
                                <asp:Label ID="labSubject" runat="server" Font-Size="9pt" Text='<%# DataBinder.Eval (Container.DataItem, "Subject") %>'
                                    Width="330px"></asp:Label><span style="font-size: 9pt"></span></td>
                        </tr>
                        <tr>
                            <td style="width: 109px; height: 17px; text-align: center">
                                <span></span><span style="font-size: 9pt">文章内容</span>:</td>
                            <td style="height: 17px; width: 424px;">
                                <asp:Label ID="labContext" runat="server" Font-Size="9pt" Height="16px" Text='<%# DataBinder.Eval (Container.DataItem, "Content") %>'
                                    Width="407px"></asp:Label></td>
                        </tr>
                        <tr>
                            <td colspan="2" style="vertical-align: top; height: 31px; text-align: right">
                                <span style="vertical-align: top">
                                    <table style="font-size: 9pt; width: 470px; vertical-align: top; text-align: right;" background="../../Images/Skin/BA3.jpg" cellpadding="0" cellspacing="0">
                                        <tr>
                                            <td style="height: 18px; text-align: right">
                                    发表人:<a href='../../Module/Visitor/PersonArticle.aspx?BlogID=<%#DataBinder.Eval(Container.DataItem,"BlogID") %>'><%#DataBinder.Eval(Container.DataItem,"Author") %></a></td>
                                            <td style="width: 108px; height: 18px; text-align: center;">
                                                <a href='ViewReply.aspx?ArticleID=<%#DataBinder.Eval(Container.DataItem,"ArticleID") %>'>
                                        【查看评论】</a></td>
                                            <td style="text-align: center; " class="auto-style1">
                                                <a href='ViewContent.aspx?ArticleID=<%#DataBinder.Eval(Container.DataItem,"ArticleID") %>'>
                                                    【我要评论】</a></td>

                                            <td style="height: 18px; text-align: center; width: 74px;">
                                                <!--<a href='ViewContent.aspx?ArticleID=<%#DataBinder.Eval(Container.DataItem,"ArticleID") %>'>
                                                    赞同</a></td>-->
                                     
                                            
                                        </tr>
                                    </table>
                                </span>
                            </td>
                        </tr>
                    </table>
                      <div style="color: #999; font-style: initial; text-align: right">热度:<%# Eval("num") %></div>
                           
                    <div style="background-color: azure font-size: xx-large; text-align: center">
                                <asp:Button ID="Button1" runat="server" Text="赞同" CommandName="i" CommandArgument='<%# Eval("ArticleID") %>' BackColor="Snow" ></asp:Button>
                            </div>
                   
                </ItemTemplate>
            </asp:DataList></td>
    </tr>
    <tr>
        <td colspan="4" style="height: 20px; text-align: right";>
            <asp:LinkButton ID="lnkbtnfirst" runat="server" CommandName="first" Font-Size="9pt"
                OnCommand="Page_OnClick" CausesValidation="False" Font-Underline="False" ForeColor="Gray">首页</asp:LinkButton>
            <asp:LinkButton ID="lnkbtnPageUp" runat="server" CausesValidation="False" CommandName="prev"
                Font-Size="9pt" Font-Underline="False" ForeColor="Gray" OnCommand="Page_OnClick">上一页</asp:LinkButton>&nbsp;
            <asp:LinkButton ID="lnkbtnPageDown" runat="server" CommandName="next" Font-Size="9pt"
                OnCommand="Page_OnClick" CausesValidation="False" Font-Underline="False" ForeColor="Gray">下一页</asp:LinkButton>&nbsp;
            <asp:LinkButton ID="lnkbtnlast" runat="server" CausesValidation="False" CommandName="last"
                Font-Size="9pt" Font-Underline="False" ForeColor="Gray" OnCommand="Page_OnClick">尾页</asp:LinkButton></td>
    </tr>
</table>