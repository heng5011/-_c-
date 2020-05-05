<%@ Control Language="C#" AutoEventWireup="true" CodeFile="NewRevert2.ascx.cs" Inherits="UseControls_LeftContorls_NewRevert2" %>
<table style="width: 146px; height: 115px">
    <tr>
        <td colspan="3" rowspan="3" style="vertical-align: top; height: 113px; text-align: left">
                <asp:DataList ID="DataList1" runat="server" Font-Size="9pt"
                   Width="140px">
                    <ItemTemplate>
                        <table style="width: 140px; vertical-align: top; text-align: left;" cellpadding="0" cellspacing="0">
                            <tr>
                                <td colspan="3" style="width: 182px; height: 8px;">
                                    <a href='../../Module/Visitor/ViewReply.aspx?Subject=<%#DataBinder.Eval(Container.DataItem,"Subject") %>'>
                                        <%#DataBinder.Eval(Container.DataItem,"Subject") %>
                                    </a>
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
