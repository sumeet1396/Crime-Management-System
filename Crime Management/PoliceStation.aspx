<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="PoliceStation.aspx.cs" Inherits="PoliceStation" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style="width:80%; height:100%; position:relative; left:10%; margin-left:10%;">
        <center>
            <asp:Label ID="Label1" runat="server" Text="Label" Font-Bold="true" Font-Size="46px"></asp:Label><b><span style="font-size:46px;"> Police Station </span></b><br /><br />
            <table style="width: 700px;">
                <tr>
                    <td rowspan="2"><asp:Image ID="Image1" runat="server" Width="200px" Height="200px"></asp:Image></td>
                    <td>Address :<br /><asp:Label ID="Label2" runat="server" Text="Label"></asp:Label></td>
                </tr>
                <tr>
                    <td colspan="2">Contact : <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label></td>
                </tr>
            </table><br /><br />
            <h3>Cases</h3><br />
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="case_ID" DataSourceID="SqlDataSource1" BorderColor="White" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
                <Columns>
                    <asp:BoundField DataField="case_ID" HeaderText="case_ID" InsertVisible="False" ReadOnly="True" SortExpression="case_ID" />
                    <asp:BoundField DataField="caseName" HeaderText="caseName" SortExpression="caseName" />
                    <asp:BoundField DataField="crimetypeID" HeaderText="crimetypeID" SortExpression="crimetypeID" />
                    <asp:BoundField DataField="criminal_id" HeaderText="criminal_id" SortExpression="criminal_id" />
                    <asp:BoundField DataField="crimeDoneDate" HeaderText="crimeDoneDate" SortExpression="crimeDoneDate" DataFormatString="{0:d}"/>
                    <asp:BoundField DataField="caseRegisteredAt" HeaderText="caseRegisteredAt" SortExpression="caseRegisteredAt" />
                    <asp:CommandField SelectText="View Full Details" ShowSelectButton="True" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CrimeDBConnectionString %>" SelectCommand="SELECT [case_ID], [caseName], [crimetypeID], [criminal_id], [crimeDoneDate], [caseRegisteredAt] FROM [CaseEntries] WHERE ([Jail_ID] = @Jail_ID)">
                <SelectParameters>
                    <asp:SessionParameter Name="Jail_ID" SessionField="id" Type="Int32" />
                </SelectParameters>
            </asp:SqlDataSource>
        </center>
    </div>
</asp:Content>

