<%@ Control Language="C#" AutoEventWireup="true" CodeFile="NewReview.ascx.cs" Inherits="UseControls_LeftContorls_NewReview" %>
<table cellpadding="0" cellspacing="0" style="width: 145px; height: 88px">
    <tr>
        <td style="vertical-align: top; width: 100px; height: 21px">
            <asp:DataList ID="DataList1" runat="server" Width="145px" Font-Size="20pt">
                <ItemTemplate>
                    <table style="width: 145px; vertical-align: top; text-align: left; ">
                        <tr>
                            <td colspan="3" style="width: 182px; height: 9px; vertical-align: top; text-align: left;" >
                            <a href="../../Module/Blog/ReplyManage.aspx?Subject=<%#DataBinder.Eval(Container.DataItem,"Subject") %>" ><%#DataBinder.Eval(Container.DataItem,"Subject") %></a>
                            </td>
                        </tr>
                    </table>
                </ItemTemplate>
            </asp:DataList></td>
    </tr>
</table>
