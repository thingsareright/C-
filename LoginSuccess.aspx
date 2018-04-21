<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="LoginSuccess.aspx.cs" Inherits="about" %>

<%@ Register assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" namespace="System.Web.UI.DataVisualization.Charting" tagprefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    关于
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
    <p>
        欢迎登录学生考勤系统！
    </p>
    <p>
        <asp:Label ID="Label2" runat="server" Text="Label">教师名：</asp:Label>
        <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" CellPadding="4" DataSourceID="SqlDataSource1" GridLines="None" Height="50px" OnPageIndexChanging="DetailsView1_PageIndexChanging" Width="125px" ForeColor="#333333">
            <AlternatingRowStyle BackColor="White" />
            <CommandRowStyle BackColor="#FFFFC0" Font-Bold="True" />
            <FieldHeaderStyle BackColor="#FFFF99" Font-Bold="True" />
            <Fields>
                <asp:BoundField DataField="Name" HeaderText="姓名" SortExpression="Name" />
            </Fields>
            <FooterStyle BackColor="#990000" ForeColor="White" Font-Bold="True" />
            <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
            <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
        </asp:DetailsView>
    </P>
        <asp:Label ID="Label3" runat="server" Text="Label">您的课程：</asp:Label>
          
  
   
 
    
    
    <br />
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataSourceID="SqlDataSource2" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" CellPadding="4" ForeColor="#333333" GridLines="None">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:BoundField DataField="cid" HeaderText="cid" SortExpression="cid" />
            <asp:BoundField DataField="cname" HeaderText="cname" SortExpression="cname" />
            <asp:BoundField DataField="credit" HeaderText="credit" SortExpression="credit" />
            <asp:BoundField DataField="dname" HeaderText="dname" SortExpression="dname" />
            <asp:HyperLinkField DataNavigateUrlFields="cid,dname" DataNavigateUrlFormatString="CourseDetails.aspx?CID={0}&amp;DNAME={1}" Text="转到课程" />
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
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:AttendanceConnectionString %>" SelectCommand="SELECT DISTINCT course.cid, course.name as cname, course.credit, department.name as dname  FROM course INNER JOIN stucourse ON course.tid = stucourse.tid INNER JOIN department ON course.did = department.did WHERE (stucourse.tid = @TID)">
        <SelectParameters>
            <asp:SessionParameter DefaultValue="0" Name="TID" SessionField="TID" />
        </SelectParameters>
    </asp:SqlDataSource>
    <br />
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:AttendanceConnectionString %>" OnSelecting="SqlDataSource1_Selecting" SelectCommand="SELECT Name FROM teacher WHERE Tid = @TID">
        <SelectParameters>
            <asp:SessionParameter DefaultValue="0" Name="Tid" SessionField="TID" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
          
  
   
 
    
    
</asp:Content>

