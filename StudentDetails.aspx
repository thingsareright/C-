<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="StudentDetails.aspx.cs" Inherits="StudentDetails" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:GridView ID="GridView1" runat="server" CellPadding="4" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None">
        <AlternatingRowStyle BackColor="White" />
        <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
        <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
        <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
        <SortedAscendingCellStyle BackColor="#FDF5AC" />
        <SortedAscendingHeaderStyle BackColor="#4D0000" />
        <SortedDescendingCellStyle BackColor="#FCF6C0" />
        <SortedDescendingHeaderStyle BackColor="#820000" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:AttendanceConnectionString %>" OnSelecting="SqlDataSource1_Selecting" SelectCommand="select student.sid, student.name,department.name, absence.date, absence.reason 
from student, absence, department
where student.sid = absence.sid and department.did = student.did and student.sid = @SID and absence.Cid = @CID and absence.Tid = @TID
order by absence.date ;">
        <SelectParameters>
            <asp:QueryStringParameter DefaultValue="1" Name="SID" QueryStringField="SID" />
            <asp:QueryStringParameter DefaultValue="0" Name="CID" QueryStringField="CID" />
            <asp:SessionParameter DefaultValue="0" Name="TID" SessionField="TID" />
        </SelectParameters>
    </asp:SqlDataSource>
</asp:Content>

