<%@ Page Title="" Language="C#" MasterPageFile="~/StandardUserMasterPage.master" AutoEventWireup="true" CodeFile="StandardCriminalDetails.aspx.cs" Inherits="StandardCriminalDetails" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style="width:80%; height:100%; position:relative; left:20%;">
         <center><h1>Criminal Details</h1><br /><br />
        <asp:Table ID="Table1" runat="server" Width="700px">
            <asp:TableRow>
                <asp:TableCell RowSpan="3">Criminal ID : <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label><br />
                    <asp:Image ID="Image1" runat="server" width="250px" Height="250px"/>
                </asp:TableCell>
                <asp:TableCell ColumnSpan="3">Criminal Name : <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label></asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell>Birth Place : <asp:Label ID="Label6" runat="server" Text="Label"></asp:Label></asp:TableCell>
                <asp:TableCell>Age : <asp:Label ID="Label4" runat="server" Text="Label"></asp:Label></asp:TableCell>
                <asp:TableCell>DOB : <asp:Label ID="Label5" runat="server" Text="Label"></asp:Label></asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell>Gender : <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label></asp:TableCell>
                <asp:TableCell ColumnSpan="2">Contact : <asp:Label ID="Label7" runat="server" Text="Label"></asp:Label></asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell ColumnSpan="3">Address<br /><asp:Label ID="Label8" runat="server" Text="Label"></asp:Label></asp:TableCell>
             </asp:TableRow>
             </asp:Table><br />
             <h3>Physical Attire</h3>
           
             <asp:Table ID="Table2" runat="server" Width="700px">
             <asp:TableRow>
                <asp:TableCell>Height : <asp:Label ID="Label9" runat="server" Text="Label"></asp:Label></asp:TableCell>
                <asp:TableCell>Weight : <asp:Label ID="Label10" runat="server" Text="Label"></asp:Label></asp:TableCell>
                <asp:TableCell>Blood group : <asp:Label ID="Label11" runat="server" Text="Label"></asp:Label></asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell>Hair Color : <asp:Label ID="Label12" runat="server" Text="Label"></asp:Label></asp:TableCell>
                <asp:TableCell>Eye Color : <asp:Label ID="Label13" runat="server" Text="Label"></asp:Label></asp:TableCell>
                <asp:TableCell>Skin Color : <asp:Label ID="Label14" runat="server" Text="Label"></asp:Label></asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell>DNA : <asp:Label ID="Label15" runat="server" Text="Label"></asp:Label></asp:TableCell>
                <asp:TableCell>Identification Mark : <asp:Label ID="Label16" runat="server" Text="Label"></asp:Label></asp:TableCell>
            </asp:TableRow>
             </asp:Table> <br /><br />
             <br /><br />
             <h3>Related Cases</h3>
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="case_ID" DataSourceID="SqlDataSource1" BorderColor="White" >
                    <Columns>
                        <asp:BoundField DataField="case_ID" HeaderText="case_ID" InsertVisible="False" ReadOnly="True" SortExpression="case_ID" />
                        <asp:BoundField DataField="caseName" HeaderText="caseName" SortExpression="caseName" />
                        <asp:BoundField DataField="crimetypeID" HeaderText="crimetypeID" SortExpression="crimetypeID" />
                        <asp:BoundField DataField="crimeDoneDate" HeaderText="crimeDoneDate" SortExpression="crimeDoneDate" DataFormatString="{0:d}"/>
                        <asp:BoundField DataField="criminalCapturedDate" HeaderText="criminalCapturedDate" SortExpression="criminalCapturedDate" DataFormatString="{0:d}" />
                        <asp:BoundField DataField="jailTerm" HeaderText="jailTerm" SortExpression="jailTerm" />
                        <asp:BoundField DataField="caseRegisteredAt" HeaderText="caseRegisteredAt" SortExpression="caseRegisteredAt" />
                    </Columns>
             </asp:GridView>
             <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CrimeDBConnectionString %>" SelectCommand="SELECT [case_ID], [caseName], [crimetypeID], [crimeDoneDate], [criminalCapturedDate], [jailTerm], [caseRegisteredAt] FROM [CaseEntries] WHERE ([criminal_id] = @criminal_id)">
                 <SelectParameters>
                     <asp:SessionParameter Name="criminal_id" SessionField="getData" Type="Int32" />
                 </SelectParameters>
             </asp:SqlDataSource>
             </center>
    </div>
</asp:Content>

