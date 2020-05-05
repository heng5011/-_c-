<%@ Control Language="C#" AutoEventWireup="true" CodeFile="Reply.ascx.cs" Inherits="UseControls_MainControls_Reply" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<HTML>
	<HEAD>
		<title>回复留言</title>
		<meta content="Microsoft Visual Studio .NET 7.1" name="GENERATOR">
		<meta content="C#" name="CODE_LANGUAGE">
		<meta content="JavaScript" name="vs_defaultClientScript">
		<meta content="http://schemas.microsoft.com/intellisense/ie5" name="vs_targetSchema">
		<script src="ubb.js"></script>
	</HEAD>
	<body MS_POSITIONING="GridLayout">
        <table align="center" table style="width: 373px; height: 389px;" cellpadding="0" cellspacing="0">
            <tr>
                <td colspan="4" style="text-align: center; width: 305px; vertical-align: top; height: 347px;">
                    <asp:DataList ID="DataList1" runat="server" Width="327px" OnDeleteCommand="DataList1_DeleteCommand" OnItemDataBound="DataList1_ItemDataBound">
                        <ItemTemplate>
                            <table style="width: 410px" cellpadding="0" cellspacing="0">
                                <tr>
                                    <td style="width: 96px; text-align: right">
                                        <span style="font-size: 9pt">评论时间</span>:</td>
                                    <td style="width: 61px">
                                        <asp:Label ID="labTime" runat="server" Font-Size="9pt" Width="98px" Text='<%# DataBinder.Eval (Container.DataItem, "Time") %>'></asp:Label></td>
                                    <td style="width: 91px; text-align: right">
                                        <span style="font-size: 9pt">评论主题</span>:</td>
                                    <td style="width: 148px; text-align: left;">
                                        <asp:Label ID="labSubject" runat="server" Font-Size="9pt" Width="159px" Text=<%#DataBinder.Eval (Container.DataItem, "Subject") %>></asp:Label></td>
                                </tr>
                                <tr>
                                    <td style="width: 96px; height: 17px; text-align: right">
                                        <span></span><span style="font-size: 9pt">评论内容</span>:</td>
                                    <td colspan="3" style="height: 17px; text-align: left;">
                                        <asp:Label ID="labContext" runat="server" Height="16px" Width="330px" Text='<%# DataBinder.Eval (Container.DataItem, "Content") %>' Font-Size="9pt"></asp:Label></td>
                                </tr>
                                <tr>
                                    <td colspan="4" style="height: 36px; vertical-align: top;">
                                        <span style="font-size: 9pt">
                                            <table style="font-size: 9pt; width: 410px; height: 9px;" background="../../Images/Skin/BA3.jpg" cellpadding="0" cellspacing="0">
                                                <tr>
                                                    <td style="text-align: right; height: 20px; width: 293px;" colspan="2">
                                                        发表人:<a href="../../Module/Blog/PersonInfo.aspx?VisitorID=<%#DataBinder.Eval(Container.DataItem,"VisitorID") %>"><%#DataBinder.Eval(Container.DataItem,"VisitorName") %></a></td>
                                                    <td style="width: 7px; height: 20px;">
                                                        </td>
                                                    <td colspan="2" style="height: 20px; text-align: center; width: 135px;">
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
        </table>
	</body>
</HTML>
