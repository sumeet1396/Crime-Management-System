<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="CriminalList.aspx.cs" Inherits="CriminalList" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
   
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style="width:80%; height:100%; position:relative; left:20%;">
        <center>
        <div>
        <h1>Criminal List</h1></><br />
        <asp:Label ID="Label1" runat="server" Text="Search Criminal"></asp:Label>
        <asp:TextBox ID="TextBox1" runat="server" TextMode="Search" Width="300px" OnTextChanged="TextBox1_TextChanged"></asp:TextBox>
    </div><br />
    <div class="c-table">   
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="criminal_id" DataSourceID="SqlDataSource1" Height="148px" Width="750px" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" BorderColor="White">
        <Columns>
            <asp:BoundField DataField="criminal_id" HeaderText="criminal_id" InsertVisible="False" ReadOnly="True" SortExpression="criminal_id" />
            <asp:BoundField DataField="firstname" HeaderText="firstname" SortExpression="firstname" />
            <asp:BoundField DataField="lastname" HeaderText="lastname" SortExpression="lastname" />
            <asp:BoundField DataField="BirthDate" HeaderText="BirthDate" SortExpression="BirthDate" DataFormatString="{0:d}"  ItemStyle-Width="110px"/>
            <asp:BoundField DataField="BirthPlace" HeaderText="BirthPlace" SortExpression="BirthPlace" />
            <asp:BoundField DataField="Gender" HeaderText="Gender" SortExpression="Gender" />
            <asp:BoundField DataField="height" HeaderText="height" SortExpression="height" />
            <asp:BoundField DataField="Weight" HeaderText="Weight" SortExpression="Weight" />
            <asp:BoundField DataField="Address" HeaderText="Address" SortExpression="Address" />
            <asp:ButtonField CommandName="Select" Text="View Full Details" />
        </Columns>
        
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CrimeDBConnectionString %>" SelectCommand="SELECT [criminal_id], [firstname], [lastname], [BirthDate], [BirthPlace], [Gender], [height], [Weight], [Address] FROM [criminal]"></asp:SqlDataSource>
    </div></center>
        </div>
</asp:Content>

