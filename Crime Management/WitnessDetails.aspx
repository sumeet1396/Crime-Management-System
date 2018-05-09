<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="WitnessDetails.aspx.cs" Inherits="WitnessDetails" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style="width:80%; height:100%; position:relative; left:20%;">
        <center>
            <h1>Witness Details</h1>
             <asp:Table ID="Table1" runat="server" Height="272px" Width="700px">
            <asp:TableRow>
                <asp:TableCell RowSpan="3">Victim ID : <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label><br />
                    <asp:Image ID="Image1" runat="server" width="250px" Height="250px"></asp:Image>
                </asp:TableCell>
                <asp:TableCell ColumnSpan="2">Victim Name : <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label></asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell>Birth Place : <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label></asp:TableCell>
                <asp:TableCell>Age : <asp:Label ID="Label4" runat="server" Text="Label"></asp:Label></asp:TableCell>
                <asp:TableCell>DOB : <asp:Label ID="Label5" runat="server" Text="Label"></asp:Label></asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell>Gender : <asp:Label ID="Label6" runat="server" Text="Label"></asp:Label></asp:TableCell>
                <asp:TableCell ColumnSpan="2">Contact : <asp:Label ID="Label7" runat="server" Text="Label"></asp:Label></asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell ColumnSpan="3">Address<br /><asp:Label ID="Label8" runat="server" Text="Label"></asp:Label></asp:TableCell>
             </asp:TableRow>
        </asp:Table><br /><br />

             <h3>Related Cases</h3>
            <p>
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="case_ID" DataSourceID="relatedcase">
                    <Columns>
                        <asp:BoundField DataField="case_ID" HeaderText="case_ID" InsertVisible="False" ReadOnly="True" SortExpression="case_ID" />
                        <asp:BoundField DataField="caseName" HeaderText="caseName" SortExpression="caseName" />
                        <asp:BoundField DataField="crimetypeID" HeaderText="crimetypeID" SortExpression="crimetypeID" />
                        <asp:BoundField DataField="criminal_id" HeaderText="criminal_id" SortExpression="criminal_id" />
                    </Columns>
                </asp:GridView>
                <asp:SqlDataSource ID="relatedcase" runat="server" ConnectionString="<%$ ConnectionStrings:CrimeDBConnectionString %>" SelectCommand="SELECT [case_ID], [caseName], [crimetypeID], [criminal_id] FROM [CaseEntries] WHERE ([witness_ID] = @witness_ID)">
                    <SelectParameters>
                        <asp:SessionParameter Name="witness_ID" SessionField="getWitnessData" Type="Int32" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </p>
        </center>
    </div>
</asp:Content>

