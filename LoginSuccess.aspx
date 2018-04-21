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
        <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataSourceID="SqlDataSource1" GridLines="Vertical" Height="50px" OnPageIndexChanging="DetailsView1_PageIndexChanging" Width="125px">
            <AlternatingRowStyle BackColor="#DCDCDC" />
            <EditRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
            <Fields>
                <asp:BoundField DataField="Name" HeaderText="姓名" SortExpression="Name" />
            </Fields>
            <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
            <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
            <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
        </asp:DetailsView>
    </P>
        <asp:Label ID="Label3" runat="server" Text="Label">您的课程：</asp:Label>
          
  
   
 
    
    
    <br />
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataSourceID="SqlDataSource2" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
        <Columns>
            <asp:BoundField DataField="cid" HeaderText="cid" SortExpression="cid" />
            <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
            <asp:BoundField DataField="credit" HeaderText="credit" SortExpression="credit" />
            <asp:BoundField DataField="Expr1" HeaderText="Expr1" SortExpression="Expr1" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:AttendanceConnectionString %>" SelectCommand="SELECT DISTINCT course.cid, course.name, course.credit, department.name AS Expr1 FROM course INNER JOIN stucourse ON course.tid = stucourse.tid INNER JOIN department ON course.did = department.did WHERE (stucourse.tid = @TID)">
        <SelectParameters>
            <asp:SessionParameter DefaultValue="0" Name="TID" SessionField="TID" />
        </SelectParameters>
    </asp:SqlDataSource>
    <br />
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:AttendanceConnectionString %>" OnSelecting="SqlDataSource1_Selecting" SelectCommand="SELECT [Name] FROM [teacher] WHERE ([Tid] = @Tid)">
        <SelectParameters>
            <asp:SessionParameter DefaultValue="0" Name="Tid" SessionField="TID" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
          
  
   
 
    
    
</asp:Content>

