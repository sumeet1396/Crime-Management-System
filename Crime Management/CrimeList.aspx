<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="CrimeList.aspx.cs" Inherits="CrimeList" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <center>
    <div style="width:80%; height:100%; position:relative; left:10%;">
    <h1>Case List</h1><br />
     <asp:Label ID="Label1" runat="server" Text="Search Case"></asp:Label>
     <asp:TextBox ID="TextBox1" runat="server" TextMode="Search" Width="300px"></asp:TextBox>
     <a href="New-Case.aspx" style="text-decoration:none;">Add new Case</a> <br /><br />
      
     <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="case_ID" DataSourceID="SqlDataSource1" OnSelectedIndexChanged="GridView1_SelectedIndexChanged1" BorderColor="White">
         <Columns>
             <asp:BoundField DataField="case_ID" HeaderText="case_ID" InsertVisible="False" ReadOnly="True" SortExpression="case_ID" />
             <asp:BoundField DataField="caseName" HeaderText="caseName" SortExpression="caseName" />
             <asp:BoundField DataField="crimetypeID" HeaderText="crimetypeID" SortExpression="crimetypeID" />
             <asp:BoundField DataField="jailTerm" HeaderText="jailTerm" SortExpression="jailTerm" />
             <asp:BoundField DataField="Jail_ID" HeaderText="Jail_ID" SortExpression="Jail_ID" />
             <asp:CommandField SelectText="View full Details" ShowSelectButton="True" />
         </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CrimeDBConnectionString %>" SelectCommand="SELECT [case_ID], [caseName], [crimetypeID], [jailTerm], [Jail_ID] FROM [CaseEntries]"></asp:SqlDataSource>
    </div>
    </center>
</asp:Content>

