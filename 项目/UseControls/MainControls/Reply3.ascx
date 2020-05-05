<%@ Control Language="C#" AutoEventWireup="true" CodeFile="Reply3.ascx.cs" Inherits="UseControls_MainControls_Reply3" %>
<table align="center" table cellpadding="0" cellspacing="0" style="width: 570px; vertical-align: top; text-align: center;">
    <tr>
        <td colspan="3" rowspan="3" style=" text-align: center">
<asp:DataList ID="DataList1" runat="server" 
    Width="480px">
    <ItemTemplate>
        <table style="width: 410px; vertical-align: top; text-align: center;" cellpadding="0" cellspacing="0">
            <tr>
                <td style="width: 218px; text-align: right">
                    <span style="font-size: 9pt">评论时间</span>:</td>
                <td style="width: 174px">
                    <asp:Label ID="labTime" runat="server" Font-Size="9pt" Text='<%# DataBinder.Eval (Container.DataItem, "Time") %>'
                        Width="98px"></asp:Label></td>
                <td style="width: 110px; text-align: right">
                    <span style="font-size: 9pt">评论主题</span>:</td>
                <td style="width: 144px; text-align: left;">
                    <asp:Label ID="labSubject" runat="server" Font-Size="9pt" Text='<%#DataBinder.Eval (Container.DataItem, "Subject") %>'
                        Width="159px"></asp:Label></td>
            </tr>
            <tr>
                <td style="width: 218px; height: 17px; text-align: right">
                    <span></span><span style="font-size: 9pt">评论内容</span>:</td>
                <td colspan="3" style="height: 17px; text-align: left;">
                    <asp:Label ID="labContext" runat="server" Font-Size="9pt" Height="16px" Text='<%# DataBinder.Eval (Container.DataItem, "Content") %>'
                        Width="325px"></asp:Label></td>
            </tr>
            <tr>
                <td style="height: 24px" colspan="4">
                    <span style="font-size: 9pt">
                        <table style="font-size: 9pt; width: 410px; height: 14px;" border="1" cellpadding="0" cellspacing="0" background="../../Images/Skin/BA3.jpg">
                            <tr>
                                <td colspan="2" style="height: 18px; text-align: right">
                                    发表人:<a href='../../Module/Visitor/PersonInfo.aspx?VisitorID=<%#DataBinder.Eval(Container.DataItem,"VisitorID") %>'><%#DataBinder.Eval(Container.DataItem,"VisitorName") %></a></td>
                                <td style="height: 18px; text-align: left;" colspan="3">
                                </td>
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
    </tr>
</table>
