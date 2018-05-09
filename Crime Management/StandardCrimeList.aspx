<%@ Page Title="" Language="C#" MasterPageFile="~/StandardUserMasterPage.master" AutoEventWireup="true" CodeFile="StandardCrimeList.aspx.cs" Inherits="StandardCrimeList" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style="width:80%; height:100%; position:relative; left:20%;">
        <center>
            <h1>Crime List</h1><br /><br />
               <asp:Label ID="Label1" runat="server" Text="Search Case"></asp:Label>
             <asp:TextBox ID="TextBox1" runat="server" TextMode="Search" Width="300px"></asp:TextBox><br /><br />
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
        </center>
    </div>
</asp:Content>

