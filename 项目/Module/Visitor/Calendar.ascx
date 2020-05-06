<%@ Control Language="C#" AutoEventWireup="true" CodeFile="Calendar.ascx.cs" Inherits="UseControls_LeftContorls_Calendar" %>
<asp:Calendar ID="Calendar1" runat="server" BackColor="White" 
    BorderColor="Black" Font-Names="Verdana"
    Font-Size="9pt" ForeColor="Black" Height="169px" Width="220px" 
    BorderStyle="Solid" CellSpacing="1" NextPrevFormat="ShortMonth">
    <SelectedDayStyle BackColor="#333399" ForeColor="White" />
    <TodayDayStyle BackColor="#999999" ForeColor="White" />
    <OtherMonthDayStyle ForeColor="#999999" />
    <DayStyle BackColor="#33cccc" />
    <NextPrevStyle Font-Size="8pt" ForeColor="White" Font-Bold="True" />
    <DayHeaderStyle Height="8pt" Font-Bold="True" Font-Size="8pt" 
        ForeColor="#333333" />
    <TitleStyle BackColor="#669999" Font-Bold="True"
        Font-Size="12pt" ForeColor="White" BorderStyle="Solid" Height="12pt" />
</asp:Calendar>
