<%@ Control Language="C#" AutoEventWireup="true" CodeFile="NewRevert2.ascx.cs" Inherits="UseControls_LeftContorls_NewRevert2" %>
<table style="width: 146px; height: 115px" cellpadding="0" cellspacing="0">
    <tr>
        <td colspan="3" rowspan="3" style="vertical-align: top; height: 113px; text-align: left">
                <asp:DataList ID="DataList1" runat="server" Font-Size="20pt"
                   Width="148px" >
                    <ItemTemplate>
                        <table style="width: 140px; vertical-align: top; text-align: left;" cellpadding="0" cellspacing="0" id="table">
                            <tr>
                                <td colspan="3" style="width: 182px; height: 8px;">
                                    <a href='../../Module/Visitor/ViewReply.aspx?ArticleID=<%#DataBinder.Eval(Container.DataItem,"ArticleID") %>'>
                                   <!-- 在运行时计算数据绑定表达式，并将结果格式化为要在请求浏览器中显示的文本,,Container.DataItem，表示绑定到当前行的数据源
                                   DataBinder:数据绑定管理器
                                   Eval：求值Container：被绑定到的容器，比如GridView,DataList等
                                   DataItem：容器的数据项,包括项、交替模板行
                                   ArticleID：绑定到容器的字段（来自数据库表字段）-->
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
