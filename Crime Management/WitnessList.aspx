<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="WitnessList.aspx.cs" Inherits="WitnessList" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style="width:80%; height:100%; position:relative; left:20%;">
    <center>
    <div>
    <h1>Witness List</h1><br />
     <asp:Label ID="Label1" runat="server" Text="Search Witness"></asp:Label>
     <asp:TextBox ID="TextBox1" runat="server" TextMode="Search" Width="300px"></asp:TextBox>
     <a href="New-Witness.aspx" style="text-decoration:none;">Add new Witness</a> 
    </div><br />
     <div>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="witness_ID" DataSourceID="WitnessList1" OnSelectedIndexChanged="GridView1_SelectedIndexChanged1" BorderColor="White">
            <Columns>
                <asp:BoundField DataField="witness_ID" HeaderText="witness_ID" InsertVisible="False" ReadOnly="True" SortExpression="witness_ID" />
                <asp:BoundField DataField="firstname" HeaderText="firstname" SortExpression="firstname" />
                <asp:BoundField DataField="lastname" HeaderText="lastname" SortExpression="lastname" />
                <asp:BoundField DataField="DOB" HeaderText="DOB" SortExpression="DOB" DataFormatString="{0:d}"/>
                <asp:BoundField DataField="gender" HeaderText="gender" SortExpression="gender" />
                <asp:BoundField DataField="contact_no" HeaderText="contact_no" SortExpression="contact_no" />
                <asp:BoundField DataField="age" HeaderText="age" SortExpression="age" />
                <asp:CommandField SelectText="View Full Details" ShowSelectButton="True" />
            </Columns>
         </asp:GridView>
         <asp:SqlDataSource ID="WitnessList1" runat="server" ConnectionString="<%$ ConnectionStrings:CrimeDBConnectionString %>" SelectCommand="SELECT [witness_ID], [firstname], [lastname], [DOB], [gender], [contact_no], [age] FROM [witness]"></asp:SqlDataSource>
     </div>
    </div>
     </center>
</asp:Content>

