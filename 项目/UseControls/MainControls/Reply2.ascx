<%@ Control Language="C#" AutoEventWireup="true" CodeFile="Reply2.ascx.cs" Inherits="UseControls_MainControls_Reply2" %>
<table align="center" table style="width: 404px" cellpadding="0" cellspacing="0">
    <tr>
        <td colspan="4" rowspan="2" style="text-align: center; vertical-align: top; height: 366px;">
<asp:DataList ID="DataList1" runat="server" OnDeleteCommand="DataList1_DeleteCommand"
    Width="383px" OnItemDataBound="DataList1_ItemDataBound">
    <ItemTemplate>
        <table style="width: 401px" cellpadding="0" cellspacing="0">
            <tr>
                <td style="width: 91px; text-align: right">
                    <span style="font-size: 9pt">评论时间</span>:</td>
                <td style="width: 57px">
                    <asp:Label ID="labTime" runat="server" Font-Size="9pt" Text='<%# DataBinder.Eval (Container.DataItem, "Time") %>'
                        Width="98px"></asp:Label></td>
                <td style="width: 74px; text-align: right">
                    <span style="font-size: 9pt">评论主题</span>:</td>
                <td style="width: 168px; text-align: left;">
                    <asp:Label ID="labSubject" runat="server" Font-Size="9pt" Text='<%# DataBinder.Eval (Container.DataItem, "Subject") %>'
                        Width="153px"></asp:Label></td>
            </tr>
            <tr>
                <td style="width: 91px; height: 17px; text-align: right">
                    <span></span><span style="font-size: 9pt">评论内容</span>:</td>
                <td colspan="3" style="height: 17px; text-align: left;">
                    <asp:Label ID="labContext" runat="server" Font-Size="9pt" Height="16px" Text='<%# DataBinder.Eval (Container.DataItem, "Content") %>'
                        Width="338px"></asp:Label></td>
            </tr>
            <tr>
                <td colspan="4" style="height: 33px">
                    <span style="font-size: 9pt">
                        <table style="font-size: 9pt; width: 410px; background-image: url(../../Images/Skin/BA3.jpg);" cellpadding="0" cellspacing="0">
                            <tr>
                                <td colspan="2" style="height: 17px; text-align: right; width: 355px;">
                                    发表人:<a href='../../Module/Blog/PersonInfo.aspx?VisitorID=<%#DataBinder.Eval(Container.DataItem,"VisitorID") %>'><%#DataBinder.Eval(Container.DataItem,"VisitorName") %></a></td>
                                <td style="width: 22px; height: 17px">
                                </td>
                                <td colspan="2" style="height: 17px; text-align: center; width: 78px;">
                                    <asp:LinkButton ID="LinkButton1" runat="server" CommandName="delete" Font-Underline="False" ForeColor="Blue">【删除评论】</asp:LinkButton></td>
                            </tr>
                            <tr>
                            </tr>
                            <tr>
                            </tr>
                            <tr>
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
    </tr>
    <tr>
        <td colspan="3" style="width: 4249px; text-align: right">
            <asp:LinkButton ID="lnkbtnfirst" runat="server" CommandName="first" Font-Size="9pt"
                Font-Underline="False" ForeColor="Red" OnCommand="Page_OnClick">首页</asp:LinkButton>
            &nbsp;
            <asp:LinkButton ID="lnkbtnUp" runat="server" CommandName="prev" Font-Size="9pt" OnCommand="Page_OnClick" Font-Underline="False" ForeColor="Red">上一页</asp:LinkButton>
            <asp:LinkButton ID="lnkbtnNext" runat="server" CommandName="next" Font-Size="9pt" OnCommand="Page_OnClick" Font-Underline="False" ForeColor="Red">下一页</asp:LinkButton>
            <asp:LinkButton ID="lnkbtnlast" runat="server" CommandName="last" Font-Size="9pt"
                Font-Underline="False" ForeColor="Red" OnCommand="Page_OnClick">尾页</asp:LinkButton></td>
    </tr>
</table>
