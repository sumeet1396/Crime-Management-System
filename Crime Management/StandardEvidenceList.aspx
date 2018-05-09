<%@ Page Title="" Language="C#" MasterPageFile="~/StandardUserMasterPage.master" AutoEventWireup="true" CodeFile="StandardEvidenceList.aspx.cs" Inherits="StandardEvidenceList" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style="width:80%; height:100%; position:relative; left:20%;">
        <center>
            <div>
                <h1>Evidence List</h1><br /><br />
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="evidence_id" DataSourceID="SqlDataSource1" BorderColor="White">
                <Columns>
                    <asp:BoundField DataField="evidence_id" HeaderText="evidence_id" InsertVisible="False" ReadOnly="True" SortExpression="evidence_id" />
                    <asp:BoundField DataField="evidence_specification" HeaderText="evidence_specification" SortExpression="evidence_specification" />
                    <asp:BoundField DataField="usedAsWeapon" HeaderText="usedAsWeapon" SortExpression="usedAsWeapon" />
                    <asp:BoundField DataField="evidence_location" HeaderText="evidence_location" SortExpression="evidence_location" />
                    <asp:ImageField DataImageUrlField="evidence_photo" HeaderText="Evidence Image">
                        <ControlStyle Height="75px" Width="75px" />
                    </asp:ImageField>
                </Columns>
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CrimeDBConnectionString %>" SelectCommand="SELECT * FROM [Evidence]"></asp:SqlDataSource>
            </div>
        </center>
    </div>
</asp:Content>

