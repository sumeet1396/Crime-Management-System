<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="VictimList.aspx.cs" Inherits="VictimList" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style="width:80%; height:100%; position:relative; left:20%;">
    <center>
        <div>
        <br /><br />
        <h1>Victim List</h1>
        <asp:Label ID="Label1" runat="server" Text="Search Victim"></asp:Label>
        <asp:TextBox ID="TextBox1" runat="server" TextMode="Search" Width="300px" OnTextChanged="TextBox1_TextChanged"></asp:TextBox>
        <a href="New-Victim.aspx" style="text-decoration:none;">Add new Victim</a>      
    </div><br />
    <div>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="victim_ID" DataSourceID="VictimList1" OnSelectedIndexChanged="GridView1_SelectedIndexChanged1" BorderColor="White">
            <Columns>
                <asp:BoundField DataField="victim_ID" HeaderText="victim_ID" InsertVisible="False" ReadOnly="True" SortExpression="victim_ID" />
                <asp:BoundField DataField="firstname" HeaderText="firstname" SortExpression="firstname" />
                <asp:BoundField DataField="lastname" HeaderText="lastname" SortExpression="lastname" />
                <asp:BoundField DataField="DOB" HeaderText="DOB" SortExpression="DOB" DataFormatString="{0:d}"/>
                <asp:BoundField DataField="contact_no" HeaderText="contact_no" SortExpression="contact_no" />
                <asp:BoundField DataField="age" HeaderText="age" SortExpression="age" />
                <asp:CommandField SelectText="View Full Details" ShowSelectButton="True" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="VictimList1" runat="server" ConnectionString="<%$ ConnectionStrings:CrimeDBConnectionString %>" SelectCommand="SELECT [victim_ID], [firstname], [lastname], [DOB], [contact_no], [age] FROM [victim]"></asp:SqlDataSource>
    </div></center>
    </div>
</asp:Content>

