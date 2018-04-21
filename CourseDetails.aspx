<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="CourseDetails.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:BoundField DataField="Sid" HeaderText="Sid" SortExpression="Sid" />
            <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
            <asp:BoundField DataField="num" HeaderText="num" ReadOnly="True" SortExpression="num" />
            <asp:BoundField DataField="dname" HeaderText="dname" SortExpression="dname" />
        </Columns>
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
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:AttendanceConnectionString %>" OnSelecting="SqlDataSource1_Selecting" SelectCommand="SELECT Absence.Sid, student.name, count(*)  as num, department.name as dname
 from Absence, student , department
WHERE Absence.Tid= @TID and Absence.cid = @CID and department.name = @DNAME
group by Absence.Tid, student.name, department.name,Absence.Sid">
        <SelectParameters>
            <asp:SessionParameter DefaultValue="0" Name="TID" SessionField="TID" />
            <asp:QueryStringParameter DefaultValue="0" Name="CID" QueryStringField="CID" />
            <asp:QueryStringParameter DefaultValue="0" Name="DNAME" QueryStringField="DNAME" />
        </SelectParameters>
    </asp:SqlDataSource>
</asp:Content>

