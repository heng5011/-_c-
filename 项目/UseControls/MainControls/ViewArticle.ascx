<%@ Control Language="C#" AutoEventWireup="true" CodeFile="ViewArticle.ascx.cs" Inherits="UseControls_MainControls_ViewArticle" %>
<table style="width: 570px" cellpadding="0" cellspacing="0">
    <tr>
        <td colspan="2" style="width: 158px; text-align: right; height: 14px;">
            <span style="font-size: 9pt">共有</span><asp:Label ID="lblRecCount" runat="server"
                Font-Size="9pt" ForeColor="#FF3300"></asp:Label><span style="font-size: 9pt">条记录</span></td>
        <td colspan="2" style="text-align: center; height: 14px;">
            </td>
    </tr>
    <tr>
        <td colspan="4" style="vertical-align: top; height: 155px; text-align: center">
            <asp:DataList ID="DataList1" runat="server" 
                Width="471px" OnItemDataBound="DataList1_ItemDataBound">
                <ItemTemplate>
                    <table style="width: 410px; border-right: #66cc33 1px dashed; border-top: #66cc33 1px dashed; border-left: #66cc33 1px dashed; border-bottom: #66cc33 1px dashed; background-color: #CCFFFF;" 
                        cellpadding="0" cellspacing="0">
                        <tr>
                            <td style="width: 60px; text-align: right">
                                <span style="font-size: 9pt">发表时间</span>:</td>
                            <td style="width: 170px">
                                <asp:Label ID="labTime" runat="server" Font-Size="9pt" Text='<%#DataBinder.Eval (Container.DataItem, "Time") %>'
                                    Width="119px"></asp:Label></td>
                            <td style="width: 40px; text-align: right">
                                <span style="font-size: 9pt">主题</span>:</td>
                            <td style="width: 146px">
                                <asp:Label ID="labSubject" runat="server" Font-Size="9pt" Text='<%# DataBinder.Eval (Container.DataItem, "Subject") %>'
                                    Width="138px"></asp:Label></td>
                        </tr>
                        <tr>
                            <td style="height: 17px; text-align: right">
                                <span></span><span style="font-size: 9pt">文章内容</span>:</td>
                            <td colspan="3" style="height: 17px; text-align: left;">
                                <asp:Label ID="labContext" runat="server" Font-Size="9pt" Height="16px" Text='<%# DataBinder.Eval (Container.DataItem, "Content") %>'
                                    Width="333px"></asp:Label></td>
                        </tr>
                        <tr>
                            <td style="height: 36px; vertical-align: text-top;" colspan="4">
                                <span>
                                    <table style="font-size: 9pt; width: 410px" cellpadding="0" cellspacing="0" background="../../Images/Skin/BA3.jpg">
                                        <tr>
                                            <td colspan="2" style="height: 18px; text-align: right" >
                                                发表人:<a href='../../Module/Blog/BlogInfo.aspx?BlogID=<%#DataBinder.Eval(Container.DataItem,"BlogID") %>'><%#DataBinder.Eval(Container.DataItem,"Author") %></a></td>
                                            <td style="width: 100px; height: 18px; text-align: center;">
                                             <a href=   "../../Module/Blog/ReplyManage.aspx?ArticleID=<%#DataBinder.Eval(Container.DataItem,"ArticleID") %>">【查看评论】</a></td>
                                            <td colspan="2" style="height: 18px; text-align: center; width: 36px;">
                                            </td>
                                        </tr>
                                    </table>
                                </span>
                            </td>
                        </tr>
                    </table>
                </ItemTemplate>
            </asp:DataList></td>
    </tr>
    <tr>
        <td colspan="4" style="height: 8px; text-align: right">
            <asp:LinkButton ID="lnkbtnFir" runat="server" CommandName="first" Font-Size="9pt"
                Font-Underline="False" ForeColor="Red" Height="5px" OnCommand="Page_OnClick"
                Width="28px">首页</asp:LinkButton>&nbsp;
            <asp:LinkButton ID="lnkbtnPageUp" runat="server" CommandName="prev" Font-Size="9pt"
                Font-Underline="False" ForeColor="Red" OnCommand="Page_OnClick">上一页</asp:LinkButton>
            <asp:LinkButton ID="lnkbtnPageDown" runat="server" CommandName="next" Font-Size="9pt"
                Font-Underline="False" ForeColor="Red" OnCommand="Page_OnClick">下一页</asp:LinkButton>
            <asp:LinkButton ID="lnkbtnlast" runat="server" CommandName="last" Font-Size="9pt"
                Font-Underline="False" ForeColor="Red" Height="7px" OnCommand="Page_OnClick">尾页</asp:LinkButton></td>
    </tr>
</table>
