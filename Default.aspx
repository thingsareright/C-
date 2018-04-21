<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    首页
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div> this is neirong<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:AttendanceConnectionString %>" SelectCommand="SELECT DISTINCT [Tid], [Name], [Password] FROM [teacher]" OnSelecting="SqlDataSource1_Selecting" ProviderName="<%$ ConnectionStrings:AttendanceConnectionString.ProviderName %>"></asp:SqlDataSource>
        <br />
    </div>
    
<div>
    <br />
    <asp:Login ID="Login1" runat="server" OnAuthenticate="Login1_Authenticate">
    </asp:Login>
    <div>
    </div>
</div>
    
</asp:Content>

