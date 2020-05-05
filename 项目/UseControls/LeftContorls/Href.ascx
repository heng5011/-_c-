<%@ Control Language="C#" AutoEventWireup="true" CodeFile="Href.ascx.cs" Inherits="UseControls_LeftContorls_FriendHref" %>
<table style="width: 145px" cellpadding="0" cellspacing="0">
    <tr>
        <td colspan="3" rowspan="3" style="height: 119px; text-align: left" >
            <asp:DataList ID="DataList1" runat="server"
                Width="145px" Font-Size="9pt" CssClass="../../CSS/StyleSheet.css" Font-Underline="False" OnItemDataBound="DataList1_ItemDataBound">
                <ItemTemplate>
                    <table style="width: 143px; color: #000000; text-decoration: none;" cellpadding="0" cellspacing="0">
                        <tr>
                            <td colspan="3" rowspan="3" style="width: 173px; height: 7px; color: #000000; text-decoration: none; text-align: left;">
                            <a href="<%#DataBinder.Eval(Container.DataItem,"Url") %>" >
                            <%#DataBinder.Eval(Container.DataItem,"Name") %></a>
                            </td>
                        </tr>
                        <tr>
                        </tr>
                        <tr>
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
